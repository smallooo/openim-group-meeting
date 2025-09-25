import 'dart:async';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:toklink/core/im_callback.dart';
import 'package:toklink/pages/home/home_logic.dart';
import 'package:openim_common/openim_common.dart';
import 'package:toklink/tk_app/pages/tk_mine/tk_account_setup/tk_account_setup_binding.dart';
import 'package:toklink/tk_app/pages/tk_mine/tk_account_setup/tk_account_setup_view.dart';

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

  void viewMyInfo() => Get.toNamed(AppRoutes.tkMyInfo);

  void copyID() {
    IMUtils.copy(text: imLogic.userInfo.value.userID!);
  }

  void accountSetup() => Get.to(() => TkAccountSetupPage(), binding: TkAccountSetupBinding());

  void aboutUs() => AppNavigator.startAboutUs();

  void logout() async {
    // 清除邮箱数据  和 登录数据
    await DataSp.putLoginAccount({});
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
    PushController.logout();
    AppNavigator.startLogin();
  }

  @override
  void onInit() {
    _loadUserInfo();
    kickedOfflineSub = imLogic.onKickedOfflineSubject.listen((value) {
      if (value == KickoffType.userTokenInvalid) {
        kickedOffline(tips: StrRes.tokenInvalid);
      } else {
        kickedOffline();
      }
    });
    super.onInit();
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
      userAddress.value = '地址: xxuxusuxuszzzusuux...';

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
