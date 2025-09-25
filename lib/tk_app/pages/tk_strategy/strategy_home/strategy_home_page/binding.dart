import 'package:get/get.dart';

import 'logic.dart';

class StrategyHomePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StrategyHomePageLogic());
  }
}
