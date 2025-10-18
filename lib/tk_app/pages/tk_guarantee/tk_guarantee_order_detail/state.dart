import 'package:get/get.dart';

import 'model/order_detail_models.dart';

class OrderStep {
  final String title;
  final String time;
  final bool done;
  const OrderStep({required this.title, required this.time, required this.done});
}

class OrderItem {
  final String name;
  final String currency;
  final double amount;
  final int quantity;
  const OrderItem({required this.name, required this.currency, required this.amount, required this.quantity});
}

class TkGuaranteeOrderDetailState {
  // 加载状态
  final isLoading = false.obs;
  
  // 订单详情数据
  final orderDetail = Rxn<OrderDetailData>();
  
  // 显示数据
  final orderId = ''.obs;
  final status = ''.obs;
  final amountCNY = 0.0.obs;
  final participantName = ''.obs;
  final participantAvatarUrl = ''.obs;
  final serviceName = ''.obs;

  // 步骤和项目
  final steps = <OrderStep>[].obs;
  final items = <OrderItem>[].obs;

  // 总计信息
  final totalCurrency = '¥'.obs;
  final totalAmount = 0.0.obs;
  final txnId = ''.obs;
  final txnTime = ''.obs;
}
