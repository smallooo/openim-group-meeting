import 'package:get/get.dart';

import 'logic.dart';

class VerifyPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerifyPasswordLogic());
  }
}
