import 'package:get/get.dart';

import 'logic.dart';

class OrderSetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrderSetLogic());
  }
}
