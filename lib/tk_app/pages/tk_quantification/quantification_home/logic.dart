import 'package:get/get.dart';

import '../order_set/logic.dart';
import '../order_set/view.dart';
import '../strategy_set/logic.dart';
import '../strategy_set/view.dart';
import 'state.dart';

class QuantificationHomeLogic extends GetxController {
  final QuantificationHomeState state = QuantificationHomeState();

  /// 切换模式（智能模式/专业模式）
  void changeMode(String mode) {
    state.selectedMode.value = mode;
  }

  /// 点击策略设置按钮
  void onStrategySettingsTapped() {
    // TODO: Handle strategy settings tap
    Get.put(StrategySetLogic());
    Get.to(() =>  StrategySetPage());
  }

  /// 点击卡片跳转到订单设置页面
  void onCardTapped() {
    Get.put(OrderSetLogic());
    Get.to(() =>  OrderSetPage());
    print('点击了卡片，准备跳转到OrderSetPage');
  }
}
