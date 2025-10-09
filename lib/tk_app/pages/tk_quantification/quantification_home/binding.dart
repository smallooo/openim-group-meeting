import 'package:get/get.dart';

import 'logic.dart';

class QuantificationHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QuantificationHomeLogic());
  }
}
