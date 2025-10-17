import 'package:get/get.dart';

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
  final orderId = 'TLK-098765'.obs;
  final status = '进行中'.obs;
  final amountCNY = 1500.00.obs;
  final participantName = '张三'.obs;
  final participantAvatarUrl = ''.obs;
  final serviceName = 'TokLink客服'.obs;

  final steps = <OrderStep>[
    const OrderStep(title: '订单已创建', time: '2023-10-25 10:10', done: true),
    const OrderStep(title: '买家已付款', time: '2023-10-25 10:10', done: true),
    const OrderStep(title: '卖家已发货', time: '2023-10-25 10:20', done: true),
    const OrderStep(title: '买家已收货', time: '', done: false),
    const OrderStep(title: '交易完成', time: '', done: false),
  ].obs;

  final items = <OrderItem>[
    const OrderItem(name: '高级会员订阅', currency: 'USDT', amount: 30.00, quantity: 1),
    const OrderItem(name: '代币套餐包', currency: 'USDT', amount: 20.00, quantity: 1),
  ].obs;

  final totalCurrency = 'USDT'.obs;
  final totalAmount = 50.00.obs;
  final txnId = 'TXN20240726123456789'.obs;
  final txnTime = '2024年07月26日14:30:15'.obs;
}
