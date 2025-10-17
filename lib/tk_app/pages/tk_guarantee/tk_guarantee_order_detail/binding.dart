import 'package:get/get.dart';

import 'logic.dart';

class TkGuaranteeOrderDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TkGuaranteeOrderDetailLogic());
  }
}
