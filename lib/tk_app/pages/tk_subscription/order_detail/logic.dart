import 'package:get/get.dart';

import 'state.dart';

class OrderDetailLogic extends GetxController {
  final OrderDetailState state = OrderDetailState();
  
  @override
  void onInit() {
    super.onInit();
    // 初始化订单详情数据
    loadOrderDetail();
  }
  
  // 加载订单详情
  void loadOrderDetail() {
    state.isLoading.value = true;
    // TODO: 从API加载订单详情数据
    Future.delayed(const Duration(seconds: 1), () {
      state.isLoading.value = false;
    });
  }
  
  // 刷新订单详情
  void refreshOrderDetail() {
    loadOrderDetail();
  }
  
  // 设置订单ID
  void setOrderId(String orderId) {
    state.orderId.value = orderId;
    loadOrderDetail();
  }
}
