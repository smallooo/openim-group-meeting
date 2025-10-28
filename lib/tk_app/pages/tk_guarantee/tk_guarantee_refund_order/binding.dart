import 'package:get/get.dart';

import 'logic.dart';

class TkGuaranteeRefundOrderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TkGuaranteeRefundOrderLogic());
  }
}
