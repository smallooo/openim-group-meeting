import 'dart:async';
import 'dart:io';

import 'package:flutter_openim_sdk/flutter_openim_sdk.dart';
import 'package:get/get.dart';
import 'package:toklink/pages/conversation/conversation_logic.dart';
import 'package:openim_common/openim_common.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../core/controller/im_controller.dart';
import '../../routes/app_navigator.dart';
import '../../routes/app_pages.dart';
import '../../tk_app/core/constants/api_constants.dart';
import '../../tk_app/core/services/token_storage_service.dart';
import '../../tk_app/core/services/token_init_service.dart';
import '../../tk_app/core/network/api_client.dart';
import '../../tk_app/features/product/data/repositories/product_repository.dart';
import '../../tk_app/shared/models/version/check_version.dart';
import '../../tk_app/shared/widgets/update_dialog.dart';
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
    Logger.print('🚀 _decideStartup() 开始执行...');
    
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
    
    Logger.print('🔄 开始登录系统校验...');
    
    // 1. 初始化业务token管理（自动刷新）
    final emailTokenResult = await _initializeEmailToken();
    
    // 2. 检查IM缓存数据（包含 imToken 和 imUid）
    final cachedData = await DataSp.getLoginCertificate();
    
    Logger.print('📊 缓存数据检查:');
    Logger.print('  - 业务Token: ${emailTokenResult?.isLoggedIn == true ? "✅ 有效" : "❌ 无效"}');
    Logger.print('  - IM登录凭证: ${cachedData != null ? "存在" : "不存在"}');
    if (cachedData != null) {
      Logger.print('    - userID: ${cachedData.userID}');
      Logger.print('    - imToken: ${cachedData.imToken.isNotEmpty ? "存在" : "不存在"}');
      Logger.print('    - chatToken: ${cachedData.chatToken.isNotEmpty ? "存在" : "不存在"}');
    }
    
    // 3. 校验业务token和IM凭证的有效性
    bool hasValidBusinessToken = emailTokenResult?.isLoggedIn == true;
    bool hasValidIMCache = (cachedData != null && 
                           cachedData.userID.isNotEmpty && 
                           cachedData.imToken.isNotEmpty);
    
    Logger.print('🔍 校验结果:');
    Logger.print('  - 业务Token: ${hasValidBusinessToken ? "✅ 有效" : "❌ 无效"}');
    Logger.print('  - IM凭证: ${hasValidIMCache ? "✅ 有效" : "❌ 无效"}');
    
    // 4. 只有业务token和IM凭证都有效才进入App
    if (hasValidBusinessToken && hasValidIMCache) {

      try {
        Logger.print('🚀 登录凭证有效，开始自动登录流程...');
        
        // 使用缓存的登录数据直接登录 IM SDK
        await imLogic.login(cachedData.userID, cachedData.imToken);
        // await imLogic.login("3574611276", "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVc2VySUQiOiIzNTc0NjExMjc2IiwiUGxhdGZvcm1JRCI6MiwiZXhwIjoxNzcwMTE0NTM3LCJpYXQiOjE3NjIzMzg1MzJ9.mNRQMH6fBjURpZlj_RzwVBjimM6DzmtJegkYb_jB-g0");
        // await imLogic.login("7106896196", "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVc2VySUQiOiI3MTA2ODk2MTk2IiwiUGxhdGZvcm1JRCI6MSwiZXhwIjoxNzcwMTE0Mjk2LCJpYXQiOjE3NjIzMzgyOTF9.s3_WizqV2ciQsdnSNCrZ1iQFRackFWp9WPqLm8tQCp4");

        // 设置推送控制器
        PushController.login(
          cachedData.userID,
          onTokenRefresh: (token) {
            print('---------onTokenRefresh: $token');
            OpenIM.iMManager.updateFcmToken(
                fcmToken: token, expireTime: DateTime.now().add(Duration(days: 90)).millisecondsSinceEpoch);
          },
        );
        
        final result = await ConversationLogic.getConversationFirstPage();
        Get.find<CacheController>().resetCache();
        AppNavigator.startSplashToMain(isAutoLogin: true, conversations: result);
        // Logger.print('✅ 自动登录成功: ${cachedData.userID}');
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
        Logger.print('💥 自动登录异常，清除所有数据');
        await _clearAllLoginData();
        Get.offAllNamed(AppRoutes.tk_login);
        return;
      }
    } else {
      // 5. 任何一套系统失效都清除所有数据并跳转登录
      Logger.print('⚠️ 登录凭证校验失败，清除所有数据并跳转登录页');
      if (!hasValidBusinessToken) {
        Logger.print('  📍 业务Token失效原因: ${emailTokenResult?.error ?? "初始化失败"}');
      }
      if (!hasValidIMCache) {
        Logger.print('  📍 IM凭证失效: 缓存数据不完整');
      }
      
      // 清除所有登录数据，避免死循环
      await _clearAllLoginData();
      Get.offAllNamed(AppRoutes.tk_login);
    }
  }
  
  /// 清除所有登录相关数据
  Future<void> _clearAllLoginData() async {
    try {
      // 清除 IM 登录数据
      await DataSp.removeLoginCertificate();
      await DataSp.putLoginAccount({});
      SpUtil().remove('email_login_response');
      
      // 清除业务token数据
      final container = ProviderContainer();
      final tokenStorage = await container.read(tokenStorageServiceProvider.future);
      await tokenStorage.clearLoginInfo();
      container.dispose();
      
      Logger.print('🧹 已清除所有登录数据（包括业务Token和IM凭证）');
    } catch (e) {
      Logger.print('❌ 清除登录数据时出错: $e');
    }
  }
  
  /// 初始化业务token管理（自动刷新）
  Future<TokenInitResult?> _initializeEmailToken() async {
    try {
      // 创建 ProviderContainer 来访问 Riverpod providers
      final container = ProviderContainer();
      
      // 获取 TokenInitService
      final tokenInitService = await container.read(tokenInitServiceProvider.future);
      
      // 获取 TokenDebugHelper
      final debugHelper = await container.read(tokenDebugHelperProvider.future);
      
      Logger.print('🔍 启动时初始化业务 Token 管理:');
      
      // 打印详细的 token 状态
      await debugHelper.printCurrentTokenStatus();
      
      // 初始化token管理（自动刷新）
      final initResult = await tokenInitService.initialize();
      
      if (initResult.isLoggedIn) {
        Logger.print('✅ 业务 Token 初始化成功，用户已登录');
      } else {
        Logger.print('⚠️ 业务 Token 初始化失败，需要重新登录: ${initResult.error ?? "无refreshToken"}');
      }
      
      // 清理 container
      container.dispose();
      
      return initResult;
    } catch (e) {
      Logger.print('❌ 初始化业务 Token 失败: $e');
      return null;
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
