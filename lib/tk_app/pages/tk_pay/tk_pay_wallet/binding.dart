import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dio/dio.dart';

import 'logic.dart';
import '../../../core/network/api_client.dart';
import '../../../core/services/token_storage_service.dart';
import '../../../core/services/token_manager.dart';
import '../../../core/services/auth_state_manager.dart';

/// 钱包页面依赖注入绑定
/// 
/// 负责初始化页面所需的所有依赖，包括异步依赖的初始化
class TkPayWalletBinding extends Bindings {
  @override
  void dependencies() {
    // 异步初始化依赖
    _initializeAsyncDependencies();
    
    // 注册页面逻辑控制器
    Get.lazyPut(() => TkPayWalletLogic());
  }
  
  /// 初始化异步依赖
  /// 
  /// 按照依赖关系顺序初始化各个服务
  Future<void> _initializeAsyncDependencies() async {
    try {
      // 1. 初始化 SharedPreferences（基础依赖）
      if (!Get.isRegistered<SharedPreferences>()) {
        await Get.putAsync<SharedPreferences>(() async {
          return await SharedPreferences.getInstance();
        });
      }

      // 2. 初始化 TokenStorageService（依赖 SharedPreferences）
      if (!Get.isRegistered<TokenStorageService>()) {
        Get.put<TokenStorageService>(TokenStorageService(Get.find<SharedPreferences>()));
      }

      // 3. 初始化 Dio（HTTP客户端）
      if (!Get.isRegistered<Dio>()) {
        Get.put<Dio>(Dio());
      }

      // 4. 初始化 TokenManager（依赖 TokenStorageService 和 Dio）
      if (!Get.isRegistered<TokenManager>()) {
        Get.put<TokenManager>(TokenManager(
          Get.find<TokenStorageService>(),
          Get.find<Dio>(),
        ));
      }

      // 5. 初始化 AuthStateManager（依赖 TokenStorageService 和 TokenManager）
      if (!Get.isRegistered<AuthStateManager>()) {
        Get.put<AuthStateManager>(AuthStateManager(
          Get.find<TokenStorageService>(),
          Get.find<TokenManager>(),
        ));
      }

      // 6. 初始化 ApiClient（使用命名参数）
      if (!Get.isRegistered<ApiClient>()) {
        Get.put<ApiClient>(ApiClient(
          tokenStorage: Get.find<TokenStorageService>(),
          tokenManager: Get.find<TokenManager>(),
          authStateManager: Get.find<AuthStateManager>(),
        ));
      }

      print('TkPayWalletBinding: 异步依赖初始化完成'); // 调试信息
    } catch (e) {
      print('TkPayWalletBinding: 异步依赖初始化失败: $e'); // 调试信息
    }
  }
}
