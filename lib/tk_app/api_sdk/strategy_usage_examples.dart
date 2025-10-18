import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:toklink_strategy_sdk/api.dart';
import 'strategy_sdk_adapter.dart';

/// 简易 HTTP 日志客户端：打印请求/响应的详细信息
class LoggingClient extends http.BaseClient {
  final http.Client _inner;
  final bool logRequestBody;
  final bool logResponseBody;

  LoggingClient(
    this._inner, {
    this.logRequestBody = true,
    this.logResponseBody = true,
  });

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    // 打印请求
    print('================ HTTP REQUEST ================');
    print('Method : ${request.method}');
    print('URL    : ${request.url}');
    print('Headers: ${jsonEncode(request.headers)}');
    if (logRequestBody) {
      try {
        if (request is http.Request) {
          final body = request.body;
          print('Body   : ${body.isEmpty ? '<empty>' : body}');
        } else if (request is http.MultipartRequest) {
          print('Multipart fields: ${request.fields}');
          print('Multipart files : ${request.files.map((f) => f.filename).toList()}');
        } else {
          print('Body   : <streamed or unknown type>');
        }
      } catch (e) {
        print('Body   : <failed to read body: $e>');
      }
    }

    // 发送请求并读取响应（复制响应流以便后续调用仍可读取）
    final streamed = await _inner.send(request);
    List<int> bytes = <int>[];
    try {
      bytes = await http.ByteStream(streamed.stream).toBytes();
    } catch (e) {
      print('WARN: failed to read response stream: $e');
    }

    // 打印响应
    print('================ HTTP RESPONSE ===============');
    print('Status : ${streamed.statusCode}');
    print('Headers: ${jsonEncode(streamed.headers)}');
    if (logResponseBody) {
      try {
        final bodyStr = bytes.isEmpty ? '' : utf8.decode(bytes);
        print('Body   : ${bodyStr.isEmpty ? '<empty>' : bodyStr}');
      } catch (_) {
        print('Body   : <${bytes.length} bytes>');
      }
    }
    print('==============================================');

    return http.StreamedResponse(
      Stream<List<int>>.fromIterable(bytes.isEmpty ? [] : [bytes]),
      streamed.statusCode,
      contentLength: streamed.contentLength,
      request: streamed.request,
      headers: streamed.headers,
      isRedirect: streamed.isRedirect,
      persistentConnection: streamed.persistentConnection,
      reasonPhrase: streamed.reasonPhrase,
    );
  }
}

/// 便捷创建 StrategySdkAdapter，统一日志客户端与默认头风格（与 Order 示例一致）
StrategySdkAdapter createStrategySdkAdapter({
  String baseUrl = 'https://gw.trunk.toklink.io/strategy',
  String? bearerToken,
  String? accessToken,
  Map<String, String>? defaultHeaders,
}) {
  final adapter = StrategySdkAdapter(
    baseUrl: baseUrl,
    bearerToken: bearerToken,
    accessToken: accessToken,
    httpClient: LoggingClient(http.Client()),
  );
  // 统一默认 JSON 头（与 Order 示例保持一致）
  adapter.addDefaultHeader('Content-Type', 'application/json');
  adapter.addDefaultHeader('Accept', 'application/json');
  if (defaultHeaders != null && defaultHeaders.isNotEmpty) {
    defaultHeaders.forEach(adapter.addDefaultHeader);
  }
  return adapter;
}

/// 入口示例：按需选择并执行各接口演示
Future<void> main() async {
  // 将 baseUrl 替换为你的真实网关地址
  // 例如：生产/测试网关 https://gw.trunk.toklink.io/api/strategy
  final adapter = createStrategySdkAdapter(
    baseUrl: 'https://gw.trunk.toklink.io/strategy',
    defaultHeaders: const {
      // 认证头（二选一或同时）
      'Access-Token': '96b856c9-13ea-45f6-a6e2-b184735dc539',
      // 'Authorization': 'Bearer your_jwt_token',
    },
  );

  // API 实例（通过适配器统一暴露，与 Order 示例风格一致）
  final strategyApi = adapter.strategy();
  final followApi = adapter.follow();
  final traderApi = adapter.trader();
  final subscriptionApi = adapter.subscription();
  final opinionApi = adapter.traderOpinion();
  final pricingApi = adapter.traderPricing();
  final commentApi = adapter.strategyComment();
  final ratingApi = adapter.strategyRating();

  // // 策略主模块
  // await exampleGetTrendingStrategies(strategyApi);
  // await exampleGetStrategyDetail(strategyApi, strategyId: 1001);
  //
  // // 关注模块
  // await exampleCheckFollowStatus(followApi, traderId: 2001);
  // await exampleFollowTrader(followApi, traderId: 2001);
  // await exampleUnfollowTrader(followApi, traderId: 2001);

  // 交易员模块
  // await exampleCheckTraderStatus(traderApi);

  // // 订阅模块
  // await exampleCheckSubscription(subscriptionApi, traderId: 1973017414652776449);
  // await exampleCheckSubscriptionStatus(subscriptionApi, traderId: 2001);
  // await exampleCheckSubscriptionByType(subscriptionApi, traderId: 2001, strategyType: 'grid');
  await exampleSubscribeTraderWithHttpInfo(subscriptionApi,traderId: 1977659186978529282);

  //
  // // 交易员观点模块
  // await exampleGetOpinionsByTrader(opinionApi, traderId: 2001);
  // await exampleCountOpinionsByTrader(opinionApi, traderId: 2001);
  // await exampleLikeOpinion(opinionApi, opinionId: 3001);
  // await exampleUnlikeOpinion(opinionApi, opinionId: 3001);
  //
  // // 交易员定价模块
  // await exampleGetTraderPricing(pricingApi, traderId: 2001);
  //
  // // 策略评论与评分
  // await exampleGetStrategyComments(commentApi, strategyId: 1001);
  // await exampleGetStrategyRatings(ratingApi, strategyId: 1001);
}

// =============== 策略主模块 ===============
Future<void> exampleGetTrendingStrategies(StrategyAppApi api) async {
  try {
    print('请求热门策略');
    final resp = await api.getTrendingStrategies(TrendingStrategyQueryDTO());
    print('✅ 成功: ${resp?.toJson()}');
  } catch (e) {
    print('❌ 失败: $e');
  }
}

Future<void> exampleGetStrategyDetail(StrategyAppApi api, {required int strategyId}) async {
  try {
    print('请求策略详情: strategyId=$strategyId');
    final resp = await api.getStrategyDetail(strategyId);
    print('✅ 成功: ${resp?.toJson()}');
  } catch (e) {
    print('❌ 失败: $e');
  }
}

// =============== 关注模块 ===============
Future<void> exampleCheckFollowStatus(FollowAppApi api, {required int traderId}) async {
  try {
    print('检查关注状态: traderId=$traderId');
    final resp = await api.checkFollowStatus(traderId);
    print('✅ 成功: ${resp?.toJson()}');
  } catch (e) {
    print('❌ 失败: $e');
  }
}

Future<void> exampleFollowTrader(FollowAppApi api, {required int traderId}) async {
  try {
    print('关注交易员: traderId=$traderId');
    final resp = await api.followTrader(traderId);
    print('✅ 成功: ${resp?.toJson()}');
  } catch (e) {
    print('❌ 失败: $e');
  }
}

Future<void> exampleUnfollowTrader(FollowAppApi api, {required int traderId}) async {
  try {
    print('取消关注交易员: traderId=$traderId');
    final resp = await api.unfollowTrader(traderId);
    print('✅ 成功: ${resp?.toJson()}');
  } catch (e) {
    print('❌ 失败: $e');
  }
}

// =============== 交易员模块 ===============
Future<void> exampleCheckTraderStatus(TraderAppApi api) async {
  try {
    print('检查交易员状态');
    final resp = await api.checkTraderStatus();
    print('✅ 成功: ${resp?.toJson()}');
  } catch (e) {
    print('❌ 失败: $e');
  }
}

// =============== 订阅模块 ===============
Future<void> exampleCheckSubscription(SubscriptionAppApi api, {required int traderId}) async {
  try {
    print('检查订阅资格: traderId=$traderId');
    final dto = SubscriptionCheckDTO(memberId: 1977672558140461058, traderId: traderId);
    final resp = await api.checkSubscription(dto);
    print('✅ 成功: ${resp?.toJson()}');
  } catch (e) {
    print('❌ 失败: $e');
  }
}

Future<void> exampleCheckSubscriptionStatus(SubscriptionAppApi api, {required int traderId}) async {
  try {
    print('检查订阅状态: traderId=$traderId');
    final resp = await api.checkSubscriptionStatus(traderId);
    print('✅ 成功: ${resp?.toJson()}');
  } catch (e) {
    print('❌ 失败: $e');
  }
}

Future<void> exampleCheckSubscriptionByType(SubscriptionAppApi api, {required int traderId, required String strategyType}) async {
  try {
    print('按策略类型检查订阅状态: traderId=$traderId, type=$strategyType');
    final resp = await api.checkSubscriptionStatusByStrategyType(traderId, strategyType);
    print('✅ 成功: ${resp?.toJson()}');
  } catch (e) {
    print('❌ 失败: $e');
  }
}

/// 订阅交易员（返回已反序列化的响应体）
Future<void> exampleSubscribeTrader(SubscriptionAppApi api, {required int traderId}) async {
  try {
    print('订阅交易员: traderId=$traderId');
    final dto = SubscribeTraderDTO(
      strategyType: 'FUTURES', // SPOT 或 FUTURES
      subscriptionType: 1,   // 1=月, 2=季, 3=年
      paymentMethod: 'WALLET',
      autoRenew: true,
      clientIp: '127.0.0.1',
      returnUrl: 'https://example.com/return',
    );
    final resp = await api.subscribeTrader(traderId, dto);
    print('✅ 成功: ${resp?.toJson()}');
  } catch (e) {
    print('❌ 失败: $e');
  }
}

/// 订阅交易员（返回原始 HTTP 信息 Response）
Future<void> exampleSubscribeTraderWithHttpInfo(SubscriptionAppApi api, {required int traderId}) async {
  try {
    print('订阅交易员(WithHttpInfo): traderId=$traderId');
    final dto = SubscribeTraderDTO(
      strategyType: 'SPOT',
      subscriptionType: 1,
      paymentMethod: 'WALLET',
      autoRenew: true,
      clientIp: '127.0.0.1',
      returnUrl: 'https://example.com/return',
    );
    final response = await api.subscribeTraderWithHttpInfo(traderId, dto);
    print('✅ HTTP Status: ${response.statusCode}');
    print('✅ HTTP Body  : ${response.body}');
  } catch (e) {
    print('❌ 失败: $e');
  }
}

// =============== 交易员观点模块 ===============
Future<void> exampleGetOpinionsByTrader(TraderOpinionAppApi api, {required int traderId}) async {
  try {
    print('获取交易员观点列表: traderId=$traderId');
    final resp = await api.getOpinionsByTraderId(traderId, current: 1, size: 10);
    print('✅ 成功: ${resp?.toJson()}');
  } catch (e) {
    print('❌ 失败: $e');
  }
}

Future<void> exampleCountOpinionsByTrader(TraderOpinionAppApi api, {required int traderId}) async {
  try {
    print('统计交易员观点数量: traderId=$traderId');
    final resp = await api.countOpinionsByTraderId(traderId, publishStatus: 1);
    print('✅ 成功: ${resp?.toJson()}');
  } catch (e) {
    print('❌ 失败: $e');
  }
}

Future<void> exampleLikeOpinion(TraderOpinionAppApi api, {required int opinionId}) async {
  try {
    print('点赞观点: opinionId=$opinionId');
    final resp = await api.likeOpinion(opinionId);
    print('✅ 成功: ${resp?.toJson()}');
  } catch (e) {
    print('❌ 失败: $e');
  }
}

Future<void> exampleUnlikeOpinion(TraderOpinionAppApi api, {required int opinionId}) async {
  try {
    print('取消点赞观点: opinionId=$opinionId');
    final resp = await api.unlikeOpinion(opinionId);
    print('✅ 成功: ${resp?.toJson()}');
  } catch (e) {
    print('❌ 失败: $e');
  }
}

// =============== 交易员定价模块 ===============
Future<void> exampleGetTraderPricing(TraderSubscriptionPricingAppApi api, {required int traderId}) async {
  try {
    print('获取交易员定价: traderId=$traderId');
    final resp = await api.getTraderPricing(traderId);
    print('✅ 成功: ${resp?.toJson()}');
  } catch (e) {
    print('❌ 失败: $e');
  }
}

// =============== 策略评论与评分 ===============
Future<void> exampleGetStrategyComments(StrategyCommentAppApi api, {required int strategyId}) async {
  try {
    print('获取策略评论: strategyId=$strategyId');
    final resp = await api.getStrategyComments(strategyId, StrategyCommentQueryDTO());
    print('✅ 成功: ${resp?.toJson()}');
  } catch (e) {
    print('❌ 失败: $e');
  }
}

Future<void> exampleGetStrategyRatings(StrategyRatingAppApi api, {required int strategyId}) async {
  try {
    print('获取策略评分: strategyId=$strategyId');
    final resp = await api.getStrategyRatings(strategyId, StrategyRatingQueryDTO());
    print('✅ 成功: ${resp?.toJson()}');
  } catch (e) {
    print('❌ 失败: $e');
  }
}