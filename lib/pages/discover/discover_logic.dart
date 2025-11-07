import 'package:get/get.dart';
import 'package:toklink/core/controller/app_controller.dart';
import 'package:openim_common/openim_common.dart';
import 'package:pull_to_refresh_new/pull_to_refresh.dart';
import 'package:toklink/tk_app/pages/tk_strategy/strategy_home/strategy_home_page/view.dart';
import 'package:toklink/tk_app/pages/tk_strategy/strategy_home/strategy_home_page/binding.dart';

import '../../tk_app/pages/tk_quantification/quantification_home/logic.dart';
import '../../tk_app/pages/tk_quantification/quantification_home/view.dart';
import 'package:toklink/routes/app_pages.dart';

class DiscoverLogic extends GetxController {
  final refreshCtrl = RefreshController();
  final appLogic = Get.find<AppController>();
  final list = <Rx<UniMPInfo>>[].obs;
  final url = ''.obs;

  @override
  void onReady() {
    super.onReady();

    final temp = appLogic.clientConfigMap['discoverPageURL'];

    if (temp == null) {
      appLogic.queryClientConfig().then((value) {
        if (value['discoverPageURL'] == null) {
          url.value = 'https://www.openim.io';
        } else {
          url.value = value['discoverPageURL'];
        }
      });
    } else {
      url.value = temp;
    }
  }

  /// 跳转到策略页面
  void goToStrategyPage() {
    Get.to(
      () => StrategyHomePagePage(),
      binding: StrategyHomePageBinding(),
    );
  }
  void goToDan() {
    // Get.to(
    //       () => StrategyHomePagePage(),
    //   binding: StrategyHomePageBinding(),
    // );

    Get.put(QuantificationHomeLogic());
    Get.to(() =>  QuantificationHomePage());

  }

  /// 跳转到担保页面
  void goToGuaranteePage() {
    Get.toNamed(AppRoutes.tkGuaranteeOrder);
  }

  /// 跳转到频道页面
  void goToChannelPage() {
    Get.toNamed(AppRoutes.tkChannelHome);
  }

}
