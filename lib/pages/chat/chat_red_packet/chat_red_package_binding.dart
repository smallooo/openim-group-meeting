import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toklink/pages/chat/chat_red_packet/chat_red_package_logic.dart';
import 'package:toklink/tk_app/core/network/api_client.dart';
import 'package:toklink/tk_app/core/services/auth_state_manager.dart';
import 'package:toklink/tk_app/core/services/token_manager.dart';
import 'package:toklink/tk_app/core/services/token_storage_service.dart';


class ChatRedPacketBinding extends Bindings {
  @override
  void dependencies() {
     // 异步初始化依赖
    _initializeAsyncDependencies();
    
    Get.lazyPut(() => ChatRedPacketLogic());
  }


  // 初始化异步依赖
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