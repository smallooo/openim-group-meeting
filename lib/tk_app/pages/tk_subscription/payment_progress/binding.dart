import 'package:get/get.dart';

import 'logic.dart';

class PaymentProgressBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentProgressLogic());
  }
}
