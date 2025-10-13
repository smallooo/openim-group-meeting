import 'package:get/get.dart';

import '../../../../routes/app_pages.dart';
import 'state.dart';

class TkPayHomeLogic extends GetxController {
  final TkPayHomeState state = TkPayHomeState();

  /// 导航到钱包页面
  void navigateToWalletPage() {
    Get.toNamed(AppRoutes.tkPayWallet);
  }
}
