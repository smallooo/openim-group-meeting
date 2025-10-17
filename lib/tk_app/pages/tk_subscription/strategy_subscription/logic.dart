import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toklink_strategy_sdk/api.dart';

import '../../../api_sdk/strategy_sdk_adapter.dart';
import '../../../core/utils/access_token_helper.dart';
import '../../../features/strategy/data/repositories/strategy_repository.dart';
import '../../../../routes/app_pages.dart';
import '../../../shared/models/strategy/trader_pricing_model.dart';
import '../recharge_balance/view.dart';
import 'state.dart';

class StrategySubscriptionLogic extends GetxController {
  final StrategySubscriptionState state = StrategySubscriptionState();
  StrategyRepository? _repository;

  late String _traderId;

  @override
  void onInit() {
    super.onInit();
    _initializeRepository();
  }

  /// 异步初始化 Repository
  Future<void> _initializeRepository() async {
    try {
      // 等待异步注册的 StrategyRepository 准备就绪
      // 使用循环等待直到依赖准备就绪
      int attempts = 0;
      const maxAttempts = 10;
      
      while (attempts < maxAttempts) {
        try {
          _repository = Get.find<StrategyRepository>();
          break;
        } catch (e) {
          attempts++;
          if (attempts >= maxAttempts) {
            throw Exception('无法获取 StrategyRepository，已达到最大重试次数');
          }
          // 等待一段时间后重试
          await Future.delayed(Duration(milliseconds: 100 * attempts));
        }
      }
      
      // 获取传递的参数
      final arguments = Get.arguments as Map<String, dynamic>?;
      if (arguments != null && arguments.containsKey('traderId')) {
        _traderId = arguments['traderId'];
        await _fetchTraderPricing();
      } else {
        // 处理traderId为空的情况
        Get.snackbar('错误', '缺少交易员ID');
      }
    } catch (e) {
      print('初始化 StrategyRepository 失败: $e');
      Get.snackbar('错误', '初始化失败，请重试');
    }
  }

  Future<void> _fetchTraderPricing() async {
    if (_repository == null) {
      print('Repository 未初始化');
      return;
    }
    
    try {
      final pricingData = await _repository!.getTraderPricing(_traderId);
      if (pricingData.isNotEmpty) {
        final pricing = pricingData.first;
        state.durationOptions.assignAll([
          SubscriptionDuration(
            duration: '1月',
            price: '${pricing.monthlyPrice}${pricing.currency}',
            originalPrice: '', // 如果API没有返回原价，则留空
            isLimited: false, // 根据需要设置
          ),
          SubscriptionDuration(
            duration: '1季',
            price: '${pricing.quarterlyPrice}${pricing.currency}',
            originalPrice: '',
            isLimited: false,
          ),
          SubscriptionDuration(
            duration: '1年',
            price: '${pricing.yearlyPrice}${pricing.currency}',
            originalPrice: '',
            isLimited: false,
          ),
        ]);
      }
    } catch (e) {
      Get.snackbar('错误', '获取价格信息失败: $e');
    }
  }

  // 选择订阅时长
  void selectDuration(int index) {
    state.selectedDurationIndex.value = index;
  }

  // 切换自动续订
  void toggleAutoRenewal() {
    state.autoRenewal.value = !state.autoRenewal.value;
  }

  // 快速充值
  void quickTopUp() {
    Get.to(() => const RechargeBalancePage());
  }

  // 查看服务详情
  void viewServiceDetails() {
    // TODO: 跳转到服务详情页面
  }

  // // 订阅服务
  void subscribe() {
    Get.toNamed(AppRoutes.verifyPassword);
  }

    // 订阅服务（点击底部订阅按钮）
  Future<void> subscribe1() async {
    try {
      // 1) 校验 traderId
      final traderIdInt = int.tryParse(_traderId);
      if (traderIdInt == null) {
        Get.snackbar('错误', '交易员ID无效');
        return;
      }

      // 2) 读取当前登录 token（按你的项目实际实现替换）
      final accessToken = await TokenAccessHelper.getAccessTokenDirect();
      if (accessToken == null || accessToken.isEmpty) {
        Get.snackbar('错误', '未登录或缺少令牌');
        return;
      }

      // 3) 构建适配器与 API（网关地址按环境调整为你的真实地址）
      final adapter = StrategySdkAdapter(
        baseUrl: 'https://gw.trunk.toklink.io/api/strategy', // 或本地如 http://localhost:9994/v1
        accessToken: accessToken,
      );
      // 统一 JSON 头
      adapter.addDefaultHeader('Content-Type', 'application/json');
      adapter.addDefaultHeader('Accept', 'application/json');

      final api = adapter.subscription();

      // 4) 将页面选择的时长索引映射到订阅类型 1/2/3
      final selectedIndex = state.selectedDurationIndex.value;
      final subscriptionType = _mapDurationIndexToType(selectedIndex);

      // 5) 构建订阅请求 DTO（其他固定参数按你的要求）
      final dto = SubscribeTraderDTO(
        strategyType: 'FUTURES',              // SPOT 或 FUTURES
        subscriptionType: subscriptionType,   // 1=月, 2=季, 3=年
        paymentMethod: 'WALLET',
        autoRenew: state.autoRenewal.value,   // 页面自动续订开关
        clientIp: '127.0.0.1',
        returnUrl: 'https://example.com/return',
      );

      // 6) 调用订阅接口，并处理返回
      Get.dialog(const Center(child: CircularProgressIndicator()),
          barrierDismissible: false);

      // 如果你想用已反序列化的返回体，替换成：final resp = await api.subscribeTrader(traderIdInt, dto);
      final response = await api.subscribeTraderWithHttpInfo(traderIdInt, dto);

      // 关闭加载
      if (Get.isDialogOpen == true) Get.back();

      // 解析原始返回体，兼容 {"ok":false, "code":1, "message":"..."} 结构
      Map<String, dynamic> body = {};
      try {
        body = jsonDecode(response.body) as Map<String, dynamic>;
      } catch (_) {
        // 非 JSON 返回
      }

      final ok = (body['ok'] as bool?) ?? false;
      final code = body['code'] ?? 0;
      final message = (body['message'] as String?) ?? '订阅失败';

      if (!ok || code != 0) {
        Get.snackbar('错误', message);
        return;
      }

      // 成功提示
      Get.snackbar('成功', '订阅已提交');

      // TODO: 成功后按需要跳转，如订单支付页或订阅详情
      // Get.toNamed(AppRoutes.subscriptionDetail, arguments: {...});
    } catch (e) {
      if (Get.isDialogOpen == true) Get.back();
      Get.snackbar('错误', '订阅异常: $e');
    }
  }

  // 按页面选择的时长索引映射订阅类型
  int _mapDurationIndexToType(int index) {
    switch (index) {
      case 0: return 1; // 1月
      case 1: return 2; // 1季
      case 2: return 3; // 1年
      default: return 1;
    }
  }

}
