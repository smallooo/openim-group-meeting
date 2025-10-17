import 'package:get/get.dart';

import 'logic.dart';

class TkGuaranteeCreateOrderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TkGuaranteeCreateOrderLogic());
  }
}
