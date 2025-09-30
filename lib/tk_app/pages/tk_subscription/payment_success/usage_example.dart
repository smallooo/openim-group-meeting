import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../routes/app_pages.dart';

/// 支付成功页面使用示例
/// 
/// 使用方法：
/// 1. 带参数导航到支付成功页面：
///    Get.toNamed(
///      AppRoutes.paymentSuccess,
///      arguments: {
///        'amount': '50.00',
///        'currency': 'USDT',
///        'transactionId': 'TXN20240726123456789',
///        'transactionTime': '2024年07月26日14:30:15',
///        'items': [
///          {
///            'name': '高级会员订阅',
///            'quantity': 1,
///            'price': '30.00',
///            'icon': Icons.workspace_premium,
///          },
///          {
///            'name': '代币套餐包',
///            'quantity': 1,
///            'price': '20.00',
///            'icon': Icons.toll,
///          },
///        ],
///      },
///    );
/// 
/// 2. 替换当前页面：
///    Get.offNamed(AppRoutes.paymentSuccess, arguments: {...});
/// 
/// 3. 清除所有页面并导航：
///    Get.offAllNamed(AppRoutes.paymentSuccess, arguments: {...});
class PaymentSuccessUsageExample extends StatelessWidget {
  const PaymentSuccessUsageExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('支付成功页面使用示例'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '支付成功页面使用示例',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _navigateToPaymentSuccess(),
              child: const Text('打开支付成功页面'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => _navigateWithItems(),
              child: const Text('带订单项的支付成功页面'),
            ),
          ],
        ),
      ),
    );
  }

  /// 导航到支付成功页面（无订单项）
  void _navigateToPaymentSuccess() {
    Get.toNamed(
      AppRoutes.paymentSuccess,
      arguments: {
        'amount': '50.00',
        'currency': 'USDT',
        'transactionId': 'TXN20240726123456789',
        'transactionTime': '2024年07月26日14:30:15',
      },
    );
  }

  /// 导航到支付成功页面（带订单项）
  void _navigateWithItems() {
    Get.toNamed(
      AppRoutes.paymentSuccess,
      arguments: {
        'amount': '50.00',
        'currency': 'USDT',
        'transactionId': 'TXN20240726123456789',
        'transactionTime': '2024年07月26日14:30:15',
        'items': [
          {
            'name': '高级会员订阅',
            'quantity': 1,
            'price': '30.00',
            'icon': Icons.workspace_premium,
          },
          {
            'name': '代币套餐包',
            'quantity': 1,
            'price': '20.00',
            'icon': Icons.toll,
          },
        ],
      },
    );
  }
}
