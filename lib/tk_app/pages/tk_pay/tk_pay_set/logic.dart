import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/network/api_client.dart';
import '../../../features/wallet/data/repositories/wallet_repository.dart';
import '../../../../routes/app_pages.dart';

import 'state.dart';

/// 支付设置页面逻辑控制器
/// 
/// 负责处理支付设置相关的业务逻辑，包括密码状态检查和页面跳转
class TkPaySetLogic extends GetxController {
  final TkPaySetState state = TkPaySetState();
  
  WalletRepository? _walletRepository;

  @override
  void onInit() {
    super.onInit();
    _initializeRepository();
  }

  /// 初始化钱包仓库
  /// 
  /// 异步获取ApiClient并创建WalletRepository实例
  Future<void> _initializeRepository() async {
    try {
      // 使用循环等待直到ApiClient依赖准备就绪
      int attempts = 0;
      const maxAttempts = 10;
      
      while (attempts < maxAttempts) {
        try {
          final apiClient = Get.find<ApiClient>();
          _walletRepository = WalletRepository(apiClient);
          print('TkPaySetLogic: 钱包仓库初始化成功'); // 调试信息
          return;
        } catch (e) {
          attempts++;
          if (attempts >= maxAttempts) {
            throw Exception('无法获取 ApiClient，已达到最大重试次数: $e');
          }
          // 等待一段时间后重试，逐渐增加等待时间
          await Future.delayed(Duration(milliseconds: 100 * attempts));
        }
      }
    } catch (e) {
      print('TkPaySetLogic: 钱包仓库初始化失败: $e'); // 调试信息
    }
  }

  /// 处理修改支付密码按钮点击事件
  /// 
  /// 1. 调用API获取钱包密码状态
  /// 2. 根据hasPassword字段判断跳转页面：
  ///    - false: 跳转到设置密码页面
  ///    - true: 跳转到修改密码页面
  Future<void> onModifyPasswordTap() async {
    print('TkPaySetLogic: 用户点击修改支付密码'); // 调试信息

    return;
    // 检查钱包仓库是否已初始化
    if (_walletRepository == null) {
      print('TkPaySetLogic: 钱包仓库未初始化，尝试重新初始化'); // 调试信息
      await _initializeRepository();
      
      if (_walletRepository == null) {
        Get.snackbar(
          '错误',
          '服务初始化失败，请稍后重试',
          snackPosition: SnackPosition.TOP,
          backgroundColor: Get.theme.colorScheme.error,
          colorText: Get.theme.colorScheme.onError,
        );
        return;
      }
    }
    
    try {
      // 显示加载状态
      Get.dialog(
        const Center(
          child: CircularProgressIndicator(),
        ),
        barrierDismissible: false,
      );

      // 获取钱包密码状态
      final passwordStatus = await _walletRepository!.getWalletPasswordStatus();
      
      // 关闭加载对话框
      Get.back();
      
      print('TkPaySetLogic: 获取密码状态成功 - hasPassword: ${passwordStatus.hasPassword}'); // 调试信息
      
      // 根据密码状态跳转到相应页面
      if (passwordStatus.hasPassword) {
        // 已设置密码，跳转到修改密码页面
        print('TkPaySetLogic: 跳转到修改密码页面'); // 调试信息
        Get.toNamed(AppRoutes.tkPayChangePassWord);
      } else {
        // 未设置密码，跳转到设置密码页面
        print('TkPaySetLogic: 跳转到设置密码页面'); // 调试信息
        Get.toNamed(AppRoutes.tkPaySetPassWord);
      }
      
    } catch (e) {
      // 关闭加载对话框（如果还在显示）
      if (Get.isDialogOpen == true) {
        Get.back();
      }
      
      print('TkPaySetLogic: 获取密码状态失败: $e'); // 调试信息
      
      // 显示错误提示
      Get.snackbar(
        '错误',
        '获取密码状态失败，请稍后重试',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Get.theme.colorScheme.error,
        colorText: Get.theme.colorScheme.onError,
      );
    }
  }

  /// 处理忘记支付密码按钮点击事件
  /// 
  /// 跳转到忘记密码页面或相关处理流程
  void onForgetPasswordTap() {
    print('TkPaySetLogic: 用户点击忘记支付密码'); // 调试信息
    // TODO: 实现忘记密码逻辑
    Get.snackbar(
      '提示',
      '忘记密码功能待实现',
      snackPosition: SnackPosition.TOP,
    );
  }
}
