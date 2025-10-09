import 'package:get/get.dart';

import 'logic.dart';

class OrderRefundSubmitBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(OrderRefundSubmitLogic());
  }
}