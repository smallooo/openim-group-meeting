import 'package:get/get.dart';

import 'logic.dart';

class TkPayHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TkPayHomeLogic());
  }
}
