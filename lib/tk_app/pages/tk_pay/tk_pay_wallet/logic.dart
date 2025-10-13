import 'package:get/get.dart';

import '../../../../routes/app_pages.dart';
import 'state.dart';

class TkPayWalletLogic extends GetxController {
  final TkPayWalletState state = TkPayWalletState();

  void toBill() {
    Get.toNamed(AppRoutes.tkPayBill);
  }

  /// 跳转到支付设置
  void toPaySet() {
    Get.toNamed(AppRoutes.tkPaySet);
  }
}
