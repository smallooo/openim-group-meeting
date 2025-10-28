import 'package:get/get.dart';
import 'package:flutter/foundation.dart';
import 'package:dio/dio.dart';

import '../../../core/constants/api_constants.dart';
import '../../../core/utils/access_token_helper.dart';
import 'model/guarantee_refund_order_model.dart';
import 'state.dart';

class TkGuaranteeRefundOrderLogic extends GetxController {
  final TkGuaranteeRefundOrderState state = TkGuaranteeRefundOrderState();
  
  late final Dio _dio;

  @override
  void onInit() {
    super.onInit();
    _initDio();
    loadRefundList();
  }

  void _initDio() {
    _dio = Dio(BaseOptions(
      baseUrl: ApiConstants.baseUrl,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 30),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    ));
  }

  /// 加载退款列表
  Future<void> loadRefundList() async {
    try {
      state.isLoading.value = true;

      // 获取访问令牌
      final tokenHeaders = await TokenAccessHelper.buildAccessTokenHeader();
      if (tokenHeaders.isEmpty) {
        debugPrint('[LoadRefundList] 未找到有效的访问令牌');
        Get.snackbar('错误', '请先登录');
        return;
      }

      debugPrint('[LoadRefundList] 开始请求退款列表');

      // 发送请求
      final response = await _dio.get(
        ApiConstants.refundList,
        options: Options(headers: tokenHeaders),
      );

      debugPrint('[LoadRefundList] 响应数据: ${response.data}');

      if (response.statusCode == 200) {
        final refundListResponse = RefundListResponse.fromJson(response.data);
        
        if (refundListResponse.code == 0) {
          state.refundRecords.value = refundListResponse.data.records;
          state.hasMore.value = refundListResponse.data.hasNext;
          state.currentPage.value = int.tryParse(refundListResponse.data.current) ?? 1;
          state.totalCount.value = int.tryParse(refundListResponse.data.total) ?? 0;
          
          debugPrint('[LoadRefundList] 加载成功，共${refundListResponse.data.records.length}条数据');
        } else {
          Get.snackbar('错误', refundListResponse.message);
        }
      } else {
        debugPrint('[LoadRefundList] 请求失败: ${response.statusCode}');
        Get.snackbar('错误', '加载退款列表失败');
      }
    } catch (e) {
      debugPrint('[LoadRefundList] 异常: $e');
      Get.snackbar('错误', '加载退款列表失败: ${e.toString()}');
    } finally {
      state.isLoading.value = false;
    }
  }

  /// 刷新退款列表
  Future<void> refreshRefundList() async {
    await loadRefundList();
  }
}
