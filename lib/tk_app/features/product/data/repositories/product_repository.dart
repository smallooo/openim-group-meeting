import '../../../../core/network/api_client.dart';
import '../../../../core/constants/api_constants.dart';
import '../models/product_models.dart';

/// 产品数据仓库
/// 
/// 负责处理产品相关的API调用，包括商品列表查询等功能
class ProductRepository {
  final ApiClient _apiClient;

  ProductRepository(this._apiClient);

  /// 获取商品列表
  /// 
  /// 调用 /product/app/product/list 接口
  /// 根据分类ID获取商品列表
  /// 
  /// 参数说明：
  /// - request: 商品列表请求参数，包含分类ID、页码、页面大小
  /// 
  /// 返回值说明：
  /// - errCode: 0表示成功，其他值表示错误
  /// - errMsg: 错误信息，成功时为"success"
  /// - data: 商品列表数据，包含商品信息和分页信息
  Future<ProductListResponse> getProductList(ProductListRequest request) async {
    print('ProductRepository: 开始调用API获取商品列表...'); // 调试信息
    
    try {
      // 获取原始JSON数据
      final rawResponse = await _apiClient.post<Map<String, dynamic>>(
        ApiConstants.productList,
        data: request.toJson(),
      );
      
      print('ProductRepository: 原始API响应: $rawResponse'); // 调试信息
      
      // 手动解析响应
      final response = ProductListResponse.fromJson(rawResponse);
      
      print('ProductRepository: 解析后的响应 - errCode: ${response.errCode}, errMsg: ${response.errMsg}'); // 调试信息
      print('ProductRepository: 商品数量: ${response.data.list.length}'); // 调试信息
      
      return response;
    } catch (e) {
      print('ProductRepository: 获取商品列表失败: $e'); // 调试信息
      rethrow;
    }
  }
}