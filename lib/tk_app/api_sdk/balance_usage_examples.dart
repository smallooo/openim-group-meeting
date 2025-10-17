import 'package:toklink_balance_sdk/api.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

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
    print('Headers: ${request.headers}');
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
    print('Headers: ${streamed.headers}');
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

/// 入口示例：按需选择并执行各接口演示
Future<void> main() async {
  // 替换为你的真实网关地址，例如：
  // 生产/测试网关: https://gw.trunk.toklink.io/api/wallet
  final client = ApiClient(basePath: 'https://gw.trunk.toklink.io/strategy/balance');
  client.client = LoggingClient(http.Client());

  // 认证头（二选一或同时）
  client.addDefaultHeader('Access-Token', 'your_access_token');
  // client.addDefaultHeader('Authorization', 'Bearer your_jwt_token');
  client.addDefaultHeader('Content-Type', 'application/json');
  client.addDefaultHeader('Accept', 'application/json');

  // API 实例
  final fundApi = FundAppApi(client);
  final payApi = WalletPaymentAppApi(client);
  final refundApi = WalletRefundAppApi(client);
  final redPacketApi = RedPacketAppApi(client);
  final pwdApi = PaymentPasswordAppApi(client);

  // 余额相关
  // await queryMyCurrencyBalance(fundApi, currencyId: 1);
  // await listMyBalances(fundApi, memberId: 1001);
  // await getMyBalanceSummary(fundApi);

  // 支付相关
  // await processPayment(payApi,
  //   walletOrderNo: 'WALLET-ORDER-001', memberId: 1001, amount: 9.99, currencyId: 1);
  // await verifyAndPay(payApi,
  //   walletOrderNo: 'WALLET-ORDER-001', amount: 9.99, currencyId: 1, paymentPassword: '123456');

  // 退款相关
  // await processRefund(refundApi,
  //   memberId: '1001', walletOrderNo: 'WALLET-ORDER-001', walletRefundNo: 'WALLET-REFUND-001', refundAmount: 9.99, currencyId: 1, reason: '商品瑕疵');
  // await verifyAndRefund(refundApi,
  //   walletRefundNo: 'WALLET-REFUND-001', refundAmount: 9.99, reason: '商品瑕疵', paymentPassword: '123456');

  // 支付密码
  // await getPaymentPasswordStatus(pwdApi);
  // await setPaymentPassword(pwdApi, password: '123456');
  // await changePaymentPassword(pwdApi, oldPassword: '123456', newPassword: '654321');
  // await verifyPaymentPassword(pwdApi, password: '123456');

  // 红包
  // await createRedPacket(redPacketApi,
  //   packetType: 1, currencyId: 1, totalAmount: 10.0, totalCount: 5, blessing: '恭喜发财');
  // await getRedPacketDetail(redPacketApi, packetNo: 'PACKET-001');
  // await receiveRedPacket(redPacketApi, packetNo: 'PACKET-001');
}

// =============== 余额相关 ===============
Future<void> queryMyCurrencyBalance(FundAppApi api, {required int currencyId}) async {
  final dto = CurrencyBalanceQueryDTO(currencyId: currencyId);
  try {
    print('请求我的指定币种余额: ${dto.toJson()}');
    final resp = await api.getMyBalance(dto);
    print('✅ 成功: ${resp?.toJson()}');
  } catch (e) {
    print('❌ 失败: $e');
  }
}

Future<void> listMyBalances(FundAppApi api, {
  required int memberId,
  int? currencyId,
  String? currencyName,
}) async {
  final dto = BalanceQueryDTO(memberId: memberId, currencyId: currencyId, currencyName: currencyName);
  try {
    print('请求我的余额列表: ${dto.toJson()}');
    final resp = await api.getMyBalanceList(dto);
    print('✅ 成功: ${resp?.toJson()}');
  } catch (e) {
    print('❌ 失败: $e');
  }
}

Future<void> getMyBalanceSummary(FundAppApi api) async {
  try {
    print('请求我的余额总览');
    final resp = await api.getMyBalanceSummary();
    print('✅ 成功: ${resp?.toJson()}');
  } catch (e) {
    print('❌ 失败: $e');
  }
}

// =============== 支付相关 ===============
Future<void> processPayment(WalletPaymentAppApi api, {
  required String walletOrderNo,
  required int memberId,
  required num amount,
  int? currencyId,
}) async {
  final dto = PaymentProcessDTO(
    walletOrderNo: walletOrderNo,
    memberId: memberId,
    amount: amount,
    currencyId: currencyId,
  );
  try {
    print('处理我的支付订单: ${dto.toJson()}');
    final resp = await api.processMyPayment(dto);
    print('✅ 成功: ${resp?.toJson()}');
  } catch (e) {
    print('❌ 失败: $e');
  }
}

Future<void> verifyAndPay(WalletPaymentAppApi api, {
  required String walletOrderNo,
  required num amount,
  int? currencyId,
  required String paymentPassword,
}) async {
  final dto = PaymentPasswordVerifyDTO(
    paymentPassword: paymentPassword,
    walletOrderNo: walletOrderNo,
    amount: amount,
    currencyId: currencyId,
  );
  try {
    print('验证支付密码并支付: ${dto.toJson()}');
    final resp = await api.verifyPasswordAndPay(dto);
    print('✅ 成功: ${resp?.toJson()}');
  } catch (e) {
    print('❌ 失败: $e');
  }
}

// =============== 退款相关 ===============
Future<void> processRefund(WalletRefundAppApi api, {
  required String memberId,
  required String walletOrderNo,
  required String walletRefundNo,
  required num refundAmount,
  int? currencyId,
  required String reason,
}) async {
  final dto = RefundProcessDTO(
    memberId: memberId,
    walletOrderNo: walletOrderNo,
    walletRefundNo: walletRefundNo,
    refundAmount: refundAmount,
    currencyId: currencyId,
    reason: reason,
  );
  try {
    print('处理我的退款订单: ${dto.toJson()}');
    final resp = await api.processMyRefund(dto);
    print('✅ 成功: ${resp?.toJson()}');
  } catch (e) {
    print('❌ 失败: $e');
  }
}

Future<void> verifyAndRefund(WalletRefundAppApi api, {
  required String walletRefundNo,
  required num refundAmount,
  required String reason,
  String? notifyUrl,
  required String paymentPassword,
}) async {
  final dto = RefundPasswordVerifyDTO(
    walletRefundNo: walletRefundNo,
    refundAmount: refundAmount,
    reason: reason,
    notifyUrl: notifyUrl,
    paymentPassword: paymentPassword,
  );
  try {
    print('验证支付密码并退款: ${dto.toJson()}');
    final resp = await api.verifyPasswordAndRefund(dto);
    print('✅ 成功: ${resp?.toJson()}');
  } catch (e) {
    print('❌ 失败: $e');
  }
}

// =============== 支付密码 ===============
Future<void> getPaymentPasswordStatus(PaymentPasswordAppApi api) async {
  try {
    print('查询我的支付密码状态');
    final resp = await api.getMyPaymentPasswordStatus();
    print('✅ 成功: ${resp?.toJson()}');
  } catch (e) {
    print('❌ 失败: $e');
  }
}

Future<void> setPaymentPassword(PaymentPasswordAppApi api, {required String password}) async {
  try {
    print('设置我的支付密码');
    final resp = await api.setMyPaymentPassword(password);
    print('✅ 成功: ${resp?.toJson()}');
  } catch (e) {
    print('❌ 失败: $e');
  }
}

Future<void> changePaymentPassword(PaymentPasswordAppApi api, {required String oldPassword, required String newPassword}) async {
  try {
    print('修改我的支付密码');
    final resp = await api.changeMyPaymentPassword(oldPassword, newPassword);
    print('✅ 成功: ${resp?.toJson()}');
  } catch (e) {
    print('❌ 失败: $e');
  }
}

Future<void> verifyPaymentPassword(PaymentPasswordAppApi api, {required String password}) async {
  try {
    print('验证我的支付密码');
    final resp = await api.verifyMyPaymentPassword(password);
    print('✅ 成功: ${resp?.toJson()}');
  } catch (e) {
    print('❌ 失败: $e');
  }
}

// =============== 红包 ===============
Future<void> createRedPacket(RedPacketAppApi api, {
  int? groupId,
  required int packetType,
  required int currencyId,
  required num totalAmount,
  required int totalCount,
  String? blessing,
}) async {
  final dto = CreateRedPacketDTO(
    groupId: groupId,
    packetType: packetType,
    currencyId: currencyId,
    totalAmount: totalAmount,
    totalCount: totalCount,
    blessing: blessing,
  );
  try {
    print('创建红包: ${dto.toJson()}');
    final resp = await api.createRedPacket(dto);
    print('✅ 成功: ${resp?.toJson()}');
  } catch (e) {
    print('❌ 失败: $e');
  }
}

Future<void> getRedPacketDetail(RedPacketAppApi api, {required String packetNo}) async {
  final dto = RedPacketDetailQueryDTO(packetNo: packetNo);
  try {
    print('查询红包详情: ${dto.toJson()}');
    final resp = await api.getRedPacketDetail(dto);
    print('✅ 成功: ${resp?.toJson()}');
  } catch (e) {
    print('❌ 失败: $e');
  }
}

Future<void> receiveRedPacket(RedPacketAppApi api, {required String packetNo}) async {
  final dto = ReceiveRedPacketDTO(packetNo: packetNo);
  try {
    print('领取红包: ${dto.toJson()}');
    final resp = await api.receiveRedPacket(dto);
    print('✅ 成功: ${resp?.toJson()}');
  } catch (e) {
    print('❌ 失败: $e');
  }
}