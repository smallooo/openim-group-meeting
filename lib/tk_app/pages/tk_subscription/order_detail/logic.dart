import 'package:get/get.dart';

import '../order_list/state.dart';
import 'state.dart';

class OrderDetailLogic extends GetxController {
  final OrderDetailState state = OrderDetailState();
  
  @override
  void onInit() {
    super.onInit();
    // 如果从上个页面传入了订单对象，则直接使用该数据
    final args = Get.arguments;
    if (args is OrderItem) {
      state.orderDetail.value = _fromOrderItem(args);
      return;
    }
    // 否则走原有的加载逻辑
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

  // 将订单列表中的 OrderItem 转为详情展示用的 OrderDetailItem
  OrderDetailItem _fromOrderItem(OrderItem order) {
    return OrderDetailItem(
      transactionId: order.transactionId,
      transactionTime: order.createTime,
      totalAmount: order.totalAmount,
      items: order.items
          .map(
            (p) => OrderDetailProduct(
              name: p.name,
              quantity: p.quantity,
              price: p.price,
              icon: p.icon,
              iconColor: p.iconColor,
            ),
          )
          .toList(),
    );
  }
}
