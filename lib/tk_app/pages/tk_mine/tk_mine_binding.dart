import 'package:get/get.dart';

import 'tk_mine_logic.dart';

class TkMineBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TkMineLogic());
  }
}
