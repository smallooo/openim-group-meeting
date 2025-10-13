import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../features/strategy/data/repositories/strategy_repository.dart';
import '../../../core/network/api_client.dart';
import '../../../core/services/token_storage_service.dart';
import '../../../core/services/token_manager.dart';
import '../../../core/services/auth_state_manager.dart';
import 'logic.dart';

class StrategySubscriptionBinding extends Bindings {
  @override
  void dependencies() {
    // 使用单一的异步初始化链来避免时序问题
    _initializeAsyncDependencies();
    
    // 同步注册 Logic，因为它会异步等待依赖
    Get.lazyPut(() => StrategySubscriptionLogic());
  }
  
  /// 初始化所有异步依赖的方法
  /// 确保按正确的顺序初始化所有相互依赖的服务
  void _initializeAsyncDependencies() {
    Get.putAsync<SharedPreferences>(() async {
      // 1. 首先初始化 SharedPreferences
      final prefs = await SharedPreferences.getInstance();
      
      // 2. 初始化 TokenStorageService
      final tokenStorage = TokenStorageService(prefs);
      Get.put<TokenStorageService>(tokenStorage);
      
      // 3. 初始化 Dio
      final dio = Dio();
      Get.put<Dio>(dio);
      
      // 4. 初始化 TokenManager
      final tokenManager = TokenManager(tokenStorage, dio);
      Get.put<TokenManager>(tokenManager);
      
      // 5. 初始化 AuthStateManager
      final authStateManager = AuthStateManager(tokenStorage, tokenManager);
      Get.put<AuthStateManager>(authStateManager);
      
      // 6. 初始化 ApiClient
      final apiClient = ApiClient(
        tokenStorage: tokenStorage,
        tokenManager: tokenManager,
        authStateManager: authStateManager,
      );
      Get.put<ApiClient>(apiClient);
      
      // 7. 初始化 StrategyRepository
      final strategyRepository = StrategyRepository(apiClient);
      Get.put<StrategyRepository>(strategyRepository);
      
      return prefs;
    });
  }
}
