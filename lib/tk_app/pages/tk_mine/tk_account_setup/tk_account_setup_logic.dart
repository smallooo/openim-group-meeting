import 'dart:async';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:toklink/routes/app_navigator.dart';
import 'package:openim_common/openim_common.dart';
import 'package:toklink/core/im_callback.dart';
import 'package:toklink/pages/home/home_logic.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/controller/im_controller.dart';


class TkAccountSetupLogic extends GetxController {
  final imLogic = Get.find<IMController>();
  final curLanguage = "".obs;

  late StreamSubscription kickedOfflineSub;

  @override
  void onReady() {
    _updateLanguage();
    super.onReady();
  }

  @override
  void onInit() {
    _queryMyFullInfo();
    kickedOfflineSub = imLogic.onKickedOfflineSubject.listen((value) {
      if (value == KickoffType.userTokenInvalid) {
        kickedOffline(tips: StrRes.tokenInvalid);
      } else {
        kickedOffline();
      }
    });
    super.onInit();
  }

  void _queryMyFullInfo() async {
    final data = await LoadingView.singleton.wrap(
      asyncFunction: () => Apis.queryMyFullInfo(),
    );
    if (data is UserFullInfo) {
      final userInfo = UserFullInfo.fromJson(data.toJson());
      imLogic.userInfo.update((val) {
        val?.allowAddFriend = userInfo.allowAddFriend;
        val?.allowBeep = userInfo.allowBeep;
        val?.allowVibration = userInfo.allowVibration;
      });
    }
  }

  void blacklist() {
    print('准备跳转到黑名单页面');
    try {
      AppNavigator.startBlacklist();
      print('黑名单页面跳转成功');
    } catch (e) {
      print('黑名单页面跳转错误: $e');
      IMViews.showToast('跳转黑名单页面失败: $e');
    }
  }

  void languageSetting() => AppNavigator.startLanguageSetup();

  void _updateLanguage() {
    var index = DataSp.getLanguage() ?? 0;
    switch (index) {
      case 1:
        curLanguage.value = StrRes.chinese;
        break;
      case 2:
        curLanguage.value = StrRes.english;
        break;
      default:
        curLanguage.value = StrRes.followSystem;
        break;
    }
  }

  void logout() async {
    // 清除邮箱数据  和 登录数据
    await DataSp.putLoginAccount({});
    // 清除头像缓存
    await _clearAvatarCache();
    // await DataSp.putLoginCertificate({} as LoginCertificate);

    var confirm = await Get.dialog(CustomDialog(title: StrRes.logoutHint));
    if (confirm == true) {
      try {
        await LoadingView.singleton.wrap(asyncFunction: () async {
          await imLogic.logout();
          await DataSp.removeLoginCertificate();
          PushController.logout();
          Get.find<HomeLogic>().conversationsAtFirstPage.clear();
        });
        AppNavigator.startLogin();
      } catch (e) {
        IMViews.showToast('e:$e');
      }
    }
  }

  void kickedOffline({String? tips}) async {
    if (EasyLoading.isShow) {
      EasyLoading.dismiss();
    }
    Get.snackbar(StrRes.accountWarn, tips ?? StrRes.accountException);
    await DataSp.removeLoginCertificate();
    // 清除头像缓存
    await _clearAvatarCache();
    PushController.logout();
    AppNavigator.startLogin();
  }
  
  /// 清除头像缓存
  Future<void> _clearAvatarCache() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove('tk_avatar');
      print('[TkAccountSetupLogic] 头像缓存已清除');
    } catch (e) {
      print('[TkAccountSetupLogic] 清除头像缓存失败: $e');
    }
  }

  @override
  void onClose() {
    kickedOfflineSub.cancel();
    super.onClose();
  }
}
