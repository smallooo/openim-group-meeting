import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../routes/app_pages.dart';


/// 钱包验证页面使用示例
/// 
/// 使用方法：
/// 1. 导航到钱包验证页面：
///    Get.toNamed(AppRoutes.verifyPassword);
/// 
/// 2. 等待验证结果：
///    final result = await Get.toNamed(AppRoutes.verifyPassword);
///    if (result == true) {
///      // 验证成功
///    } else {
///      // 验证失败或用户取消
///    }
/// 
/// 3. 替换当前页面：
///    Get.offNamed(AppRoutes.verifyPassword);
/// 
/// 4. 清除所有页面并导航：
///    Get.offAllNamed(AppRoutes.verifyPassword);
class VerifyPasswordUsageExample extends StatelessWidget {
  const VerifyPasswordUsageExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('钱包验证使用示例'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '钱包验证页面使用示例',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _navigateToVerifyPassword(),
              child: const Text('打开钱包验证页面'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => _navigateAndWaitForResult(),
              child: const Text('验证并等待结果'),
            ),
          ],
        ),
      ),
    );
  }

  /// 导航到钱包验证页面
  void _navigateToVerifyPassword() {
    Get.toNamed(AppRoutes.verifyPassword);
  }

  /// 导航到钱包验证页面并等待结果
  Future<void> _navigateAndWaitForResult() async {
    final result = await Get.toNamed(AppRoutes.verifyPassword);
    if (result == true) {
      Get.snackbar(
        '验证成功',
        '钱包验证通过！',
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
    } else {
      Get.snackbar(
        '验证失败',
        '钱包验证未通过或用户取消',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }
}
