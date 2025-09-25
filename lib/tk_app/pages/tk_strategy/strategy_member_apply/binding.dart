import 'package:get/get.dart';

import 'logic.dart';

class StrategyMemberApplyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StrategyMemberApplyLogic());
  }
}
