import 'package:get/get.dart';

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

  // 订阅服务
  void subscribe() {
    Get.toNamed(AppRoutes.verifyPassword);
  }
}
