import 'dart:async';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:toklink/core/im_callback.dart';
import 'package:toklink/pages/home/home_logic.dart';
import 'package:openim_common/openim_common.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toklink/tk_app/pages/tk_mine/tk_account_setup/tk_account_setup_binding.dart';
import 'package:toklink/tk_app/pages/tk_mine/tk_account_setup/tk_account_setup_view.dart';

import '../../../core/controller/app_controller.dart';
import '../../../core/controller/im_controller.dart';
import '../../../routes/app_navigator.dart';
import '../../../routes/app_pages.dart';




class TkMineLogic extends GetxController {
  final imLogic = Get.find<IMController>();

  late StreamSubscription kickedOfflineSub;
  
  // 用户信息响应式变量
  final RxString userNickname = ''.obs;
  final RxString userEmail = ''.obs;
  final RxString userAddress = ''.obs;
  
  /// 头像URL，优先使用缓存的avatar，如果没有则使用IM的faceURL
  final RxString avatarUrl = ''.obs;

  void viewMyInfo() => Get.toNamed(AppRoutes.tkMyInfo);

  void copyID() {
    IMUtils.copy(text: imLogic.userInfo.value.userID!);
  }

  void accountSetup() => Get.to(() => TkAccountSetupPage(), binding: TkAccountSetupBinding());

  void aboutUs() => AppNavigator.startAboutUs();

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
  
  /// 清除头像缓存
  Future<void> _clearAvatarCache() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove('tk_avatar');
      print('[TkMineLogic] 头像缓存已清除');
    } catch (e) {
      print('[TkMineLogic] 清除头像缓存失败: $e');
    }
  }

//  IM SDK 回调或 IM 接口错误码触发
  void kickedOffline({String? tips}) async {
    // if (EasyLoading.isShow) {
    //   EasyLoading.dismiss();
    // }
    // Get.snackbar(StrRes.accountWarn, tips ?? StrRes.accountException);
    // await DataSp.removeLoginCertificate();
    // PushController.logout();
    // AppNavigator.startLogin();
  }

  void toPayPage() {
    Get.toNamed(AppRoutes.tkPayHome);
  }

  @override
  void onInit() {
    _loadUserInfo();
    // 加载头像URL
    loadAvatarUrl();
    kickedOfflineSub = imLogic.onKickedOfflineSubject.listen((value) {
      if (value == KickoffType.userTokenInvalid) {
        kickedOffline(tips: StrRes.tokenInvalid);
      } else {
        kickedOffline();
      }
    });
    // 监听用户信息变化，如果缓存的avatar为空，则使用新的faceURL
    ever(imLogic.userInfo, (userInfo) {
      if (avatarUrl.value.isEmpty && userInfo.faceURL != null && userInfo.faceURL!.isNotEmpty) {
        avatarUrl.value = userInfo.faceURL!;
      }
    });
    super.onInit();
  }
  
  /// 加载头像URL，优先使用缓存的avatar，如果没有则使用IM的faceURL
  Future<void> loadAvatarUrl() async {
    print('[TkMineLogic] ========== 开始加载头像 ==========');
    print('[TkMineLogic] IM userInfo: ${imLogic.userInfo.value}');
    print('[TkMineLogic] IM faceURL: ${imLogic.userInfo.value.faceURL}');
    print('[TkMineLogic] IM faceURL 类型: ${imLogic.userInfo.value.faceURL.runtimeType}');
    print('[TkMineLogic] IM faceURL 是否为空: ${imLogic.userInfo.value.faceURL == null || imLogic.userInfo.value.faceURL!.isEmpty}');
    
    try {
      final prefs = await SharedPreferences.getInstance();
      final cachedAvatar = prefs.getString('tk_avatar');
      print('[TkMineLogic] 缓存的头像: $cachedAvatar');
      print('[TkMineLogic] 缓存的头像类型: ${cachedAvatar.runtimeType}');
      if (cachedAvatar != null && cachedAvatar.isNotEmpty) {
        avatarUrl.value = cachedAvatar;
        print('[TkMineLogic] 使用缓存的头像: ${avatarUrl.value}');
        return;
      }
    } catch (e) {
      print('[TkMineLogic] 获取缓存头像失败: $e');
    }
    // 如果没有缓存的avatar，则使用IM的faceURL
    final faceURL = imLogic.userInfo.value.faceURL ?? '';
    avatarUrl.value = faceURL;
    print('[TkMineLogic] 使用IM的faceURL: $faceURL');
    print('[TkMineLogic] avatarUrl.value: ${avatarUrl.value}');
    print('[TkMineLogic] ========== 头像加载完成 ==========');
  }
  
  /// 加载用户信息
  void _loadUserInfo() {
    // 从邮箱登录缓存中获取用户信息
    final emailLoginResponse = SpUtil().getObject('email_login_response');
    if (emailLoginResponse != null && emailLoginResponse is Map) {
      userNickname.value = emailLoginResponse['nickname'] ?? '';
      userEmail.value = emailLoginResponse['email'] ?? '';
      // 生成一个简单的地址显示
      // userAddress.value = '地址: ${userEmail.value.substring(0, 8)}...';
      userAddress.value = '';

    } else {
      // 如果没有邮箱登录信息，尝试从登录账户中获取
      final loginAccount = DataSp.getLoginAccount();
      if (loginAccount is Map) {
        final email = loginAccount['email'] as String? ?? '';
        userEmail.value = email;
        userNickname.value = email.split('@').first; // 使用邮箱@前的部分作为昵称
        userAddress.value = '地址: ${email.substring(0, 8)}...';
      }
    }
  }






  @override
  void onClose() {
    kickedOfflineSub.cancel();
    super.onClose();
  }
}
