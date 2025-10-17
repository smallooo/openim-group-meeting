import 'package:toklink_member_sdk/api.dart';

class MemberSdkAdapter {
  final ApiClient _client;

  MemberSdkAdapter({
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

  // 暴露具体 API 类的构造，业务按需调用对应方法
  EmailAuthAppApi emailAuth() => EmailAuthAppApi(_client);
  SmsLoginAppApi smsLogin() => SmsLoginAppApi(_client);
  TokenAppApi token() => TokenAppApi(_client);
  MemberAppApi member() => MemberAppApi(_client);
  MemberAddressAppApi address() => MemberAddressAppApi(_client);
  MemberRelationAppApi relation() => MemberRelationAppApi(_client);
}