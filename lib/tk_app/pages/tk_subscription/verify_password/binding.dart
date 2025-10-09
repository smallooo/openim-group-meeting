import 'package:get/get.dart';

import 'logic.dart';

class VerifyPasswordBinding extends Bindings {
  @override
  void dependencies() {
    // 先删除可能存在的旧实例
    if (Get.isRegistered<VerifyPasswordLogic>()) {
      Get.delete<VerifyPasswordLogic>();
    }
    // 创建新实例
    Get.put<VerifyPasswordLogic>(VerifyPasswordLogic(), permanent: false);
  }
}
