import 'package:http/http.dart' as http;
import 'package:toklink_strategy_sdk/api.dart';

/// Strategy SDK 适配器：统一初始化 ApiClient 并暴露各模块 API
class StrategySdkAdapter {
  final ApiClient _client;

  StrategySdkAdapter({
    required String baseUrl,
    String? bearerToken,
    String? accessToken,
    String? xTimestamp,
    String? xNonce,
    String? xSignature,
    http.Client? httpClient,
  }) : _client = ApiClient(basePath: baseUrl) {
    // 认证头（二选一或同时）
    if (bearerToken != null && bearerToken.isNotEmpty) {
      _client.addDefaultHeader('Authorization', 'Bearer $bearerToken');
    }
    if (accessToken != null && accessToken.isNotEmpty) {
      _client.addDefaultHeader('Access-Token', accessToken);
    }

    // 可选签名/时间戳头
    if (xTimestamp != null && xTimestamp.isNotEmpty) {
      _client.addDefaultHeader('X-Timestamp', xTimestamp);
    }
    if (xNonce != null && xNonce.isNotEmpty) {
      _client.addDefaultHeader('X-Nonce', xNonce);
    }
    if (xSignature != null && xSignature.isNotEmpty) {
      _client.addDefaultHeader('X-Signature', xSignature);
    }

    // 常规头
    _client.addDefaultHeader('Content-Type', 'application/json');
    _client.addDefaultHeader('Accept', 'application/json');

    // 可选注入自定义 HTTP 客户端（用于日志等）
    if (httpClient != null) {
      _client.client = httpClient;
    }
  }

  // ============== 模块 API 暴露 ==============

  /// 策略主模块 API
  StrategyAppApi strategy() => StrategyAppApi(_client);

  /// 关注关系 API
  FollowAppApi follow() => FollowAppApi(_client);

  /// 交易员相关 API
  TraderAppApi trader() => TraderAppApi(_client);

  /// 订阅相关 API
  SubscriptionAppApi subscription() => SubscriptionAppApi(_client);

  /// 交易员观点相关 API
  TraderOpinionAppApi traderOpinion() => TraderOpinionAppApi(_client);

  /// 交易员定价相关 API
  TraderSubscriptionPricingAppApi traderPricing() =>
      TraderSubscriptionPricingAppApi(_client);

  /// 策略评论相关 API
  StrategyCommentAppApi strategyComment() => StrategyCommentAppApi(_client);

  /// 策略评分相关 API
  StrategyRatingAppApi strategyRating() => StrategyRatingAppApi(_client);

  /// 添加默认头（例如自定义 TraceId）
  void addDefaultHeader(String key, String value) {
    _client.addDefaultHeader(key, value);
  }
}