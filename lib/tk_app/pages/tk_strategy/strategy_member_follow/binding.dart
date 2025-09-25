import 'package:get/get.dart';

import 'logic.dart';

class StrategyMemberFollowBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StrategyMemberFollowLogic());
  }
}
