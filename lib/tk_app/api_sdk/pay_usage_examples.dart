// Usage examples for toklink_pay_sdk via PaySdkAdapter
// @dart=2.12

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:toklink_pay_sdk/api.dart';

import 'pay_sdk_adapter.dart';

/// 简易日志 HTTP 客户端，用于调试请求/响应。
class LoggingClient extends http.BaseClient {
  LoggingClient(this._inner);

  final http.Client _inner;

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    final start = DateTime.now();
    final response = await _inner.send(request);
    final elapsed = DateTime.now().difference(start);
    // 仅打印方法与路径，避免输出过长的内容
    // ignore: avoid_print
    print('[HTTP] ${request.method} ${request.url} (${elapsed.inMilliseconds}ms)');
    return response;
  }
}

/// 便捷创建 PaySdkAdapter，支持 basePath、Bearer 或 API Key。
PaySdkAdapter createPaySdkAdapter({
  String? basePath,
  String? accessToken,
  String? apiKey,
  String apiKeyLocation = 'header',
  String apiKeyName = 'X-API-KEY',
  String? xProductKey,
}) {
  final httpClient = LoggingClient(http.Client());
  return PaySdkAdapter.withAuth(
    basePath: basePath,
    httpClient: httpClient,
    accessToken: accessToken,
    apiKey: apiKey,
    apiKeyLocation: apiKeyLocation,
    apiKeyName: apiKeyName,
    xProductKey: xProductKey,
  );
}

/// 示例方法集合：涵盖 NotifyData 与 PersonalPayOrder 的常用调用。
class PayUsageExamples {
  PayUsageExamples(this.adapter);

  final PaySdkAdapter adapter;

  // -------------------- NotifyData --------------------

  Future<http.Response> getNotifyDetail({required int notifyId}) {
    final dto = NotifyDetailQueryDTO(notifyId: notifyId);
    return adapter.notifyDataAppApi.getNotifyDetailWithHttpInfo(dto);
  }

  Future<http.Response> getNotifyLogs({required int notifyId}) {
    final dto = NotifyLogsQueryDTO(notifyId: notifyId);
    return adapter.notifyDataAppApi.getNotifyLogsWithHttpInfo(dto);
  }

  Future<http.Response> queryNotifyData({
    String? paymentId,
    String? orderNo,
    String? refundId,
    NotifyQueryDTONotifyTypeEnum? notifyType,
    NotifyQueryDTOStatusEnum? status,
    int? pageNum,
    int? pageSize,
  }) {
    final dto = NotifyQueryDTO(
      paymentId: paymentId,
      orderNo: orderNo,
      refundId: refundId,
      notifyType: notifyType,
      status: status,
      pageNum: pageNum,
      pageSize: pageSize,
    );
    return adapter.notifyDataAppApi.queryNotifyDataWithHttpInfo(dto);
  }

  Future<http.Response> receiveNotifyData({
    required String instOrderNo,
    required String thirdPartyOrderNo,
    required NotifyDataRequestStatusEnum status,
    required NotifyDataRequestNotifyTypeEnum notifyType,
    num? amount,
    int? currencyId,
  }) {
    final req = NotifyDataRequest(
      instOrderNo: instOrderNo,
      thirdPartyOrderNo: thirdPartyOrderNo,
      status: status,
      notifyType: notifyType,
      amount: amount,
      currencyId: currencyId,
    );
    return adapter.notifyDataAppApi.receiveNotifyDataWithHttpInfo(req);
  }

  // -------------------- PersonalPayOrder --------------------

  Future<http.Response> getPersonalOrderByOrderNo({
    required String orderNo,
  }) {
    final dto = PersonalPayOrderOrderNoQueryDTO(orderNo: orderNo);
    return adapter.personalPayOrderAppApi.getPersonalOrderByOrderNoWithHttpInfo(dto);
  }

  Future<http.Response> getPersonalOrderByPaymentId({
    required String paymentId,
  }) {
    final dto = PersonalPayOrderPaymentIdQueryDTO(paymentId: paymentId);
    return adapter.personalPayOrderAppApi.getPersonalOrderByPaymentIdWithHttpInfo(dto);
  }

  Future<http.Response> getPersonalOrderStatistics() {
    return adapter.personalPayOrderAppApi.getPersonalOrderStatisticsWithHttpInfo();
  }

  Future<http.Response> getPersonalPayOrders({
    int? pageNum,
    int? pageSize,
    PersonalPayOrderListQueryDTOPaymentMethodEnum? paymentMethod,
    PersonalPayOrderListQueryDTOStatusEnum? status,
  }) {
    final dto = PersonalPayOrderListQueryDTO(
      pageNum: pageNum,
      pageSize: pageSize,
      paymentMethod: paymentMethod,
      status: status,
    );
    return adapter.personalPayOrderAppApi.getPersonalPayOrdersWithHttpInfo(dto);
  }
}

void main() async {
  // 创建适配器（示例使用 Bearer Token，替换为你的实际 token）
  final adapter = createPaySdkAdapter(
    basePath: 'http://localhost:9996/v1',
    accessToken: 'your-access-token',
    xProductKey: 'your-product-key',
  );

  final examples = PayUsageExamples(adapter);

  // 示例：查询通知数据
  final notifyList = await examples.queryNotifyData(
    orderNo: 'ORDER-001',
    pageNum: 1,
    pageSize: 10,
  );
  // ignore: avoid_print
  print('notify list: ${notifyList.body}');

  // 示例：查询个人订单统计
  final stats = await examples.getPersonalOrderStatistics();
  // ignore: avoid_print
  print('personal stats: ${stats.body}');
}