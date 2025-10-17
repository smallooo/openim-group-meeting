import 'package:http/http.dart' as http;
import 'package:toklink_order_sdk/api.dart';

/// Order SDK 适配器：封装 ApiClient 与各模块 API
class OrderSdkAdapter {
  final ApiClient apiClient;
  final OrderAppApi orderAppApi;
  final OrderReviewAppApi orderReviewAppApi;
  final RefundAppApi refundAppApi;
  final PaymentCallbackAppApi paymentCallbackAppApi;

  OrderSdkAdapter._(this.apiClient)
      : orderAppApi = OrderAppApi(apiClient),
        orderReviewAppApi = OrderReviewAppApi(apiClient),
        refundAppApi = RefundAppApi(apiClient),
        paymentCallbackAppApi = PaymentCallbackAppApi(apiClient);

  /// 基础构造：仅设置 basePath / httpClient / 默认头
  factory OrderSdkAdapter({
    String basePath = 'http://localhost:9995/v1',
    http.Client? httpClient,
    Map<String, String>? defaultHeaders,
    Authentication? authentication,
  }) {
    final client = ApiClient(
      basePath: basePath,
      authentication: authentication,
    );
    // 与 Strategy 适配器保持一致的默认 JSON 头
    client.addDefaultHeader('Content-Type', 'application/json');
    client.addDefaultHeader('Accept', 'application/json');
    if (httpClient != null) {
      client.client = httpClient;
    }
    if (defaultHeaders != null && defaultHeaders.isNotEmpty) {
      defaultHeaders.forEach(client.addDefaultHeader);
    }
    return OrderSdkAdapter._(client);
  }

  /// 便捷构造：支持 Bearer 与 API Key，附加产品标识头
  factory OrderSdkAdapter.withAuthTokens({
    String basePath = 'http://localhost:9995/v1',
    String? apiKey,
    String apiKeyHeaderName = 'X-API-KEY',
    String? bearerToken,
    String? productKey,
    String productKeyHeaderName = 'X-PRODUCT-KEY',
    http.Client? httpClient,
  }) {
    Authentication? auth;
    if (bearerToken != null && bearerToken.isNotEmpty) {
      final bearer = HttpBearerAuth();
      bearer.accessToken = bearerToken;
      auth = bearer;
    } else if (apiKey != null && apiKey.isNotEmpty) {
      final keyAuth = ApiKeyAuth('header', apiKeyHeaderName);
      keyAuth.apiKey = apiKey;
      auth = keyAuth;
    }
    final client = ApiClient(
      basePath: basePath,
      authentication: auth,
    );
    // 与 Strategy 适配器保持一致的默认 JSON 头
    client.addDefaultHeader('Content-Type', 'application/json');
    client.addDefaultHeader('Accept', 'application/json');
    if (httpClient != null) {
      client.client = httpClient;
    }
    if (productKey != null && productKey.isNotEmpty) {
      client.addDefaultHeader(productKeyHeaderName, productKey);
    }
    return OrderSdkAdapter._(client);
  }

  /// 添加默认头（例如自定义 TraceId）
  void addDefaultHeader(String key, String value) {
    apiClient.addDefaultHeader(key, value);
  }
}