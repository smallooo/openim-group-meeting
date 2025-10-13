import 'package:get/get.dart';

import 'logic.dart';

class TkPayWalletBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TkPayWalletLogic());
  }
}
