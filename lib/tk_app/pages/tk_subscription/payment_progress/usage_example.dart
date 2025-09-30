import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../routes/app_pages.dart';

/// 支付进度页面使用示例
/// 
/// 使用方法：
/// 1. 导航到支付进度页面：
///    Get.toNamed(AppRoutes.paymentProgress);
/// 
/// 2. 替换当前页面：
///    Get.offNamed(AppRoutes.paymentProgress);
/// 
/// 3. 清除所有页面并导航：
///    Get.offAllNamed(AppRoutes.paymentProgress);
class PaymentProgressUsageExample extends StatelessWidget {
  const PaymentProgressUsageExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('支付进度页面使用示例'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '支付进度页面使用示例',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _navigateToPaymentProgress(),
              child: const Text('打开支付进度页面'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => _replaceWithPaymentProgress(),
              child: const Text('替换为支付进度页面'),
            ),
          ],
        ),
      ),
    );
  }

  /// 导航到支付进度页面
  void _navigateToPaymentProgress() {
    Get.toNamed(AppRoutes.paymentProgress);
  }

  /// 替换当前页面为支付进度页面
  void _replaceWithPaymentProgress() {
    Get.offNamed(AppRoutes.paymentProgress);
  }
}
