import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constants/api_constants.dart';
import '../../../core/utils/access_token_helper.dart';
import '../../tk_guarantee/tk_guarantee_order_detail/model/order_detail_models.dart';
import '../../tk_guarantee/tk_guarantee_create_order/model/order_models.dart';
import 'state.dart';

class TKOrderToPayLogic extends GetxController {
  final TKOrderToPayState state = TKOrderToPayState();
  
  late final Dio _dio;
  String? _orderId;
  
  String? get orderId => _orderId;

  @override
  void onInit() {
    super.onInit();
    _initDio();
    _getOrderIdFromArguments();
    if (_orderId != null) {
      loadOrderDetail(_orderId!);
    }
  }

  void _initDio() {
    _dio = Dio(BaseOptions(
      baseUrl: ApiConstants.baseUrl,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 30),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    ));
  }

  void _getOrderIdFromArguments() {
    final arguments = Get.arguments;
    if (arguments != null && arguments is Map<String, dynamic>) {
      _orderId = arguments['orderId']?.toString();
      debugPrint('[TKOrderToPay] 接收到的订单ID: $_orderId');
    }
  }

  /// 加载订单详情
  Future<void> loadOrderDetail(String orderId) async {
    try {
      state.isLoading.value = true;

      // 获取访问令牌
      final tokenHeaders = await TokenAccessHelper.buildAccessTokenHeader();
      if (tokenHeaders.isEmpty) {
        debugPrint('[TKOrderToPay] 未找到有效的访问令牌');
        Get.snackbar('错误', '请先登录');
        return;
      }

      debugPrint('[TKOrderToPay] 请求订单详情: $orderId');

      // 发送请求
      final response = await _dio.get(
        '${ApiConstants.orderDetail}/$orderId',
        options: Options(headers: tokenHeaders),
      );

      debugPrint('[TKOrderToPay] 响应数据: ${response.data}');

      if (response.statusCode == 200) {
        final orderDetailResponse = OrderDetailResponse.fromJson(response.data);
        
        if (orderDetailResponse.errCode == 0) {
          final orderData = orderDetailResponse.data;
          
          // 更新状态数据
          state.orderDetail.value = orderData;
          state.orderNo.value = orderData.orderNo;
          
          // 更新订单项
          state.orderItems.clear();
          state.orderItems.addAll(orderData.orderItems.map((item) => OrderItemInfo(
            id: item.id,
            productId: item.productId,
            skuId: item.skuId,
            productName: item.productName,
            productPic: item.productPic,
            productSpecs: item.productSpecs,
            quantity: item.quantity,
            unitPrice: item.unitPrice,
            totalPrice: item.totalPrice,
          )));
          
          // 更新支付信息
          if (orderData.payment != null) {
            state.paymentInfo.value = PaymentInfoData(
              id: orderData.payment!.id,
              paymentId: orderData.payment!.paymentId,
              amount: orderData.payment!.amount,
              payType: orderData.payment!.payType,
              paymentMethod: orderData.payment!.paymentMethod,
              status: orderData.payment!.status,
              statusText: orderData.payment!.statusText,
              transactionId: orderData.payment!.transactionId,
              paymentUrl: orderData.payment!.paymentUrl,
              qrCode: orderData.payment!.qrCode,
              payTime: orderData.payment!.payTime,
              expireTime: orderData.payment!.expireTime,
              createdAt: orderData.payment!.createdAt,
              updatedAt: orderData.payment!.updatedAt,
              thirdPartyOrderNo: orderData.payment!.thirdPartyOrderNo,
            );
            
            // 根据支付状态设置显示文本
            _updatePaymentStatusDisplay(orderData.payment!.status);
          } else {
            // 没有支付信息，显示待支付
            state.paymentStatusText.value = '待支付';
            state.isPaymentCompleted.value = false;
          }
          
          // 计算费用和总金额
          // _calculateAmounts();
          state.totalAmount.value = orderData.totalAmount;
          debugPrint('[TKOrderToPay] 订单详情加载成功');
        } else {
          Get.snackbar('错误', orderDetailResponse.errMsg);
        }
      } else {
        debugPrint('[TKOrderToPay] 请求失败: ${response.statusCode}');
        Get.snackbar('错误', '加载订单详情失败');
      }
    } catch (e) {
      debugPrint('[TKOrderToPay] 异常: $e');
      Get.snackbar('错误', '加载订单详情失败: ${e.toString()}');
    } finally {
      state.isLoading.value = false;
    }
  }

  void _calculateAmounts() {
    // 计算商品总价
    double subtotal = 0.0;
    for (var item in state.orderItems) {
      subtotal += item.totalPrice;
    }
    
    // 计算手续费 (假设0.2%)
    final feeAmount = subtotal * (state.feeRate.value / 100);
    state.feeAmount.value = double.parse(feeAmount.toStringAsFixed(2));

    // 计算总计支付金额
    final total = subtotal + feeAmount;
    state.totalAmount.value = double.parse(total.toStringAsFixed(2));

    debugPrint('[TKOrderToPay] 商品总价: $subtotal, 手续费: ${state.feeAmount.value}, 总计: ${state.totalAmount.value}');
  }

  /// 更新支付状态显示
  void _updatePaymentStatusDisplay(String status) {
    switch (status.toUpperCase()) {
      case 'PENDING':
        state.paymentStatusText.value = '待支付';
        state.isPaymentCompleted.value = false;
        break;
      case 'SUCCESS':
        state.paymentStatusText.value = '支付成功';
        state.isPaymentCompleted.value = true;
        break;
      case 'FAILED':
        state.paymentStatusText.value = '支付失败';
        state.isPaymentCompleted.value = false;
        break;
      case 'CANCELLED':
        state.paymentStatusText.value = '已取消';
        state.isPaymentCompleted.value = false;
        break;
      default:
        state.paymentStatusText.value = '待支付';
        state.isPaymentCompleted.value = false;
        break;
    }
    debugPrint('[TKOrderToPay] 支付状态: $status -> ${state.paymentStatusText.value}');
  }

  /// 处理支付
  Future<void> processPay() async {
    final paymentInfo = state.paymentInfo.value;
    if (paymentInfo == null  || paymentInfo.thirdPartyOrderNo == null || paymentInfo.thirdPartyOrderNo == "") {
      // 如果支付信息为空，先创建支付
      debugPrint('[TKOrderToPay] 支付信息为空，开始创建支付');
      final success = await _createPayment();
      if (!success) {
        Get.snackbar('错误', '创建支付失败');
        return;
      }
    }

    _processDefaultPay();
    return;


  }

  void _processAlipay() {
    debugPrint('[TKOrderToPay] 处理支付宝支付');
    Get.snackbar('支付', '正在跳转到支付宝...');
    
    // 这里可以调用支付宝SDK或打开支付链接
    final paymentInfo = state.paymentInfo.value!;
    if (paymentInfo.paymentUrl.isNotEmpty) {
      // 打开支付链接
      debugPrint('[TKOrderToPay] 支付链接: ${paymentInfo.paymentUrl}');
    }
  }

  void _processWechatPay() {
    debugPrint('[TKOrderToPay] 处理微信支付');
    Get.snackbar('支付', '正在跳转到微信支付...');
  }

  void _processUSDTPay() {
    debugPrint('[TKOrderToPay] 处理USDT支付');
    Get.snackbar('支付', '正在处理USDT支付...');
  }

  /// 创建支付
  Future<bool> _createPayment() async {
    try {
      final orderDetail = state.orderDetail.value;
      if (orderDetail == null) {
        debugPrint('[TKOrderToPay] 订单详情为空，无法创建支付');
        return false;
      }

      // 获取访问令牌
      final tokenHeaders = await TokenAccessHelper.buildAccessTokenHeader();
      if (tokenHeaders.isEmpty) {
        debugPrint('[TKOrderToPay] 未找到有效的访问令牌');
        return false;
      }

      debugPrint('[TKOrderToPay] 创建支付，订单号: ${orderDetail.orderNo}');

      // 发送支付请求
      final response = await _dio.post(
        '/order/app/purchase/${orderDetail.orderNo}/payment',
        options: Options(headers: tokenHeaders),
      );

      debugPrint('[TKOrderToPay] 支付创建响应: ${response.data}');

      if (response.statusCode == 200) {
        final paymentResponse = PaymentResponse.fromJson(response.data);
        
        if (paymentResponse.errCode == 0) {
          final paymentData = paymentResponse.data;
          
          // 更新支付信息
          state.paymentInfo.value = PaymentInfoData(
            id: paymentData.id,
            paymentId: paymentData.paymentId,
            amount: paymentData.amount,
            payType: paymentData.payType,
            paymentMethod: paymentData.paymentMethod,
            status: paymentData.status,
            statusText: paymentData.statusText,
            transactionId: paymentData.transactionId,
            paymentUrl: paymentData.paymentUrl,
            qrCode: paymentData.qrCode,
            payTime: paymentData.payTime,
            expireTime: paymentData.expireTime,
            createdAt: paymentData.createdAt,
            updatedAt: paymentData.updatedAt,
            thirdPartyOrderNo: paymentData.thirdPartyOrderNo,
          );
          
          debugPrint('[TKOrderToPay] 支付创建成功: ${paymentData.paymentId}');
          return true;
        } else {
          debugPrint('[TKOrderToPay] 支付创建失败: ${paymentResponse.errMsg}');
          return false;
        }
      } else {
        debugPrint('[TKOrderToPay] 支付创建请求失败: ${response.statusCode}');
        return false;
      }
    } catch (e) {
      debugPrint('[TKOrderToPay] 创建支付异常: $e');
      return false;
    }
  }

  void _processDefaultPay() {
    debugPrint('[TKOrderToPay] 处理默认支付方式');
    
    // 跳转到密码验证页面，传递支付信息
    final paymentInfo = state.paymentInfo.value;
    if (paymentInfo == null) {
      Get.snackbar('错误', '支付信息不完整');
      return;
    }

    if (paymentInfo.thirdPartyOrderNo  == '') {
       Get.snackbar('已支付', "当前订单已支付");
       return;
    }
    
    final paymentData = {
      'thirdPartyOrderNo': paymentInfo.thirdPartyOrderNo,
      'amount': paymentInfo.amount,
      'currencyId': 7, // 默认货币ID
    };
    
    Get.toNamed('/verify_password', arguments: paymentData);
  }

  /// 刷新支付状态
  Future<void> refreshPaymentStatus() async {
    // 这里可以调用API查询支付状态
    debugPrint('[TKOrderToPay] 刷新支付状态');
  }
}
