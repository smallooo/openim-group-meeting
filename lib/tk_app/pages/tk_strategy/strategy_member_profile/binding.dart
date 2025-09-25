import 'package:get/get.dart';

import 'logic.dart';

class StrategyMemberProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StrategyMemberProfileLogic());
  }
}
