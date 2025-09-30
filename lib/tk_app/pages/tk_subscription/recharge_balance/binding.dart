import 'package:get/get.dart';

import 'logic.dart';

class RechargeBalanceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RechargeBalanceLogic());
  }
}
