import 'package:get/get.dart';
import 'package:flutter/material.dart';

class OrderDetailState {
  // 订单ID
  RxString orderId = ''.obs;
  
  // 订单详情
  Rx<OrderDetailItem?> orderDetail = Rx<OrderDetailItem?>(null);
  
  // 是否正在加载
  RxBool isLoading = false.obs;
  
  OrderDetailState() {
    // 初始化示例数据
    _initSampleData();
  }
  
  void _initSampleData() {
    orderDetail.value = OrderDetailItem(
      transactionId: 'TXN20240726123456789',
      transactionTime: DateTime(2024, 7, 26, 14, 30, 15),
      totalAmount: 50.00,
      items: [
        OrderDetailProduct(
          name: '高级会员订阅',
          quantity: 1,
          price: 30.00,
          icon: Icons.verified_user,
          iconColor: Colors.black,
        ),
        OrderDetailProduct(
          name: '代币套餐包',
          quantity: 1,
          price: 20.00,
          icon: Icons.card_giftcard,
          iconColor: Colors.green,
        ),
      ],
    );
  }
}

class OrderDetailItem {
  final String transactionId;
  final DateTime transactionTime;
  final double totalAmount;
  final List<OrderDetailProduct> items;
  
  OrderDetailItem({
    required this.transactionId,
    required this.transactionTime,
    required this.totalAmount,
    required this.items,
  });
  
  String get formattedTime {
    return '${transactionTime.year}年${transactionTime.month.toString().padLeft(2, '0')}月${transactionTime.day.toString().padLeft(2, '0')}日${transactionTime.hour.toString().padLeft(2, '0')}:${transactionTime.minute.toString().padLeft(2, '0')}:${transactionTime.second.toString().padLeft(2, '0')}';
  }
  
  String get totalAmountText {
    return '${totalAmount.toInt()}USDT';
  }
  
  String get transactionAmountText {
    return '${totalAmount.toStringAsFixed(2)} USDT';
  }
}

class OrderDetailProduct {
  final String name;
  final int quantity;
  final double price;
  final IconData icon;
  final Color iconColor;
  
  OrderDetailProduct({
    required this.name,
    required this.quantity,
    required this.price,
    required this.icon,
    required this.iconColor,
  });
  
  String get priceText {
    return 'USDT ${price.toStringAsFixed(2)}';
  }
}
