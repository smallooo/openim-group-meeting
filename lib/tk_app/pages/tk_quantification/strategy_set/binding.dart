import 'package:get/get.dart';

import 'logic.dart';

class StrategySetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StrategySetLogic());
  }
}
