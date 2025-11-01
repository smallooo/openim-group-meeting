import 'package:dio/dio.dart';

import '../../../../core/network/api_client.dart';
import '../../../../core/constants/api_constants.dart';
import '../models/product_models.dart';
import '../../../../shared/models/version/check_version.dart';

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

  /// 申请退款
  /// 
  /// 调用 /order/app/refund/apply 接口
  /// 提交退款申请
  /// 
  /// 参数说明：
  /// - request: 退款申请请求参数，包含订单ID、退款类型、退款金额、退款原因
  /// 
  /// 返回值说明：
  /// - errCode: 0表示成功，其他值表示错误
  /// - errMsg: 错误信息，成功时为"success"
  /// - data: 退款申请数据，包含退款单号、状态等信息
  Future<RefundApplyResponse> applyRefund(RefundApplyRequest request) async {
    print('ProductRepository: 开始调用API申请退款...'); // 调试信息
    
    try {
      // 获取原始JSON数据
      final rawResponse = await _apiClient.post<Map<String, dynamic>>(
        ApiConstants.refundApply,
        data: request.toJson(),
      );
      
      print('ProductRepository: 原始API响应: $rawResponse'); // 调试信息
      
      // 手动解析响应
      final response = RefundApplyResponse.fromJson(rawResponse);
      
      print('ProductRepository: 解析后的响应 - errCode: ${response.errCode}, errMsg: ${response.errMsg}'); // 调试信息
      
      return response;
    } catch (e) {
      print('ProductRepository: 申请退款失败: $e'); // 调试信息
      rethrow;
    }
  }
  
  /// 获取退款列表
  /// 
  /// 调用 /order/app/refund/list 接口
  /// 获取退款订单列表
  /// 
  /// 返回值说明：
  /// - code: 0表示成功，其他值表示错误
  /// - message: 错误信息，成功时为"success"
  /// - data: 退款列表数据，包含退款信息和分页信息
  Future<Map<String, dynamic>> getRefundList() async {
    print('ProductRepository: 开始调用API获取退款列表...'); // 调试信息
    
    try {
      // 获取原始JSON数据
      final rawResponse = await _apiClient.get<Map<String, dynamic>>(
        ApiConstants.refundList,
      );
      
      print('ProductRepository: 原始API响应: $rawResponse'); // 调试信息
      
      return rawResponse;
    } catch (e) {
      print('ProductRepository: 获取退款列表失败: $e'); // 调试信息
      rethrow;
    }
  }

  /// 获取退款详情
  ///
  /// 调用 /order/app/refund/{refundNo} 接口（需要登录）
  /// 使用 x-www-form-urlencoded 数据格式
  Future<Map<String, dynamic>> getRefundDetail(String refundNo) async {
    print('ProductRepository: 开始调用API获取退款详情: $refundNo');
    try {
      final path = ApiConstants.refundDetail.replaceAll('{refundNo}', refundNo);
      final rawResponse = await _apiClient.get<Map<String, dynamic>>(
        path,
        options: Options(contentType: Headers.formUrlEncodedContentType),
      );
      print('ProductRepository: 退款详情原始API响应: $rawResponse');
      return rawResponse;
    } catch (e) {
      print('ProductRepository: 获取退款详情失败: $e');
      rethrow;
    }
  }

  /// 撤销退款申请（需要登录）
  /// 使用 x-www-form-urlencoded 数据格式
  Future<Map<String, dynamic>> cancelRefund(String refundNo) async {
    print('ProductRepository: 撤销退款申请: $refundNo');
    try {
      final path = ApiConstants.refundCancel.replaceAll('{refundNo}', refundNo);
      final rawResponse = await _apiClient.post<Map<String, dynamic>>(
        path,
        // 无请求体，显式使用 <String,dynamic>{} 以满足 Dio 编码要求
        data: const <String, dynamic>{},
        options: Options(contentType: Headers.formUrlEncodedContentType),
      );
      print('ProductRepository: 撤销退款响应: $rawResponse');
      return rawResponse;
    } catch (e) {
      print('ProductRepository: 撤销退款失败: $e');
      rethrow;
    }
  }

  /// 审核退款接口（需要登录）
  /// 使用 JSON 数据格式
  Future<Map<String, dynamic>> approveRefund(String refundNo, String result) async {
    print('ProductRepository: 审核退款申请: $refundNo, result: $result');
    try {
      final requestData = {
        'refundNo': refundNo,
        'result': result,
      };
      final rawResponse = await _apiClient.post<Map<String, dynamic>>(
        ApiConstants.refundApprove,
        data: requestData,
        options: Options(contentType: Headers.jsonContentType),
      );
      print('ProductRepository: 审核退款响应: $rawResponse');
      return rawResponse;
    } catch (e) {
      print('ProductRepository: 审核退款失败: $e');
      rethrow;
    }
  }

  /// 确认退款接口（需要登录）
  /// 使用 JSON 数据格式 (raw JSON)
  Future<Map<String, dynamic>> confirmRefund({
    required String refundNo,
    required int sellerId,
    required double refundAmount,
    String confirmRemark = '商家确认退款，已向用户转账',
    String refundMethod = '原路退回',
  }) async {
    print('ProductRepository: 确认退款: $refundNo, sellerId: $sellerId, refundAmount: $refundAmount');
    try {
      final requestData = {
        'refundNo': refundNo,
        'sellerId': sellerId,
        'confirmRemark': confirmRemark,
        'refundAmount': refundAmount,
        'refundMethod': refundMethod,
      };
      final rawResponse = await _apiClient.post<Map<String, dynamic>>(
        ApiConstants.refundConfirm,
        data: requestData,
        options: Options(contentType: Headers.jsonContentType),
      );
      print('ProductRepository: 确认退款响应: $rawResponse');
      return rawResponse;
    } catch (e) {
      print('ProductRepository: 确认退款失败: $e');
      rethrow;
    }
  }

  /// 检查应用更新接口（不需要登录）
  /// 使用 raw JSON 数据格式
  /// 
  /// 参数说明：
  /// - request: 检查更新请求参数，包含包名、平台、当前版本号
  /// 
  /// 返回值说明：
  /// - code: 0表示成功，其他值表示错误
  /// - message: 响应消息
  /// - ok: 是否成功
  /// - data: 更新信息，包含是否有更新、是否强制更新、最新版本号、下载地址等
  Future<CheckUpdateResponse> checkAppUpdate(CheckUpdateRequest request) async {
    print('ProductRepository: 开始调用API检查应用更新...');
    print('ProductRepository: 请求URL: ${ApiConstants.baseUrl}${ApiConstants.checkAppUpdate}');
    print('ProductRepository: 请求参数: ${request.toJson()}');
    
    try {
      // 该接口不需要登录，使用 Dio 直接发送请求
      final dio = Dio(BaseOptions(
        baseUrl: ApiConstants.baseUrl,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ));

      print('ProductRepository: 准备发送POST请求...');
      
      // 发送 POST 请求（使用 raw JSON）
      final response = await dio.post<Map<String, dynamic>>(
        ApiConstants.checkAppUpdate,
        data: request.toJson(),
        options: Options(contentType: Headers.jsonContentType),
      );

      print('ProductRepository: 收到API响应');
      print('ProductRepository: 响应状态码: ${response.statusCode}');
      print('ProductRepository: 检查更新原始API响应: ${response.data}');

      if (response.data == null) {
        print('ProductRepository: 错误 - 响应数据为空');
        throw Exception('响应数据为空');
      }

      // 手动解析响应（因为响应格式是 { "code", "message", "ok", "data" }）
      final rawResponse = response.data!;
      print('ProductRepository: 原始响应数据: $rawResponse');
      
      // 检查业务错误码
      final code = rawResponse['code'] as int? ?? -1;
      print('ProductRepository: 响应code: $code');
      
      if (code != 0) {
        final message = rawResponse['message'] ?? "Unknown error";
        print('ProductRepository: 错误 - code不为0: $code, message: $message');
        throw Exception('检查更新失败: $message');
      }

      print('ProductRepository: 开始解析响应数据...');
      
      // 解析响应
      CheckUpdateResponse checkUpdateResponse;
      try {
        checkUpdateResponse = CheckUpdateResponse.fromJson(rawResponse);
        print('ProductRepository: 解析成功');
      } catch (e, stackTrace) {
        print('ProductRepository: 解析失败: $e');
        print('ProductRepository: 解析堆栈: $stackTrace');
        rethrow;
      }
      
      print('ProductRepository: 解析后的响应 - code: ${checkUpdateResponse.code}, hasUpdate: ${checkUpdateResponse.data.hasUpdate}');
      print('ProductRepository: 准备返回响应对象...');
      
      return checkUpdateResponse;
    } on DioException catch (e) {
      print('ProductRepository: DioException - 检查应用更新失败');
      print('ProductRepository: 错误类型: ${e.type}');
      print('ProductRepository: 错误消息: ${e.message}');
      print('ProductRepository: 响应数据: ${e.response?.data}');
      print('ProductRepository: 状态码: ${e.response?.statusCode}');
      rethrow;
    } catch (e, stackTrace) {
      print('ProductRepository: Exception - 检查应用更新失败: $e');
      print('ProductRepository: 堆栈: $stackTrace');
      rethrow;
    }
  }
}