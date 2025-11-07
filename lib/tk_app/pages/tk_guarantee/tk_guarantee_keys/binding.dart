import 'package:get/get.dart';

import 'logic.dart';

class TkGuaranteeKeysBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TkGuaranteeKeysLogic());
  }
}
