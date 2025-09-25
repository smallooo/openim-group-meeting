import 'package:get/get.dart';

import 'logic.dart';

class StrategyMyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StrategyMyLogic());
  }
}
