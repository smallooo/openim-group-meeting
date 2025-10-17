import 'package:toklink_product_sdk/api.dart';

class ProductSdkAdapter {
  final ApiClient _client;

  ProductSdkAdapter({
    required String baseUrl,
    String? bearerToken,
    String? accessToken,
    String? xTimestamp,
    String? xNonce,
    String? xSignature,
  }) : _client = ApiClient(basePath: baseUrl) {
    if (bearerToken != null && bearerToken.isNotEmpty) {
      _client.addDefaultHeader('Authorization', 'Bearer $bearerToken');
    }
    if (accessToken != null && accessToken.isNotEmpty) {
      _client.addDefaultHeader('Access-Token', accessToken);
    }
    if (xTimestamp != null) _client.addDefaultHeader('X-Timestamp', xTimestamp);
    if (xNonce != null) _client.addDefaultHeader('X-Nonce', xNonce);
    if (xSignature != null) _client.addDefaultHeader('X-Signature', xSignature);
  }

  /// 暴露 Product 服务 API
  ProductAppApi product() => ProductAppApi(_client);
}