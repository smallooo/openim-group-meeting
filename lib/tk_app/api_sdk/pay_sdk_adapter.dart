// Adapter for toklink_pay_sdk: wraps ApiClient and exposes typed APIs
// @dart=2.12

import 'package:http/http.dart' as http;
import 'package:toklink_pay_sdk/api.dart';

/// PaySdkAdapter 封装 toklink_pay_sdk 的 ApiClient 与认证配置，并暴露业务 API。
class PaySdkAdapter {
  PaySdkAdapter._(this.apiClient)
      : notifyDataAppApi = NotifyDataAppApi(apiClient),
        personalPayOrderAppApi = PersonalPayOrderAppApi(apiClient);

  /// 底层客户端
  final ApiClient apiClient;

  /// 通知数据相关 API
  final NotifyDataAppApi notifyDataAppApi;

  /// 个人支付订单相关 API
  final PersonalPayOrderAppApi personalPayOrderAppApi;

  /// 创建无认证的实例，可定制 `basePath`、`httpClient` 与默认请求头。
  factory PaySdkAdapter({
    String? basePath,
    http.Client? httpClient,
    Map<String, String>? defaultHeaders,
  }) {
    final client = ApiClient(
      basePath: basePath ?? defaultApiClient.basePath,
      authentication: null,
    );

    if (httpClient != null) {
      client.client = httpClient;
    }
    if (defaultHeaders != null) {
      defaultHeaders.forEach(client.addDefaultHeader);
    }

    return PaySdkAdapter._(client);
  }

  /// 创建带认证的实例，支持 Bearer Token 或 API Key。
  /// - `accessToken`: 设置为 Bearer Token（Authorization: Bearer <token>）
  /// - `apiKey`: 配合 `apiKeyLocation`/`apiKeyName` 设置 API Key 的位置与名字
  /// - `xProductKey`: 业务可选头，如需统一加入 `X-PRODUCT-KEY`
  factory PaySdkAdapter.withAuth({
    String? basePath,
    http.Client? httpClient,
    String? accessToken,
    String? apiKey,
    String apiKeyLocation = 'header', // 'query' | 'header' | 'cookie'
    String apiKeyName = 'X-API-KEY',
    String? xProductKey,
  }) {
    Authentication? auth;

    if (accessToken != null && accessToken.isNotEmpty) {
      final bearer = HttpBearerAuth()..accessToken = accessToken;
      auth = bearer;
    } else if (apiKey != null && apiKey.isNotEmpty) {
      final keyAuth = ApiKeyAuth(apiKeyLocation, apiKeyName)
        ..apiKey = apiKey;
      auth = keyAuth;
    }

    final client = ApiClient(
      basePath: basePath ?? defaultApiClient.basePath,
      authentication: auth,
    );

    if (httpClient != null) {
      client.client = httpClient;
    }
    if (xProductKey != null && xProductKey.isNotEmpty) {
      client.addDefaultHeader('X-PRODUCT-KEY', xProductKey);
    }

    return PaySdkAdapter._(client);
  }

  /// 追加默认请求头（后续所有请求都会携带）。
  void addDefaultHeader(String key, String value) {
    apiClient.addDefaultHeader(key, value);
  }
}