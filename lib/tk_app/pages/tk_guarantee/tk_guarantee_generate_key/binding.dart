import 'package:get/get.dart';

import 'logic.dart';

class TkGuaranteeGenerateKeyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TkGuaranteeGenerateKeyLogic());
  }
}
