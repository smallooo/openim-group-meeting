import 'package:get/get.dart';

import 'logic.dart';

class OrderRequestRefundBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrderRequestRefundLogic());
  }
}
