import 'package:get/get.dart';
import 'package:dio/dio.dart';

import '../../../core/network/api_client.dart';
import '../../../core/utils/access_token_helper.dart';
import '../../../core/constants/api_constants.dart';
import 'state.dart';
import 'models/product_models.dart';

class TkProductDetailLogic extends GetxController {
  final TkProductDetailState state = TkProductDetailState();

  @override
  void onInit() {
    super.onInit();
    
    // 从路由参数获取商品ID
    final arguments = Get.arguments as Map<String, dynamic>?;
    if (arguments != null) {
      final productId = arguments['productId'] ?? '10001';
      getProductDetail(productId);
    } else {
      // 默认使用固定ID
      getProductDetail('10001');
    }
  }

  /// 获取商品详情
  void getProductDetail(String productId) async {
    try {
      state.isLoading.value = true;
      
      final client = ApiClient(baseUrl: ApiConstants.baseUrl);
      final accessToken = await TokenAccessHelper.getAccessToken();

      print('开始获取商品详情，ID: $productId');

      final response = await client.post<Map<String, dynamic>>(
        ApiConstants.productDetail,
        data: {'id': productId},
        options: Options(headers: {'Access-Token': accessToken ?? ''}),
      );

      if (response != null) {
        print('收到商品详情响应');
        
        try {
          // 使用 freezed 模型解析响应
          final productResponse = ProductDetailResponse.fromJson(response);
          print('成功解析商品详情: ${productResponse.data?.name}');
          
          // 更新状态
          state.productDetail.value = productResponse.data;
          
          // 打印商品信息用于调试
          if (productResponse.data != null) {
            final product = productResponse.data!;
            print('商品名称: ${product.name}');
            print('商品价格: ${product.defaultPrice}');
            print('SKU数量: ${product.skus.length}');
          }
        } catch (e) {
          print('解析商品详情失败: $e');
        }
      } else {
        print('商品详情响应为空');
      }
    } catch (e) {
      print('获取商品详情失败: $e');
    } finally {
      state.isLoading.value = false;
    }
  }

  /// 选择SKU
  void selectSku(int index) {
    if (index >= 0 && state.productDetail.value != null && 
        index < state.productDetail.value!.skus.length) {
      state.selectedSkuIndex.value = index;
      final selectedSku = state.productDetail.value!.skus[index];
      print('选中SKU: ${selectedSku.name}, 价格: ${selectedSku.price}');
    }
  }

  /// 获取当前选中的SKU
  ProductSkuModel? get selectedSku {
    if (state.productDetail.value != null && 
        state.selectedSkuIndex.value >= 0 && 
        state.selectedSkuIndex.value < state.productDetail.value!.skus.length) {
      return state.productDetail.value!.skus[state.selectedSkuIndex.value];
    }
    return null;
  }
}
