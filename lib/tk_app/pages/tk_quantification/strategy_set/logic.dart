import 'package:get/get.dart';

import 'state.dart';

class StrategySetLogic extends GetxController {
  final StrategySetState state = StrategySetState();

  void changeStrategyType(String type) {
    state.selectedStrategyType.value = type;
  }
}
