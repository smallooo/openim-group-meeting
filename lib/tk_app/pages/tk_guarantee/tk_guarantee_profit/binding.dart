import 'package:get/get.dart';

import 'logic.dart';

class TkGuaranteeProfitBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TkGuaranteeProfitLogic());
  }
}
