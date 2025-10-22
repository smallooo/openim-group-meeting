import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../order_list/state.dart';
import 'state.dart';

class OrderAfterDetailLogic extends GetxController {
  final OrderAfterDetailState state = OrderAfterDetailState();
  
  @override
  void onInit() {
    super.onInit();
    // 获取传递的订单数据
    final orderItem = Get.arguments as OrderItem?;
    if (orderItem != null) {
      state.setOrderItem(orderItem);
    }
  }
  
  @override
  void onClose() {
    super.onClose();
  }
  
  // 选择售后原因
  void selectReason(String reason) {
    state.selectReason(reason);
  }
  
  // 更新描述
  void updateDescription(String desc) {
    state.updateDescription(desc);
  }
  
  // 添加图片
  void addImage() {
    // TODO: 实现图片选择功能
    Get.snackbar('提示', '图片选择功能正在开发中');
  }
  
  // 移除图片
  void removeImage(int index) {
    state.removeImage(index);
  }
  
  // 申请退款 - 跳转到退款申请页面
  void submitAfterSales() {
    // 获取订单ID
    final orderId = state.orderItem.value?.orderId;
    if (orderId == null) {
      Get.snackbar('错误', '订单信息不完整');
      return;
    }
    
    // 跳转到退款申请页面，传递订单ID和总金额
    Get.toNamed('/order_request_refund', arguments: {
      'orderId': orderId,
      'totalAmount': state.orderItem.value?.totalAmount ?? 0.0,
    });
  }
  
  // 返回上一页
  void goBack() {
    Get.back();
  }
}
