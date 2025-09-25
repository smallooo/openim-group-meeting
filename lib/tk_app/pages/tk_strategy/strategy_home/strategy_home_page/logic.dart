import 'package:get/get.dart';

import '../../../../core/services/trader_status_service.dart';
import '../../strategy_member_apply/view.dart';
import '../../strategy_member_profile/view.dart';
import '../../strategy_my/view.dart';
import 'state.dart';
import '../../strategy_detail/view.dart';

class StrategyHomePageLogic extends GetxController {
  final StrategyHomePageState state = StrategyHomePageState();
  
  @override
  void onInit() {
    super.onInit();
    // 初始化时检查交易员状态
    _checkTraderStatusOnInit();
  }
  
  /// 初始化时检查交易员状态
  Future<void> _checkTraderStatusOnInit() async {
    try {
      // 确保TraderStatusService已注册
      if (!Get.isRegistered<TraderStatusService>()) {
        Get.put(TraderStatusService());
      }
      
      // 检查交易员状态
      await TraderStatusService.to.checkTraderStatus();
    } catch (e) {
      print('StrategyHomePageLogic: 检查交易员状态失败: $e');
    }
  }
  
  // 跳转到策略详情页面
  void goToStrategyDetail(dynamic strategyData) {
    // 可以在这里传递策略数据
    // Get.to(() => StrategyDetailPage());
  }
  
  /// 跳转到交易员相关页面（根据交易员状态判断）
  void goToTraderPage() {
    final traderStatusService = TraderStatusService.to;
    
    if (traderStatusService.isTrader) {
      // 是交易员，跳转到交易员详情页面，传入traderId
      print('用户是交易员，跳转到详情页面，traderId: ${traderStatusService.traderId}');
      Get.to(() => StrategyMemberProfilePage(), arguments: {
        'traderId': traderStatusService.traderId,
      });
    } else {
      // 不是交易员，跳转到申请页面
      print('用户不是交易员，跳转到申请页面');
      Get.to(() => StrategyMemberApplyPage());
    }
  }
  
  /// 跳转到我的策略页面（根据交易员状态判断）
  void goToMyStrategiesPage() {
    final traderStatusService = TraderStatusService.to;
    
    if (traderStatusService.isTrader) {
      // 是交易员，跳转到我的策略页面
      print('用户是交易员，跳转到我的策略页面，traderId: ${traderStatusService.traderId}');
      Get.to(() => StrategyMyPage());
    } else {
      // 不是交易员，跳转到申请页面
      print('用户不是交易员，跳转到申请页面（从我的策略入口）');
      Get.to(() => StrategyMemberApplyPage());
    }
  }
}
