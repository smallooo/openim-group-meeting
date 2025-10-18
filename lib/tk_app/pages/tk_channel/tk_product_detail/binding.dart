import 'package:get/get.dart';

import 'logic.dart';

class TkProductDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TkProductDetailLogic());
  }
}