import 'package:get/get.dart';

import '../../../../routes/app_pages.dart';
import 'state.dart';

class PaymentProgressLogic extends GetxController {
  final PaymentProgressState state = PaymentProgressState();
  
  @override
  void onInit() {
    super.onInit();
    // 页面初始化后1秒跳转到支付成功页面
    _navigateToSuccessPage();
  }
  
  void _navigateToSuccessPage() async {
    await Future.delayed(const Duration(seconds: 1));
    Get.offNamed(AppRoutes.paymentSuccess);
  }
}
