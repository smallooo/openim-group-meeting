import 'package:get/get.dart';

import 'tk_my_info_logic.dart';

class TkMyInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TkMyInfoLogic());
  }
}