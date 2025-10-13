import 'package:get/get.dart';

import 'logic.dart';

class TkPayBillPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TkPayBillPageLogic());
  }
}
