import 'dart:async';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter_openim_sdk/flutter_openim_sdk.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:openim_common/openim_common.dart';
import '../../../../core/controller/im_controller.dart';
import '../../../../pages/conversation/conversation_logic.dart';
import '../../../../routes/app_navigator.dart';
import '../../../features/auth/data/repositories/auth_repository.dart';
import '../../../core/exceptions/api_exception.dart';
import '../../../core/services/token_storage_service.dart';
import '../../../shared/models/auth/code_login_response.dart';

class LoginCodeLogic extends GetxController {
  // 验证码输入
  final RxString code = ''.obs;
  
  // 错误信息
  final RxnString error = RxnString();
  
  // 验证状态
  final RxBool verified = false.obs;
  
  // 倒计时
  final RxInt secondsLeft = 60.obs;
  
  // 加载状态
  final RxBool isLoading = false.obs;

  // 页面参数
  String email = '';
  String deviceId = '';
  dynamic sendModel;
  
  // 定时器
  Timer? _timer;
  
  // Riverpod Ref
  late WidgetRef ref;

  void setRef(WidgetRef widgetRef) {
    ref = widgetRef;
  }

  /// 初始化页面数据
  void initPageData({
    required dynamic sendModel,
    required String deviceId,
  }) {
    this.sendModel = sendModel;
    this.deviceId = deviceId;
    email = sendModel is Map ? (sendModel['email'] ?? '') : '';
    
    _startCountdown();
  }

  @override
  void onClose() {
    _timer?.cancel();
    super.onClose();
  }

  /// 开始倒计时
  void _startCountdown() {
    _timer?.cancel();
    secondsLeft.value = 60;
    
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (secondsLeft.value <= 0) {
        timer.cancel();
      } else {
        secondsLeft.value--;
      }
    });
  }

  /// 更新验证码
  void updateCode(String newCode) {
    code.value = newCode;
  }

  /// 验证码输入完成，自动验证
  void onCodeCompleted(String newCode) {
    code.value = newCode;
    verify();
  }

  /// 验证验证码
  Future<void> verify() async {
    error.value = null;
    verified.value = false;
    
    try {
      // 获取平台ID：iOS为"1"，Android为"2"
      final platformId = Platform.isIOS ? '1' : '2';
      
      // 使用新的 AuthRepository
      final authRepo = await ref.read(authRepositoryProvider.future);
      final resp = await authRepo.emailCodeLoginReq(
        email: email, 
        code: code.value, 
        deviceId: deviceId,
        platformId: platformId,
      );
      
      if ((resp['errCode'] ?? -1) == 0) {
        verified.value = true;
        
        // 将响应数据转换为 CodeLoginResponse 对象
        final loginData = resp['data'];
        if (loginData != null) {
          final loginResponse = CodeLoginResponse.fromJson(loginData);
          
          // 使用新的 TokenStorageService 保存登录信息
          final tokenStorage = await ref.read(tokenStorageServiceProvider.future);
          await tokenStorage.saveLoginInfo(
            accessToken: loginResponse.accessToken,
            refreshToken: loginResponse.refreshToken,
            tokenType: loginResponse.tokenType,
            expiresIn: loginResponse.expiresIn,
            userId: loginResponse.memberId, // 使用 memberId 替代 userId
            email: loginResponse.email,
            nickname: loginResponse.nickname,
            avatar: loginResponse.avatar,
          );
          
          // 打印登录成功后的 accessToken
          debugPrint('[LoginCodeLogic] 登录成功，保存的 accessToken: ${loginResponse.accessToken}');
          debugPrint('[LoginCodeLogic] IM Token: ${loginResponse.imToken}');
          debugPrint('[LoginCodeLogic] IM UID: ${loginResponse.imUid}');


          // 创建 LoginCertificate 并保存
          final loginCertificate = LoginCertificate.fromJson({
            'userID': loginResponse.imUid,
            'imToken': loginResponse.imToken,
            'chatToken': loginResponse.chatToken,

          });

          await DataSp.putLoginCertificate(loginCertificate);
          
          // 使用接口返回的 imToken 和 imUid 直接登录 IM SDK
          final imLogic = Get.find<IMController>();
          await imLogic.login(loginResponse.imUid, loginResponse.imToken);
          // await imLogic.login("3574611276", "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVc2VySUQiOiIzNTc0NjExMjc2IiwiUGxhdGZvcm1JRCI6MiwiZXhwIjoxNzcwMTc0MjE3LCJpYXQiOjE3NjIzOTgyMTJ9.EgXxMOcH_Ve0nExfaq9xclq470X7HV5Pi8w_UqBHbRM");


          // 设置推送控制器
          PushController.login(
            loginResponse.imUid,
            onTokenRefresh: (token) {
              OpenIM.iMManager.updateFcmToken(
                  fcmToken: token, expireTime: DateTime.now().add(Duration(days: 90)).millisecondsSinceEpoch);
            },
          );
          
          // 保存账户信息
          await DataSp.putLoginAccount({'email': email});
          
          // 缓存邮箱登录的完整响应数据
          await SpUtil().putObject('email_login_response', loginData);
          
          print('✅ 邮箱登录和 IM 登录成功，数据已缓存');
          
          // 验证成功后自动完成登录流程，直接跳转到主页
          await _autoCompleteLogin();
        }
      } else {
        // throw Exception(resp['errMsg'] ?? 'login failed');
        throw Exception('verify failed');
      }
    } on ApiException catch (e) {
      error.value = e.message;
      verified.value = false;
    } catch (e) {
      error.value = e.toString();
      verified.value = false;
    }
  }

  /// 重新发送验证码
  Future<void> resend() async {
    try {
      // 获取平台ID：iOS为"1"，Android为"2"
      final platformId = Platform.isIOS ? '1' : '2';
      
      // 使用新的 AuthRepository
      final authRepo = await ref.read(authRepositoryProvider.future);
      await authRepo.emailLoginSendCodeReq(
        email: email, 
        deviceId: deviceId,
        platformId: platformId,
      );
      _startCountdown();
    } on ApiException catch (e) {
      IMViews.showToast(e.message);
    } catch (e) {
      IMViews.showToast(e.toString());
    }
  }

  /// 自动完成登录流程（验证成功后自动调用）
  Future<void> _autoCompleteLogin() async {
    isLoading.value = true;
    
    try {
      // IM 登录已经在 verify() 方法中使用接口返回的 imToken 和 imUid 完成
      // 这里只需要获取会话列表并跳转到主页面
      final result = await ConversationLogic.getConversationFirstPage();
      Get.find<CacheController>().resetCache();
      AppNavigator.startMain(conversations: result);
    } catch (e) {
      error.value = '获取会话列表失败: ${e.toString()}';
      verified.value = false;
      // 如果自动登录失败，显示错误，让用户可以选择重试
    } finally {
      isLoading.value = false;
    }
  }

  /// 完成登录流程（手动点击按钮时调用，作为自动登录失败的重试机制）
  /// 注意：正常情况下验证成功后会自动调用 _autoCompleteLogin()，这里作为备用方案
  Future<void> completeLogin() async {
    await _autoCompleteLogin();
  }

}
