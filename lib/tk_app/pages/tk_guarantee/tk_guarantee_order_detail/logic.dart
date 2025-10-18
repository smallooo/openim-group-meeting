import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../../../core/constants/api_constants.dart';
import '../../../core/utils/access_token_helper.dart';
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
}
