import 'package:get/get.dart';

import 'logic.dart';

class PaymentSuccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentSuccessLogic());
  }
}
