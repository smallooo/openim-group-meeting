import 'dart:async';

import 'package:flutter_openim_sdk/flutter_openim_sdk.dart';
import 'package:get/get.dart';
import 'package:toklink/pages/conversation/conversation_logic.dart';
import 'package:openim_common/openim_common.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/controller/im_controller.dart';
import '../../routes/app_navigator.dart';
import '../../routes/app_pages.dart';
import '../../tk_app/core/services/token_storage_service.dart';
import '../../tk_app/core/services/token_init_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../tk_app/core/utils/token_debug_helper.dart';

class SplashLogic extends GetxController {
  final imLogic = Get.find<IMController>();
  final pushLogic = Get.find<PushController>();

  String? get userID => DataSp.userID;

  String? get token => DataSp.imToken;

  late StreamSubscription initializedSub;

  @override
  void onInit() {
    initializedSub = imLogic.initializedSubject.listen((value) {
      _decideStartup();
    });
    super.onInit();
  }

  Future<void> _decideStartup() async {
    // 测试缓存数据持久性
    _testCachePersistence();
    
    // 引导页优先
    final sp = await SharedPreferences.getInstance();
    final done = sp.getBool('onboarding_completed') ?? false;
    if (!done) {
      // 使用命名路由以确保执行 OnboardingBinding
      Get.offAllNamed('/onboarding');
      return;
    }
    
    // 初始化邮箱登录token管理（自动刷新）
    await _initializeEmailToken();
    
    // 检查是否有缓存的登录数据
    final cachedData = await DataSp.getLoginCertificate();
    final loginAccount = DataSp.getLoginAccount();
    final email = (loginAccount is Map) ? (loginAccount['email'] as String?) : null;
    
    // 获取邮箱登录返回信息
    final emailLoginResponse = SpUtil().getObject('email_login_response');
    
    // 获取IM登录返回信息
    final imLoginResponse = SpUtil().getObject('im_login_response');
    
    Logger.print('📊 缓存数据检查:');
    Logger.print('  - 登录凭证: ${cachedData != null ? "存在" : "不存在"}');
    if (cachedData != null) {
      Logger.print('    - userID: ${cachedData.userID}');
      Logger.print('    - imToken: ${cachedData.imToken.isNotEmpty ? "存在" : "不存在"}');
    }
    Logger.print('  - 邮箱: ${email ?? "无"}');
    Logger.print('  - 邮箱登录返回信息: ${emailLoginResponse != null ? "存在" : "不存在"}');
    Logger.print('  - IM登录返回信息: ${imLoginResponse != null ? "存在" : "不存在"}');
    
    // 如果有有效的登录凭证和邮箱，就尝试自动登录（不要求所有缓存都存在）
    if (cachedData != null && 
        cachedData.userID.isNotEmpty && 
        cachedData.imToken.isNotEmpty &&
        email?.isNotEmpty == true) {
      try {
        Logger.print('🚀 开始自动登录流程...');
        
        // 使用缓存的登录数据直接登录 IM SDK
        await imLogic.login(cachedData.userID, cachedData.imToken);
        
        // 设置推送控制器
        PushController.login(
          cachedData.userID,
          onTokenRefresh: (token) {
            OpenIM.iMManager.updateFcmToken(
                fcmToken: token, expireTime: DateTime.now().add(Duration(days: 90)).millisecondsSinceEpoch);
          },
        );
        
        final result = await ConversationLogic.getConversationFirstPage();
        Get.find<CacheController>().resetCache();
        AppNavigator.startSplashToMain(isAutoLogin: true, conversations: result);
        Logger.print('✅ 使用缓存数据自动登录成功: ${cachedData.userID}');
        return;
      } catch (e) {
        Logger.print('❌ 自动登录失败: $e');
        // 如果是网络问题或临时错误，保留缓存数据，只清除无效的登录凭证
        if (e.toString().contains('network') || e.toString().contains('timeout')) {
          Logger.print('⚠️ 网络问题，保留缓存数据，进入登录页');
          Get.offAllNamed(AppRoutes.tk_login);
          return;
        }
        // 其他错误则清除本地数据并进入新登录页
        await _clearAllLoginData();
        Get.offAllNamed(AppRoutes.tk_login);
        return;
      }
    }
    
    // 如果登录凭证无效，清除所有登录数据
    if (cachedData != null && (cachedData.userID.isEmpty || cachedData.imToken.isEmpty)) {
      Logger.print('⚠️ 检测到无效的登录凭证，清除所有缓存');
      await _clearAllLoginData();
    }
    
    // 没有完整登录数据则进入新登录页
    Get.offAllNamed(AppRoutes.tk_login);
  }
  
  /// 清除所有登录相关数据
  Future<void> _clearAllLoginData() async {
    try {
      // 清除 IM 登录数据
      await DataSp.removeLoginCertificate();
      await DataSp.putLoginAccount({});
      SpUtil().remove('email_login_response');
      SpUtil().remove('im_login_response');
      
      // 清除邮箱登录 token 数据
      final container = ProviderContainer();
      final tokenStorage = await container.read(tokenStorageServiceProvider.future);
      await tokenStorage.clearLoginInfo();
      container.dispose();
      
      Logger.print('🧹 已清除所有登录数据（包括邮箱登录Token）');
    } catch (e) {
      Logger.print('❌ 清除登录数据时出错: $e');
    }
  }
  
  /// 初始化邮箱登录token管理（自动刷新）
  Future<void> _initializeEmailToken() async {
    try {
      // 创建 ProviderContainer 来访问 Riverpod providers
      final container = ProviderContainer();
      
      // 获取 TokenInitService
      final tokenInitService = await container.read(tokenInitServiceProvider.future);
      
      // 获取 TokenDebugHelper
      final debugHelper = await container.read(tokenDebugHelperProvider.future);
      
      Logger.print('🔍 启动时初始化邮箱登录 Token 管理:');
      
      // 打印详细的 token 状态
      await debugHelper.printCurrentTokenStatus();
      
      // 初始化token管理（自动刷新）
      final initResult = await tokenInitService.initialize();
      
      if (initResult.isLoggedIn) {
        Logger.print('✅ 邮箱登录 Token 初始化成功，用户已登录: ${initResult.userInfo?['email']}');
      } else {
        Logger.print('⚠️ 邮箱登录 Token 初始化失败，需要重新登录: ${initResult.error ?? "无refreshToken"}');
      }
      
      // 清理 container
      container.dispose();
    } catch (e) {
      Logger.print('❌ 初始化邮箱登录 Token 失败: $e');
    }
  }

  /// 测试缓存数据持久性
  void _testCachePersistence() {
    Logger.print('🔍 测试缓存数据持久性:');
    Logger.print('  - SharedPreferences 是否可用: ${SpUtil().isInitialized}');
    
    // 测试写入和读取
    SpUtil().putString('test_key', 'test_value_${DateTime.now().millisecondsSinceEpoch}');
    final testValue = SpUtil().getString('test_key');
    Logger.print('  - 测试写入读取: $testValue');
  }

  _login() async {
    try {
      Logger.print('---------login---------- userID: $userID, token: $token');
      await imLogic.login(userID!, token!);
      Logger.print('---------im login success-------');
      PushController.login(
        userID!,
        onTokenRefresh: (token) {
          OpenIM.iMManager.updateFcmToken(
              fcmToken: token, expireTime: DateTime.now().add(Duration(days: 90)).millisecondsSinceEpoch);
        },
      );
      Logger.print('---------push login success----');
      final result = await ConversationLogic.getConversationFirstPage();

      AppNavigator.startSplashToMain(isAutoLogin: true, conversations: result);
    } catch (e, s) {
      IMViews.showToast('$e $s');
      await DataSp.removeLoginCertificate();
      AppNavigator.startLogin();
    }
  }

  @override
  void onClose() {
    initializedSub.cancel();
    super.onClose();
  }
}
