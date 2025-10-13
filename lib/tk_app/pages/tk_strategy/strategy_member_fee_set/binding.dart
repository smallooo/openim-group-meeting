import 'package:get/get.dart';

import 'logic.dart';

class StrategyMemberFeeSetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StrategyMemberFeeSetLogic());
  }
}
