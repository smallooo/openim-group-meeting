import 'package:get/get.dart';
import 'login_code_logic.dart';

class LoginCodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginCodeLogic());
  }
}
