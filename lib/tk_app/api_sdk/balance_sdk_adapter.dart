import 'package:toklink_balance_sdk/api.dart';

/// Balance SDK 适配器：统一初始化 ApiClient 并暴露具体业务 API 类。
class BalanceSdkAdapter {
  final ApiClient _client;

  BalanceSdkAdapter({
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

    // 常规 JSON 交互头
    _client.addDefaultHeader('Content-Type', 'application/json');
    _client.addDefaultHeader('Accept', 'application/json');
  }

  // 暴露具体 API 类的构造，业务按需调用对应方法
  FundAppApi fund() => FundAppApi(_client);
  WalletPaymentAppApi walletPayment() => WalletPaymentAppApi(_client);
  WalletRefundAppApi walletRefund() => WalletRefundAppApi(_client);
  RedPacketAppApi redPacket() => RedPacketAppApi(_client);
  PaymentPasswordAppApi paymentPassword() => PaymentPasswordAppApi(_client);
}