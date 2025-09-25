import 'dart:async';
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
      // 使用新的 AuthRepository
      final authRepo = await ref.read(authRepositoryProvider.future);
      final resp = await authRepo.emailCodeLoginReq(
        email: email, 
        code: code.value, 
        deviceId: deviceId,
      );
      
      if ((resp['errCode'] ?? -1) == 0) {
        verified.value = true;
        
        // 缓存邮箱登录返回的完整数据
        final loginData = resp['data'];
        if (loginData != null) {
          // 使用新的 TokenStorageService 保存登录信息
          final tokenStorage = await ref.read(tokenStorageServiceProvider.future);
          await tokenStorage.saveLoginInfo(
            accessToken: loginData['accessToken'] ?? '',
            refreshToken: loginData['refreshToken'] ?? '',
            tokenType: loginData['tokenType'] ?? 'Bearer',
            expiresIn: loginData['expiresIn'] ?? '',
            userId: loginData['userId'] ?? '',
            email: loginData['email'] ?? email,
            nickname: loginData['nickname'] ?? '',
            avatar: loginData['avatar'] ?? '',
          );
          
          // 打印登录成功后的 accessToken
          debugPrint('[LoginCodeLogic] 登录成功，保存的 accessToken: ${loginData['accessToken']}');
          
          // 注意：这里不保存 IM 相关的 token，因为邮箱登录的 token 和 IM token 是不同的
          // IM 登录会在 completeLogin() 方法中单独处理
          debugPrint('[LoginCodeLogic] 邮箱登录成功，但 IM 登录需要单独处理');
          
          // 保存账户信息
          await DataSp.putLoginAccount({'email': email});
          
          // 缓存邮箱登录的完整响应数据
          await SpUtil().putObject('email_login_response', loginData);
          
          print('✅ 邮箱登录数据已缓存: $loginData');
        }
      } else {
        throw Exception(resp['errMsg'] ?? 'login failed');
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
      // 使用新的 AuthRepository
      final authRepo = await ref.read(authRepositoryProvider.future);
      await authRepo.emailLoginSendCodeReq(email: email, deviceId: deviceId);
      _startCountdown();
    } on ApiException catch (e) {
      IMViews.showToast(e.message);
    } catch (e) {
      IMViews.showToast(e.toString());
    }
  }

  /// 完成登录流程
  Future<void> completeLogin() async {
    isLoading.value = true;
    
    try {
      // 验证码验证成功后，先尝试用邮箱+默认密码登录IM
      try {
        // 调用后台登录接口获取用户信息和 token
        final data = await Apis.login(
          email: email,
          password: '123456abc',
        );
        
        // 保存登录凭证和账户信息
        await DataSp.putLoginCertificate(data);
        await DataSp.putLoginAccount({'email': email});
        
        // 缓存IM登录返回的完整数据
        await SpUtil().putObject('im_login_response', data.toJson());
        
        // 使用获取到的 userID 和 imToken 登录 IM SDK
        final imLogic = Get.find<IMController>();
        await imLogic.login(data.userID, data.imToken);
        
        // 设置推送控制器
        PushController.login(
          data.userID,
          onTokenRefresh: (token) {
            OpenIM.iMManager.updateFcmToken(
                fcmToken: token, expireTime: DateTime.now().add(Duration(days: 90)).millisecondsSinceEpoch);
          },
        );
        
        // 获取会话列表并跳转到主页面
        final result = await ConversationLogic.getConversationFirstPage();
        Get.find<CacheController>().resetCache();
        AppNavigator.startMain(conversations: result);
        return; // 登录成功，直接返回
        
      } catch (loginError) {
        // IM 登录失败，静默处理，不显示错误提示，尝试注册
        print('IM登录失败，尝试注册: $loginError');
      }
      
      // 尝试注册
      try {
        // 使用邮箱@之前的部分作为用户名进行注册
        final username = email.split('@').first; // 提取邮箱@之前的字符串
        final registerData = await Apis.register(
          nickname: username, // 用户名为邮箱@之前的部分
          password: '123456abc',
          email: email,
          verificationCode: '666666', // IM 注册使用固定验证码
        );
        
        // 保存注册后的登录凭证（仅保存必要的登录信息，不保存完整返回数据）
        await DataSp.putLoginCertificate(registerData);
        await DataSp.putLoginAccount({'email': email});
        
        // 注意：IM注册后不保存返回信息，只保存必要的登录凭证
        print('✅ IM注册成功，仅保存登录凭证，不缓存完整返回数据');
        
        // 使用注册返回的信息登录 IM SDK
        final imLogic = Get.find<IMController>();
        await imLogic.login(registerData.userID, registerData.imToken);
        
        // 设置推送控制器
        PushController.login(
          registerData.userID,
          onTokenRefresh: (token) {
            OpenIM.iMManager.updateFcmToken(
                fcmToken: token, expireTime: DateTime.now().add(Duration(days: 90)).millisecondsSinceEpoch);
          },
        );
        
        // 获取会话列表并跳转到主页面
        final result = await ConversationLogic.getConversationFirstPage();
        Get.find<CacheController>().resetCache();
        AppNavigator.startMain(conversations: result);
        
      } catch (registerError) {
        // 注册也失败，显示错误信息
        error.value = '登录和注册都失败了，请重试';
        verified.value = false;
      }
      
    } catch (e) {
      error.value = '登录失败: ${e.toString()}';
      verified.value = false;
    } finally {
      isLoading.value = false;
    }
  }

  /// 尝试注册流程
  Future<void> _tryRegisterFlow() async {
    try {
      // 使用邮箱@之前的部分作为用户名进行注册
      final username = email.split('@').first;
      final registerData = await Apis.register(
        nickname: username,
        password: '123456abc',
        email: email,
        verificationCode: '666666',
      );
      
      // 保存注册后的登录凭证（仅保存必要的登录信息，不保存完整返回数据）
      await DataSp.putLoginCertificate(registerData);
      await DataSp.putLoginAccount({'email': email});
      
      // 注意：IM注册后不保存返回信息，只保存必要的登录凭证
      print('✅ IM注册成功，仅保存登录凭证，不缓存完整返回数据');
      
      // 使用注册返回的信息登录 IM SDK
      final imLogic = Get.find<IMController>();
      await imLogic.login(registerData.userID, registerData.imToken);
      
      // 设置推送控制器
      PushController.login(
        registerData.userID,
        onTokenRefresh: (token) {
          OpenIM.iMManager.updateFcmToken(
              fcmToken: token, 
              expireTime: DateTime.now().add(Duration(days: 90)).millisecondsSinceEpoch);
        },
      );
      
      // 获取会话列表并跳转到主页面
      final result = await ConversationLogic.getConversationFirstPage();
      Get.find<CacheController>().resetCache();
      AppNavigator.startMain(conversations: result);
      
    } catch (registerError) {
      // 注册也失败，显示错误信息
      error.value = '登录和注册都失败了，请重试';
      verified.value = false;
    }
  }
}
