import 'package:get/get.dart';

import 'logic.dart';

class StrategySubscriptionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StrategySubscriptionLogic());
  }
}
