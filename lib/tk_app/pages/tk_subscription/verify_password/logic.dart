import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../routes/app_pages.dart';
import 'state.dart';

class VerifyPasswordLogic extends GetxController {
  final VerifyPasswordState state = VerifyPasswordState();
  
  // 管理TextField的控制器
  TextEditingController? _pinController;
  
  @override
  void onInit() {
    super.onInit();
    // 初始化时清除错误信息
    state.clearError();
    
    // 初始化TextEditingController
    _pinController = TextEditingController();
  }
  
  @override
  void onClose() {
    // 确保控制器被正确清理
    if (_pinController != null) {
      _pinController!.dispose();
      _pinController = null;
    }
    super.onClose();
  }
  
  // 获取TextEditingController
  TextEditingController get pinController {
    if (_pinController == null) {
      _pinController = TextEditingController();
    }
    return _pinController!;
  }
  
  // 处理PIN码输入
  void onPinChanged(String value) {
    // 只允许数字输入
    String numericValue = value.replaceAll(RegExp(r'[^0-9]'), '');
    if (numericValue.length <= 6) {
      // 更新PIN码
      state.clearPinCode();
      for (int i = 0; i < numericValue.length; i++) {
        state.updatePinDigit(i, numericValue[i]);
      }
    }
  }
  
  // 更新PIN码输入
  void updatePinDigit(int index, String digit) {
    state.updatePinDigit(index, digit);
    state.clearError(); // 清除之前的错误信息
  }
  
  // 删除PIN码
  void deletePinDigit() {
    for (int i = state.pinDigits.length - 1; i >= 0; i--) {
      if (state.pinDigits[i].isNotEmpty) {
        state.updatePinDigit(i, '');
        break;
      }
    }
  }
  
  // 切换生物识别
  void toggleBiometric() {
    state.toggleBiometric();
  }
  
  // 验证PIN码
  Future<void> verifyPinCode() async {
    if (!state.isPinComplete.value) {
      state.setError('请输入完整的PIN码');
      return;
    }
    
    state.setVerifying(true);
    state.clearError();
    
    try {
      // TODO: 实现实际的PIN码验证逻辑
      await Future.delayed(const Duration(seconds: 1)); // 模拟网络请求
      
      // 验证成功，跳转到支付进度页面
      Get.offNamed(AppRoutes.paymentProgress);
    } catch (e) {
      state.setError('PIN码验证失败，请重试');
    } finally {
      state.setVerifying(false);
    }
  }
  
  // 生物识别验证
  Future<void> verifyBiometric() async {
    if (!state.isBiometricEnabled.value) {
      state.setError('请先启用生物识别');
      return;
    }
    
    state.setVerifying(true);
    state.clearError();
    
    try {
      // TODO: 实现实际的生物识别验证逻辑
      await Future.delayed(const Duration(seconds: 1)); // 模拟生物识别
      
      // 验证成功，跳转到支付进度页面
      Get.offNamed(AppRoutes.paymentProgress);
    } catch (e) {
      state.setError('生物识别验证失败，请重试');
    } finally {
      state.setVerifying(false);
    }
  }
  
  // 执行验证（根据当前状态选择PIN码或生物识别）
  Future<void> performVerification() async {
    if (state.isBiometricEnabled.value) {
      await verifyBiometric();
    } else {
      await verifyPinCode();
    }
  }
}
