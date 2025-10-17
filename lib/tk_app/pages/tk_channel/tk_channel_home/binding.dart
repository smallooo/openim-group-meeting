import 'package:get/get.dart';

import 'logic.dart';

class TkChannelHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TkChannelHomeLogic());
  }
}
