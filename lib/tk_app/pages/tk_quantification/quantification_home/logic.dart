import 'package:get/get.dart';

import '../strategy_set/logic.dart';
import '../strategy_set/view.dart';
import 'state.dart';

class QuantificationHomeLogic extends GetxController {
  final QuantificationHomeState state = QuantificationHomeState();

  void changeMode(String mode) {
    state.selectedMode.value = mode;
  }

  void onStrategySettingsTapped() {
    // TODO: Handle strategy settings tap
    Get.put(StrategySetLogic());
    Get.to(() =>  StrategySetPage());



    // Get.put(OrderSetLogic());
    // Get.to(() =>  OrderSetPage());

  }
}
