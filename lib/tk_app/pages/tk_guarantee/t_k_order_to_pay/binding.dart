import 'package:get/get.dart';

import 'logic.dart';

class TKOrderToPayBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TKOrderToPayLogic());
  }
}
