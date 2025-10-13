import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'state.dart';
import '../../../features/wallet/data/repositories/wallet_repository.dart';
import '../../../core/network/api_client.dart';
import '../../../shared/models/wallet/set_wallet_password_response.dart';

/// 设置支付密码页面逻辑控制器
/// 
/// 负责处理密码设置的业务逻辑，包括密码验证、API调用等
class TkPaySetPassWordLogic extends GetxController {
  final TkPaySetPassWordState state = TkPaySetPassWordState();
  
  /// 钱包仓库实例，用于API调用
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
          print('TkPaySetPassWordLogic: 钱包仓库初始化成功'); // 调试信息
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
      print('TkPaySetPassWordLogic: 钱包仓库初始化失败: $e'); // 调试信息
    }
  }

  /// 密码输入框内容变化处理
  /// 
  /// 当用户输入密码时调用，更新状态并验证密码
  void onPasswordChanged(String value) {
    state.password.value = value;
    _validatePasswords();
  }

  /// 确认密码输入框内容变化处理
  /// 
  /// 当用户输入确认密码时调用，更新状态并验证密码
  void onConfirmPasswordChanged(String value) {
    state.confirmPassword.value = value;
    _validatePasswords();
  }

  /// 切换密码可见性
  /// 
  /// 切换密码输入框的显示/隐藏状态
  void togglePasswordVisibility() {
    state.isPasswordVisible.value = !state.isPasswordVisible.value;
  }

  /// 切换确认密码可见性
  /// 
  /// 切换确认密码输入框的显示/隐藏状态
  void toggleConfirmPasswordVisibility() {
    state.isConfirmPasswordVisible.value = !state.isConfirmPasswordVisible.value;
  }

  /// 验证密码
  /// 
  /// 检查密码是否符合要求，并更新相关状态
  void _validatePasswords() {
    final password = state.password.value;
    final confirmPassword = state.confirmPassword.value;
    
    // 检查密码长度（至少6位）
    if (password.length < 6) {
      state.passwordError.value = '密码长度至少6位';
    } else {
      state.passwordError.value = '';
    }
    
    // 检查密码是否匹配
    if (confirmPassword.isNotEmpty && password != confirmPassword) {
      state.confirmPasswordError.value = '两次输入的密码不一致';
    } else {
      state.confirmPasswordError.value = '';
    }
    
    // 更新密码匹配状态和提交按钮可用性
    state.updatePasswordsMatch();
    state.updateCanSubmit();
  }

  /// 提交密码设置
  /// 
  /// 调用API设置钱包密码，处理成功和失败情况
  Future<void> onSubmitPassword() async {
    if (!state.canSubmit.value || state.isSubmitting.value) {
      return;
    }

    // 检查仓库是否已初始化
    if (_walletRepository == null) {
      Get.snackbar(
        '错误',
        '系统初始化中，请稍后重试',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red.withOpacity(0.8),
        colorText: Colors.white,
      );
      return;
    }

    state.isSubmitting.value = true;

    try {
      print('TkPaySetPassWordLogic: 开始设置密码...'); // 调试信息
      
      // 调用API设置密码
      final response = await _walletRepository!.setWalletPassword(state.password.value);
      
      print('TkPaySetPassWordLogic: 设置密码响应 - errCode: ${response.errCode}, errMsg: ${response.errMsg}'); // 调试信息
      
      if (response.errCode == 0) {
        // 设置成功
        Get.snackbar(
          '成功',
          '支付密码设置成功',
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.green.withOpacity(0.8),
          colorText: Colors.white,
        );
        
        // 延迟一下再返回上一页
        await Future.delayed(const Duration(seconds: 1));
        Get.back();
      } else {
        // 设置失败
        Get.snackbar(
          '设置失败',
          response.errMsg.isNotEmpty ? response.errMsg : '设置密码失败，请重试',
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red.withOpacity(0.8),
          colorText: Colors.white,
        );
      }
    } catch (e) {
      print('TkPaySetPassWordLogic: 设置密码异常: $e'); // 调试信息
      
      // 处理网络错误或其他异常
      String errorMessage = '设置密码失败，请检查网络连接';
      if (e.toString().contains('401')) {
        errorMessage = '登录已过期，请重新登录';
      } else if (e.toString().contains('timeout')) {
        errorMessage = '网络超时，请重试';
      }
      
      Get.snackbar(
        '错误',
        errorMessage,
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red.withOpacity(0.8),
        colorText: Colors.white,
      );
    } finally {
      state.isSubmitting.value = false;
    }
  }
}
