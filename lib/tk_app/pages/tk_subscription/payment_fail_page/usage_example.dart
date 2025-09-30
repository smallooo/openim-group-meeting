import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../routes/app_pages.dart';

/// 支付失败页面使用示例
/// 
/// 使用方法：
/// 1. 带参数导航到支付失败页面：
///    Get.toNamed(
///      AppRoutes.paymentFail,
///      arguments: {
///        'failReason': '资金不足。请确保您的钱包有足够的USDT',
///        'amount': '50.00',
///        'currency': 'USDT',
///      },
///    );
/// 
/// 2. 等待用户操作结果：
///    final result = await Get.toNamed(AppRoutes.paymentFail, arguments: {...});
///    if (result == 'retry') {
///      // 用户选择重新支付
///    }
/// 
/// 3. 替换当前页面：
///    Get.offNamed(AppRoutes.paymentFail, arguments: {...});
class PaymentFailUsageExample extends StatelessWidget {
  const PaymentFailUsageExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('支付失败页面使用示例'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '支付失败页面使用示例',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _navigateToPaymentFail(),
              child: const Text('资金不足失败'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => _navigateWithNetworkError(),
              child: const Text('网络错误失败'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => _navigateAndWaitResult(),
              child: const Text('等待用户操作结果'),
            ),
          ],
        ),
      ),
    );
  }

  /// 导航到支付失败页面（资金不足）
  void _navigateToPaymentFail() {
    Get.toNamed(
      AppRoutes.paymentFail,
      arguments: {
        'failReason': '资金不足。请确保您的钱包有足够的USDT',
        'amount': '50.00',
        'currency': 'USDT',
      },
    );
  }

  /// 导航到支付失败页面（网络错误）
  void _navigateWithNetworkError() {
    Get.toNamed(
      AppRoutes.paymentFail,
      arguments: {
        'failReason': '网络连接超时。请检查您的网络连接后重试',
        'amount': '50.00',
        'currency': 'USDT',
      },
    );
  }

  /// 导航并等待用户操作结果
  Future<void> _navigateAndWaitResult() async {
    final result = await Get.toNamed(
      AppRoutes.paymentFail,
      arguments: {
        'failReason': '支付验证失败。请重新验证您的支付信息',
        'amount': '50.00',
        'currency': 'USDT',
      },
    );
    
    if (result == 'retry') {
      Get.snackbar(
        '重新支付',
        '用户选择重新支付',
        backgroundColor: Colors.blue,
        colorText: Colors.white,
      );
    } else {
      Get.snackbar(
        '取消支付',
        '用户取消了支付',
        backgroundColor: Colors.grey,
        colorText: Colors.white,
      );
    }
  }
}
