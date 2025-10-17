import 'package:get/get.dart';

import 'logic.dart';

class TkGuaranteeOrderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TkGuaranteeOrderLogic());
  }
}
