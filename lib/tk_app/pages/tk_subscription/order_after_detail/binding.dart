import 'package:get/get.dart';

import 'logic.dart';

class OrderAfterDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrderAfterDetailLogic());
  }
}
