import 'package:get/get.dart';

enum GuaranteeStatus { all, inProgress, pendingPay, pendingShip, completed }

class GuaranteeOrder {
  final String id;
  final String buyer;
  final String seller;
  final double amount;
  final GuaranteeStatus status;
  final String description;
  final DateTime createdAt;

  const GuaranteeOrder({
    required this.id,
    required this.buyer,
    required this.seller,
    required this.amount,
    required this.status,
    required this.description,
    required this.createdAt,
  });
}

class TkGuaranteeOrderState {
  final selectedTabIndex = 0.obs;
  final orders = <GuaranteeOrder>[
    GuaranteeOrder(
      id: 'TLIM2024001',
      buyer: '张三',
      seller: '李四',
      amount: 1500.00,
      status: GuaranteeStatus.inProgress,
      description: '购买定制软件开发服务，分阶段付款，确保项目准时',
      createdAt: DateTime(2024, 7, 20),
    ),
    GuaranteeOrder(
      id: 'TLIM2024002',
      buyer: '王五',
      seller: '赵六',
      amount: 200.00,
      status: GuaranteeStatus.pendingPay,
      description: '购买虚拟商品，等待支付',
      createdAt: DateTime(2024, 7, 21),
    ),
    GuaranteeOrder(
      id: 'TLIM2024003',
      buyer: '孙七',
      seller: '周八',
      amount: 500.00,
      status: GuaranteeStatus.pendingShip,
      description: '购买实物商品，等待发货',
      createdAt: DateTime(2024, 7, 22),
    ),
    GuaranteeOrder(
      id: 'TLIM2024004',
      buyer: '吴九',
      seller: '郑十',
      amount: 100.00,
      status: GuaranteeStatus.completed,
      description: '已完成的交易',
      createdAt: DateTime(2024, 7, 19),
    ),
    GuaranteeOrder(
      id: 'TLIM2024005',
      buyer: '钱一',
      seller: '陈二',
      amount: 300.00,
      status: GuaranteeStatus.inProgress,
      description: '另一个进行中的交易',
      createdAt: DateTime(2024, 7, 23),
    ),
  ].obs;
}
