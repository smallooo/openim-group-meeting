import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import 'state.dart';

class TKOrderToPayLogic extends GetxController {
  final TKOrderToPayState state = TKOrderToPayState();

  @override
  void onInit() {
    super.onInit();
    _initializeFromArguments();
  }

  void _initializeFromArguments() {
    final arguments = Get.arguments;
    if (arguments != null && arguments is Map<String, dynamic>) {
      debugPrint('[TKOrderToPay] 接收到的参数: $arguments');
      
      // 设置订单号
      if (arguments['orderNo'] != null) {
        state.orderNo.value = arguments['orderNo'].toString();
      }
      
      // 设置订单项
      if (arguments['orderItems'] != null && arguments['orderItems'] is List) {
        final items = (arguments['orderItems'] as List)
            .map((item) => OrderItemInfo.fromJson(item))
            .toList();
        state.orderItems.value = items;
        debugPrint('[TKOrderToPay] 订单项数量: ${items.length}');
      }
      
      // 设置支付信息
      if (arguments['payment'] != null && arguments['payment'] is Map<String, dynamic>) {
        final paymentData = PaymentInfoData.fromJson(arguments['payment']);
        state.paymentInfo.value = paymentData;
        debugPrint('[TKOrderToPay] 支付信息: ${paymentData.paymentId}');
      }
      
      // 计算费用和总金额
      _calculateAmounts();
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

  /// 处理支付
  void processPay() {
    final paymentInfo = state.paymentInfo.value;
    if (paymentInfo == null) {
      Get.snackbar('错误', '支付信息不完整');
      return;
    }

    _processDefaultPay();
    return;

    // 这里可以根据支付方式进行不同的处理
    switch (paymentInfo.paymentMethod.toLowerCase()) {
      case 'alipay':
        _processAlipay();
        break;
      case 'wechat':
        _processWechatPay();
        break;
      case 'usdt':
        _processUSDTPay();
        break;
      default:
        _processDefaultPay();
        break;
    }
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

  void _processDefaultPay() {
    debugPrint('[TKOrderToPay] 处理默认支付方式');
    
    // 跳转到密码验证页面，传递支付信息
    final paymentInfo = state.paymentInfo.value;
    if (paymentInfo == null) {
      Get.snackbar('错误', '支付信息不完整');
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
