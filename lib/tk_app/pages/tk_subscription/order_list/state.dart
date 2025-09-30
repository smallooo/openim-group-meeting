import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderListState {
  // 订单列表
  RxList<OrderItem> orderList = <OrderItem>[].obs;
  
  // 是否正在加载
  RxBool isLoading = false.obs;
  
  OrderListState() {
    // 初始化示例数据
    _initSampleData();
  }
  
  void _initSampleData() {
    orderList.value = [
      OrderItem(
        transactionId: 'SG002000250905004572',
        status: OrderStatus.paid,
        items: [
          OrderProduct(
            name: '高级会员订阅',
            quantity: 1,
            price: 30.00,
            icon: Icons.verified_user,
            iconColor: Colors.black,
          ),
          OrderProduct(
            name: '代币套餐包',
            quantity: 1,
            price: 20.00,
            icon: Icons.card_giftcard,
            iconColor: Colors.green,
          ),
        ],
        totalAmount: 50.00,
        createTime: DateTime.now().subtract(const Duration(days: 1)),
      ),
      OrderItem(
        transactionId: 'SG002000250905004572',
        status: OrderStatus.refunded,
        items: [
          OrderProduct(
            name: '高级会员订阅',
            quantity: 1,
            price: 30.00,
            icon: Icons.verified_user,
            iconColor: Colors.black,
          ),
          OrderProduct(
            name: '代币套餐包',
            quantity: 1,
            price: 20.00,
            icon: Icons.card_giftcard,
            iconColor: Colors.green,
          ),
        ],
        totalAmount: 50.00,
        createTime: DateTime.now().subtract(const Duration(days: 2)),
      ),
    ];
  }
}

enum OrderStatus {
  paid,      // 已支付
  refunded,  // 已退款
  pending,   // 待支付
  cancelled, // 已取消
}

class OrderItem {
  final String transactionId;
  final OrderStatus status;
  final List<OrderProduct> items;
  final double totalAmount;
  final DateTime createTime;
  
  OrderItem({
    required this.transactionId,
    required this.status,
    required this.items,
    required this.totalAmount,
    required this.createTime,
  });
  
  String get statusText {
    switch (status) {
      case OrderStatus.paid:
        return '已支付';
      case OrderStatus.refunded:
        return '已退款';
      case OrderStatus.pending:
        return '待支付';
      case OrderStatus.cancelled:
        return '已取消';
    }
  }
  
  Color get statusColor {
    switch (status) {
      case OrderStatus.paid:
        return Colors.red;
      case OrderStatus.refunded:
        return Colors.red;
      case OrderStatus.pending:
        return Colors.orange;
      case OrderStatus.cancelled:
        return Colors.grey;
    }
  }
}

class OrderProduct {
  final String name;
  final int quantity;
  final double price;
  final IconData icon;
  final Color iconColor;
  
  OrderProduct({
    required this.name,
    required this.quantity,
    required this.price,
    required this.icon,
    required this.iconColor,
  });
}
