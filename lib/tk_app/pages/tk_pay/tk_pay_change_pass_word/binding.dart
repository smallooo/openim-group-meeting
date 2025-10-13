import 'package:get/get.dart';

import 'logic.dart';

class TkPayChangePassWordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TkPayChangePassWordLogic());
  }
}
