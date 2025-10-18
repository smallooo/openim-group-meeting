import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../../../routes/app_pages.dart';

import '../../../core/exceptions/api_exception.dart';
import '../../../core/network/api_client.dart';
import '../../../features/wallet/data/repositories/wallet_repository.dart';
import 'state.dart';

class TkPayWalletLogic extends GetxController {
  final TkPayWalletState state = TkPayWalletState();
  
  /// 钱包仓库实例，用于API调用
  WalletRepository? _walletRepository;

  @override
  void onInit() {
    super.onInit();
    _waitForApiClientAndLoadFunds();
  }

  /// 等待ApiClient注册并加载资金
  Future<void> _waitForApiClientAndLoadFunds() async {
    int attempts = 0;
    const maxAttempts = 20; // 最多等待2秒
    
    while (attempts < maxAttempts) {
      try {
        if (Get.isRegistered<ApiClient>()) {
          print('TkPayWalletLogic: ApiClient已注册，开始初始化钱包仓库...');
          await _initializeRepository();
          await _loadWalletFunds();
          return;
        }
      } catch (e) {
        // 忽略错误，继续重试
      }
      
      attempts++;
      await Future.delayed(const Duration(milliseconds: 100));
    }
    
    print('TkPayWalletLogic: 等待ApiClient超时，跳过资金查询');
  }

  /// 初始化钱包仓库并加载资金
  Future<void> _initializeAndLoadFunds() async {
    await _initializeRepository();
    await _loadWalletFunds();
  }

  /// 初始化钱包仓库
  Future<void> _initializeRepository() async {
    try {
      // 使用循环等待直到ApiClient依赖准备就绪
      int attempts = 0;
      const maxAttempts = 10;
      
      while (attempts < maxAttempts) {
        try {
          final apiClient = Get.find<ApiClient>();
          _walletRepository = WalletRepository(apiClient);
          print('TkPayWalletLogic: 钱包仓库初始化成功'); // 调试信息
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
      print('TkPayWalletLogic: 钱包仓库初始化失败: $e'); // 调试信息
    }
  }

  /// 加载钱包资金
  Future<void> _loadWalletFunds() async {
    if (_walletRepository == null) {
      print('TkPayWalletLogic: 钱包仓库未初始化，跳过资金查询');
      return;
    }

    state.isLoading.value = true;
    state.errorMessage.value = '';

    try {
      print('TkPayWalletLogic: 开始查询钱包资金...'); // 调试信息
      
      final response = await _walletRepository!.getWalletFundCurrency();
      
      if (response.errCode == 0 && response.data != null) {
        state.availableAmount.value = response.data!.availableAmount;
        print('TkPayWalletLogic: 钱包资金查询成功，可用金额: ${state.availableAmount.value}'); // 调试信息
      } else {
        state.errorMessage.value = response.errMsg.isNotEmpty ? response.errMsg : '查询钱包资金失败';
        print('TkPayWalletLogic: 钱包资金查询失败: ${response.errMsg}'); // 调试信息
      }
    } catch (e) {
      print('TkPayWalletLogic: 查询钱包资金异常: $e'); // 调试信息
      
      String errorMessage = '查询钱包资金失败，请检查网络连接';
      if (e is ApiException) {
        errorMessage = e.message;
      } else if (e.toString().contains('401')) {
        errorMessage = '登录已过期，请重新登录';
      } else if (e.toString().contains('timeout')) {
        errorMessage = '网络超时，请重试';
      }
      
      state.errorMessage.value = errorMessage;
    } finally {
      state.isLoading.value = false;
    }
  }

  /// 刷新钱包资金
  Future<void> refreshWalletFunds() async {
    await _loadWalletFunds();
  }

  void toBill() {
    Get.toNamed(AppRoutes.tkPayBill);
  }

  /// 跳转到支付设置
  void toPaySet() {
    Get.toNamed(AppRoutes.tkPaySet);
  }
}
