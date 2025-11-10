import 'dart:async';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:toklink/core/im_callback.dart';
import 'package:toklink/pages/home/home_logic.dart';
import 'package:openim_common/openim_common.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/controller/im_controller.dart';
import '../../routes/app_navigator.dart';

class MineLogic extends GetxController {
  final imLogic = Get.find<IMController>();

  late StreamSubscription kickedOfflineSub;
  
  /// 头像URL，优先使用缓存的avatar，如果没有则使用IM的faceURL
  final RxString avatarUrl = ''.obs;

  void viewMyInfo() => AppNavigator.startMyInfo();

  void copyID() {
    IMUtils.copy(text: imLogic.userInfo.value.userID!);
  }

  /// 加载头像URL，优先使用缓存的avatar，如果没有则使用IM的faceURL
  Future<void> loadAvatarUrl() async {
    print('[MineLogic] loadAvatarUrl 开始执行');
    try {
      print('[MineLogic] 准备获取 SharedPreferences');
      final prefs = await SharedPreferences.getInstance();
      print('[MineLogic] SharedPreferences 获取成功');
      final cachedAvatar = prefs.getString('tk_avatar');
      print('[MineLogic] 缓存的头像: $cachedAvatar');
      if (cachedAvatar != null && cachedAvatar.isNotEmpty) {
        avatarUrl.value = cachedAvatar;
        print('[MineLogic] 使用缓存的头像: ${avatarUrl.value}');
        return;
      }
      print('[MineLogic] 缓存中没有头像，使用IM的faceURL');
    } catch (e, stackTrace) {
      print('[MineLogic] 获取缓存头像失败: $e');
      print('[MineLogic] 堆栈跟踪: $stackTrace');
    }
    // 如果没有缓存的avatar，则使用IM的faceURL
    final faceURL = imLogic.userInfo.value.faceURL ?? '';
    avatarUrl.value = faceURL;
    print('[MineLogic] 使用IM的faceURL: $faceURL');
  }

  void accountSetup() => AppNavigator.startAccountSetup();

  void aboutUs() => AppNavigator.startAboutUs();

  void logout() async {
    // 清除邮箱数据
    await DataSp.putLoginAccount({});
    // 清除头像缓存
    await _clearAvatarCache();

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
  
  /// 清除头像缓存
  Future<void> _clearAvatarCache() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove('tk_avatar');
      print('[MineLogic] 头像缓存已清除');
    } catch (e) {
      print('[MineLogic] 清除头像缓存失败: $e');
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

  @override
  void onInit() {
    print('[MineLogic] onInit 被调用');
    super.onInit();
    kickedOfflineSub = imLogic.onKickedOfflineSubject.listen((value) {
      if (value == KickoffType.userTokenInvalid) {
        kickedOffline(tips: StrRes.tokenInvalid);
      } else {
        kickedOffline();
      }
    });
    // 加载头像URL
    print('[MineLogic] 准备调用 loadAvatarUrl');
    loadAvatarUrl().then((_) {
      print('[MineLogic] loadAvatarUrl 完成');
    }).catchError((e) {
      print('[MineLogic] loadAvatarUrl 出错: $e');
    });
    // 监听用户信息变化，如果缓存的avatar为空，则使用新的faceURL
    ever(imLogic.userInfo, (userInfo) {
      if (avatarUrl.value.isEmpty && userInfo.faceURL != null && userInfo.faceURL!.isNotEmpty) {
        avatarUrl.value = userInfo.faceURL!;
      }
    });
  }

  @override
  void onClose() {
    kickedOfflineSub.cancel();
    super.onClose();
  }
}
