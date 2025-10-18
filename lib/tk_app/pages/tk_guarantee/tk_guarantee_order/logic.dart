import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../../../core/constants/api_constants.dart';
import '../../../core/utils/access_token_helper.dart';
import 'model/order_list_models.dart';
import 'state.dart';

class TkGuaranteeOrderLogic extends GetxController {
  final TkGuaranteeOrderState state = TkGuaranteeOrderState();
  
  late final Dio _dio;

  @override
  void onInit() {
    super.onInit();
    _initDio();
    loadOrderList();
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

  /// 加载订单列表
  Future<void> loadOrderList({
    int current = 1,
    int size = 10,
    int? orderStatus,
    bool isRefresh = false,
  }) async {
    try {
      if (isRefresh) {
        state.isLoading.value = true;
      }

      // 获取访问令牌
      final tokenHeaders = await TokenAccessHelper.buildAccessTokenHeader();
      if (tokenHeaders.isEmpty) {
        debugPrint('[LoadOrderList] 未找到有效的访问令牌');
        Get.snackbar('错误', '请先登录');
        return;
      }

      // 构建请求参数
      final queryParams = <String, dynamic>{
        'current': current,
        'size': size,
      };
      
      if (orderStatus != null) {
        queryParams['orderStatus'] = orderStatus;
      }

      debugPrint('[LoadOrderList] 请求参数: $queryParams');

      // 发送请求
      final response = await _dio.get(
        ApiConstants.orderList,
        queryParameters: queryParams,
        options: Options(headers: tokenHeaders),
      );

      debugPrint('[LoadOrderList] 响应数据: ${response.data}');

      if (response.statusCode == 200) {
        final orderListResponse = OrderListResponse.fromJson(response.data);
        
        if (orderListResponse.errCode == 0) {
          if (isRefresh || current == 1) {
            // 刷新或首次加载，替换数据
            state.orderRecords.value = orderListResponse.data.records;
          } else {
            // 加载更多，追加数据
            state.orderRecords.addAll(orderListResponse.data.records);
          }
          
          state.hasMore.value = orderListResponse.data.hasNext;
          state.currentPage.value = int.tryParse(orderListResponse.data.current) ?? 1;
          state.totalCount.value = int.tryParse(orderListResponse.data.total) ?? 0;
          
          debugPrint('[LoadOrderList] 加载成功，共${orderListResponse.data.records.length}条数据');
        } else {
          Get.snackbar('错误', orderListResponse.errMsg);
        }
      } else {
        debugPrint('[LoadOrderList] 请求失败: ${response.statusCode}');
        Get.snackbar('错误', '加载订单列表失败');
      }
    } catch (e) {
      debugPrint('[LoadOrderList] 异常: $e');
      Get.snackbar('错误', '加载订单列表失败: ${e.toString()}');
    } finally {
      state.isLoading.value = false;
    }
  }

  /// 刷新订单列表
  Future<void> refreshOrderList() async {
    await loadOrderList(isRefresh: true);
  }

  /// 加载更多订单
  Future<void> loadMoreOrders() async {
    if (state.hasMore.value && !state.isLoading.value) {
      await loadOrderList(
        current: state.currentPage.value + 1,
        size: ApiConstants.defaultPageSize,
      );
    }
  }

  /// 根据状态筛选订单
  void filterOrdersByStatus(OrderStatusFilter filter) {
    state.currentFilter.value = filter;
    
    // 根据筛选条件重新加载数据
    final statusValues = filter.statusValues;
    if (statusValues == null || statusValues.isEmpty) {
      // 加载全部订单
      loadOrderList(isRefresh: true);
    } else if (statusValues.length == 1) {
      // 加载特定状态的订单
      loadOrderList(orderStatus: statusValues.first, isRefresh: true);
    } else {
      // 多个状态需要在本地筛选，先加载全部数据
      loadOrderList(isRefresh: true);
    }
  }

  /// 获取筛选后的订单列表
  List<OrderRecord> getFilteredOrders() {
    final filter = state.currentFilter.value;
    final allOrders = state.orderRecords;
    
    if (filter == OrderStatusFilter.all) {
      return allOrders;
    }
    
    final statusValues = filter.statusValues;
    if (statusValues == null || statusValues.isEmpty) {
      return allOrders;
    }
    
    return allOrders.where((order) => statusValues.contains(order.orderStatus)).toList();
  }
}
