import 'package:get/get.dart';

import 'logic.dart';

class PaymentFailPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentFailPageLogic());
  }
}
