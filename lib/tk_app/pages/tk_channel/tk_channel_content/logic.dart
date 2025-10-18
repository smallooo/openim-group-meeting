import 'package:get/get.dart';

import '../../../core/network/api_client.dart';
import '../../../core/services/auth_state_manager.dart';
import '../../../core/services/token_manager.dart';
import '../../../core/services/token_storage_service.dart';
import '../../../features/product/data/models/product_models.dart';
import '../../../features/product/data/repositories/product_repository.dart';
import 'state.dart';


class TkChannelContentLogic extends GetxController {
  final TkChannelContentState state = TkChannelContentState();
  late final ProductRepository _productRepository;

  @override
  void onInit() {
    super.onInit();
    _waitForDependenciesAndInitialize();
  }

  /// 等待依赖服务注册并初始化
  Future<void> _waitForDependenciesAndInitialize() async {
    int attempts = 0;
    const maxAttempts = 20; // 最多等待2秒
    
    while (attempts < maxAttempts) {
      try {
        if (Get.isRegistered<TokenStorageService>() && 
            Get.isRegistered<TokenManager>() && 
            Get.isRegistered<AuthStateManager>()) {
          print('TkChannelContentLogic: 依赖服务已注册，开始初始化...');
          
          // 初始化 ApiClient 和仓库
          final apiClient = ApiClient(
            tokenStorage: Get.find<TokenStorageService>(),
            tokenManager: Get.find<TokenManager>(),
            authStateManager: Get.find<AuthStateManager>(),
          );
          _productRepository = ProductRepository(apiClient);
          
          // 从路由参数获取频道信息
          final arguments = Get.arguments as Map<String, dynamic>?;
          if (arguments != null) {
            state.channelName.value = arguments['channelName'] ?? '';
            state.categoryId.value = arguments['categoryId'] ?? '';
            state.categoryName.value = arguments['categoryName'] ?? '';
            
            print('接收到频道信息: ${state.channelName.value} - ${state.categoryName.value}');
            
            // 加载商品列表
            loadProductList();
          }
          return;
        }
      } catch (e) {
        print('TkChannelContentLogic: 等待依赖服务时出错: $e');
      }
      
      attempts++;
      await Future.delayed(const Duration(milliseconds: 100));
    }
    
    print('TkChannelContentLogic: 等待依赖服务超时');
  }

  /// 加载商品列表
  Future<void> loadProductList() async {
    if (state.categoryId.value.isEmpty) return;
    
    try {
      state.isLoadingProducts.value = true;
      state.hasError.value = false;
      
      final request = ProductListRequest(
        categoryId: int.parse(state.categoryId.value),
        page: 1,
        size: 20,
      );
      
      final response = await _productRepository.getProductList(request);
      
      if (response.errCode == 0) {
        state.productList.value = response.data.list;
        print('商品列表加载成功，共 ${response.data.list.length} 个商品');
      } else {
        state.hasError.value = true;
        print('商品列表加载失败: ${response.errMsg}');
      }
    } catch (e) {
      state.hasError.value = true;
      print('商品列表加载异常: $e');
    } finally {
      state.isLoadingProducts.value = false;
    }
  }
}
