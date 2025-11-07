import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:openim_common/openim_common.dart';

import '../../tk_app/pages/tk_mine/tk_mine_logic.dart';
import '../../tk_app/pages/tk_mine/tk_mine_view.dart';
import '../contacts/contacts_view.dart';
import '../conversation/conversation_view.dart';

import '../discover/discover_view.dart';
import 'home_logic.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class HomePage extends StatelessWidget {
  final logic = Get.find<HomeLogic>();
  HomePage({super.key}) {
    // 确保 TkMineLogic 被初始化
    if (!Get.isRegistered<TkMineLogic>()) {
      Get.lazyPut(() => TkMineLogic());
    }
  }

  List<PersistentTabConfig> _tabs() => [
        PersistentTabConfig(
          screen: ConversationPage(),
          item: ItemConfig(
            icon: _setupIcon(ImageRes.homeTab1Sel.toImage, logic.unreadMsgCount.value),
            inactiveIcon: _setupIcon(ImageRes.homeTab1Nor.toImage, logic.unreadMsgCount.value),
            title: StrRes.home,
            textStyle: Styles.ts_0089FF_10sp_semibold,
            activeForegroundColor: Color(0xFF9E13F7),   // 选中时文字颜色
            // inactiveForegroundColor: Styles.c_8E9AB0,   // 未选中时文字颜色
          ),
        ),
        PersistentTabConfig(
          screen: ContactsPage(),
          item: ItemConfig(
            icon: _setupIcon(ImageRes.homeTab2Sel.toImage, logic.unhandledCount.value),
            inactiveIcon: _setupIcon(ImageRes.homeTab2Nor.toImage, logic.unhandledCount.value),
            title: StrRes.contacts,
            textStyle: Styles.ts_0089FF_10sp_semibold,
            activeForegroundColor: Color(0xFF9E13F7),   // 选中时文字颜色
          ),
        ),
        PersistentTabConfig(
          screen: DiscoverPage(),
          item: ItemConfig(
            icon: ImageRes.homeTab3Sel.toImage,
            inactiveIcon: ImageRes.homeTab3Nor.toImage,
            title: StrRes.workbench,
            textStyle: Styles.ts_0089FF_10sp_semibold,
            activeForegroundColor: Color(0xFF9E13F7),   // 选中时文字颜色
          ),
        ),
        PersistentTabConfig(
          screen: TkMinePage(),
          item: ItemConfig(
            icon: ImageRes.homeTab4Sel.toImage,
            inactiveIcon: ImageRes.homeTab4Nor.toImage,
            title: StrRes.mine,
            textStyle: Styles.ts_0089FF_10sp_semibold,
            activeForegroundColor: Color(0xFF9E13F7),   // 选中时文字颜色
          ),
        ),
      ];

  Widget _setupIcon(Widget icon, int unReadCount) {
    return Stack(
      alignment: Alignment.center,
      children: [
        icon,
        Positioned(
          top: 0,
          right: 0,
          child: Transform.translate(
            offset: const Offset(2, -2),
            child: UnreadCountView(count: unReadCount),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // 在任何 tab 时，直接退出 app
        SystemNavigator.pop();
        return false;
      },
      child: Scaffold(
        backgroundColor: Styles.c_FFFFFF,
        body: Obx(
          () => PersistentTabView(
            tabs: _tabs(),
            onTabChanged: (index) {
              logic.switchTab(index);
            },
            navBarBuilder: (navBarConfig) => Style1BottomNavBar(
              navBarConfig: navBarConfig,
              navBarDecoration: const NavBarDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.black12, blurRadius: 0.5, spreadRadius: 0.5),
                ],
              ),
            ),
            navBarOverlap: const NavBarOverlap.none(),
            screenTransitionAnimation: const ScreenTransitionAnimation.none(),
          ),
        ),
      ),
    );
  }
}
