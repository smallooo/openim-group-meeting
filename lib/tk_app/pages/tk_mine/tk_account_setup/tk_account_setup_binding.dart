import 'package:get/get.dart';
import 'package:toklink/tk_app/pages/tk_mine/tk_account_setup/tk_account_setup_logic.dart';


class TkAccountSetupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TkAccountSetupLogic());
  }
}
