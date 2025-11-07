import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../routes/app_pages.dart';
import 'state.dart';
import 'view.dart';

class TkGuaranteeKeysLogic extends GetxController {
  final TkGuaranteeKeysState state = TkGuaranteeKeysState();

  @override
  void onInit() {
    super.onInit();
    loadPasskeys();
  }

  /// 加载通行密钥列表
  Future<void> loadPasskeys() async {
    state.isLoading.value = true;
    try {
      // TODO: 替换为实际的API调用
      // 这里暂时使用模拟数据
      await Future.delayed(const Duration(milliseconds: 500));
      state.initMockData();
    } catch (e) {
      // 处理错误
    } finally {
      state.isLoading.value = false;
    }
  }

  /// 刷新列表
  Future<void> refreshPasskeys() async {
    await loadPasskeys();
  }

  /// 创建通行密钥
  void createPasskey() {
    Get.toNamed(AppRoutes.tkGuaranteeGenerateKey);
  }

  /// 查看通行密钥详情
  void viewPasskeyDetail(String passkeyId) {
    final passkey = state.passkeyList.firstWhereOrNull((item) => item.id == passkeyId);
    if (passkey != null) {
      _showPasskeyDetailBottomSheet(passkey);
    }
  }

  /// 显示通行密钥详情底部弹窗
  void _showPasskeyDetailBottomSheet(PasskeyItem passkey) {
    Get.bottomSheet(
      PasskeyDetailBottomSheet(passkey: passkey),
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      enableDrag: true,
    ).then((result) {
      // 弹窗关闭后的回调，处理选择结果
      if (result != null && result is Map) {
        final passkeyId = result['id'] as String?;
        final enable = result['enable'] as bool?;
        if (passkeyId != null && enable != null) {
          // 延迟执行，确保弹窗完全关闭
          Future.delayed(const Duration(milliseconds: 100), () {
            togglePasskeyStatus(passkeyId, enable);
          });
        }
      }
    });
  }

  /// 启用/禁用通行密钥
  void togglePasskeyStatus(String passkeyId, bool enable) {
    final index = state.passkeyList.indexWhere((item) => item.id == passkeyId);
    if (index != -1) {
      final passkey = state.passkeyList[index];
      // 创建新的 PasskeyItem 更新状态
      final updatedPasskey = PasskeyItem(
        id: passkey.id,
        name: passkey.name,
        exchangeName: passkey.exchangeName,
        lastUsedTime: passkey.lastUsedTime,
        isActive: enable,
        apikey: passkey.apikey,
        secretKey: passkey.secretKey,
        ph: passkey.ph,
      );
      // 更新列表中的项
      state.passkeyList[index] = updatedPasskey;
      
      // TODO: 调用API更新状态
      // Get.snackbar(
      //   enable ? '启用成功' : '禁用成功',
      //   '密钥状态已更新',
      // );
    }
  }

  /// 显示帮助信息
  void showHelp() {
    // TODO: 显示帮助对话框或跳转到帮助页面
    Get.snackbar('帮助', '这是通行密钥管理页面，您可以创建和管理您的通行密钥');
  }

  /// 跳转到量化交易页面
  void navigateToProfit() {
    Get.toNamed(AppRoutes.tkGuaranteeProfit);
  }
}
