import 'package:get/get.dart';

import 'state.dart';

class OrderSetLogic extends GetxController {
  final OrderSetState state = OrderSetState();

  void changeExceedRangeType(String type) {
    state.exceedRangeType.value = type;
  }

  void changeStrategyMode(String mode) {
    state.strategyMode.value = mode;
  }

  void changeFullOrderStopLoss(String value) {
    state.fullOrderStopLoss.value = value;
  }

  void changeBuyFirstOrderOutsideRange(String value) {
    state.buyFirstOrderOutsideRange.value = value;
  }

  void changeMultiDirectionalLinkage(String value) {
    state.multiDirectionalLinkage.value = value;
  }
}
