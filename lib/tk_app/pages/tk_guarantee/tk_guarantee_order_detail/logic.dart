import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_openim_sdk/flutter_openim_sdk.dart';
import 'package:get/get.dart';

import '../../../core/constants/api_constants.dart';
import '../../../core/utils/access_token_helper.dart';
import '../../tk_subscription/order_list/state.dart' as order_list_state;
import 'model/order_detail_models.dart';
import 'state.dart';

class TkGuaranteeOrderDetailLogic extends GetxController {
  final TkGuaranteeOrderDetailState state = TkGuaranteeOrderDetailState();
  
  late final Dio _dio;
  String? _orderId;

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
      debugPrint('[OrderDetail] 接收到的订单ID: $_orderId');
    }
  }

  /// 加载订单详情
  Future<void> loadOrderDetail(String orderId) async {
    try {
      state.isLoading.value = true;

      // 获取访问令牌
      final tokenHeaders = await TokenAccessHelper.buildAccessTokenHeader();
      if (tokenHeaders.isEmpty) {
        debugPrint('[LoadOrderDetail] 未找到有效的访问令牌');
        Get.snackbar('错误', '请先登录');
        return;
      }

      debugPrint('[LoadOrderDetail] 请求订单详情: $orderId');

      // 发送请求
      final response = await _dio.get(
        '${ApiConstants.orderDetail}/$orderId',
        options: Options(headers: tokenHeaders),
      );

      debugPrint('[LoadOrderDetail] 响应数据: ${response.data}');

      if (response.statusCode == 200) {
        final orderDetailResponse = OrderDetailResponse.fromJson(response.data);
        
        if (orderDetailResponse.errCode == 0) {
          final orderData = orderDetailResponse.data;
          
          // 更新状态数据
          state.orderDetail.value = orderData;
          state.orderId.value = orderData.orderNo;
          state.status.value = orderData.orderStatusText;
          state.amountCNY.value = orderData.payAmount;
          
          // 更新参与方信息（优先显示卖家信息）
          if (orderData.sellerInfo != null) {
            state.participantName.value = orderData.sellerInfo!.sellerName.isNotEmpty 
                ? orderData.sellerInfo!.sellerName 
                : '卖家${orderData.sellerId}';
            state.participantAvatarUrl.value = orderData.sellerInfo!.sellerAvatar;
          } else if (orderData.buyerInfo != null) {
            state.participantName.value = orderData.buyerInfo!.buyerName.isNotEmpty 
                ? orderData.buyerInfo!.buyerName 
                : '买家${orderData.memberId}';
            state.participantAvatarUrl.value = orderData.buyerInfo!.buyerAvatar;
          }
          
          // 更新客服信息
          if (orderData.customerServiceInfo != null) {
            state.serviceName.value = orderData.customerServiceInfo!.customerServiceName;
          }
          
          // 更新订单项
          state.items.clear();
          state.items.addAll(orderData.orderItems.map((item) => OrderItem(
            name: item.productName,
            quantity: item.quantity,
            amount: item.totalPrice,
            currency: '¥',
          )));
          
          // 更新总计信息
          state.totalAmount.value = orderData.totalAmount;
          state.totalCurrency.value = '¥';
          state.txnId.value = orderData.orderNo;
          state.txnTime.value = orderData.createdAt;
          
          // 更新步骤信息
          state.steps.clear();
          state.steps.addAll(orderData.statusTimeline.map((timeline) => OrderStep(
            title: timeline.statusText,
            time: timeline.statusTime,
            done: timeline.isCompleted,
          )));
          
          debugPrint('[LoadOrderDetail] 订单详情加载成功');
        } else {
          Get.snackbar('错误', orderDetailResponse.errMsg);
        }
      } else {
        debugPrint('[LoadOrderDetail] 请求失败: ${response.statusCode}');
        Get.snackbar('错误', '加载订单详情失败');
      }
    } catch (e) {
      debugPrint('[LoadOrderDetail] 异常: $e');
      Get.snackbar('错误', '加载订单详情失败: ${e.toString()}');
    } finally {
      state.isLoading.value = false;
    }
  }

  /// 刷新订单详情
  Future<void> refreshOrderDetail() async {
    if (_orderId != null) {
      await loadOrderDetail(_orderId!);
    }
  }

  /// 跳转到售后详情页面
  void navigateToAfterSalesDetail() {
    final orderDetail = state.orderDetail.value;
    if (orderDetail != null) {
      // 将担保订单数据转换为售后详情页面需要的格式
      final orderItem = _convertToOrderItem(orderDetail);
      Get.toNamed('/order_after_detail', arguments: orderItem);
    } else {
      Get.snackbar('错误', '订单数据不完整');
    }
  }

  /// 将担保订单数据转换为售后详情页面需要的格式
  order_list_state.OrderItem _convertToOrderItem(OrderDetailData orderDetail) {
    // 创建商品列表
    final List<order_list_state.OrderProduct> products = orderDetail.orderItems.map((item) {
      return order_list_state.OrderProduct(
        name: item.productName,
        quantity: item.quantity,
        price: item.unitPrice,
        icon: Icons.workspace_premium,
        iconColor: const Color(0xFF2B6CB0),
      );
    }).toList();
    
    // 确定订单状态
    order_list_state.OrderStatus status;
    switch (orderDetail.orderStatus) {
      case 1:
        status = order_list_state.OrderStatus.pending;
        break;
      case 2:
        status = order_list_state.OrderStatus.paid;
        break;
      case 3:
        status = order_list_state.OrderStatus.refunded;
        break;
      default:
        status = order_list_state.OrderStatus.cancelled;
    }
    
    // 创建订单项
    return order_list_state.OrderItem(
      orderId: orderDetail.orderId,
      transactionId: orderDetail.orderNo,
      status: status,
      items: products,
      totalAmount: orderDetail.totalAmount,
      createTime: DateTime.parse(orderDetail.createdAt),
    );
  }

}
