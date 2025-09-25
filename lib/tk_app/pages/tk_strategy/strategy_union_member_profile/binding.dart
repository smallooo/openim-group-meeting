import 'package:get/get.dart';

import 'logic.dart';

class StrategyUnionMemberProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StrategyUnionMemberProfileLogic());
  }
}
