import 'package:get/get.dart';

import 'logic.dart';

class StrategyPublishBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StrategyPublishLogic());
  }
}
