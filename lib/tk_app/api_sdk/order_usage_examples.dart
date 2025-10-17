import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:toklink_order_sdk/api.dart';
import 'order_sdk_adapter.dart';

/// 简易 HTTP 日志客户端：打印请求/响应的详细信息（与策略示例保持一致）
class LoggingClient extends http.BaseClient {
  final http.Client _inner;
  final bool logRequestBody;
  final bool logResponseBody;

  LoggingClient([http.Client? inner])
      : _inner = inner ?? http.Client(),
        logRequestBody = true,
        logResponseBody = true;

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
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

    final streamed = await _inner.send(request);
    List<int> bytes = <int>[];
    try {
      bytes = await http.ByteStream(streamed.stream).toBytes();
    } catch (e) {
      print('WARN: failed to read response stream: $e');
    }

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

OrderSdkAdapter createOrderSdkAdapter({
  String basePath = 'http://localhost:9995/v1', // 可替换为生产/测试网关: https://gw.trunk.toklink.io/api/order
  String? apiKey,
  String? bearerToken,
  String? productKey,
  Map<String, String>? defaultHeaders,
}) {
  final client = LoggingClient();
  final adapter = OrderSdkAdapter.withAuthTokens(
    basePath: basePath,
    apiKey: apiKey,
    bearerToken: bearerToken,
    productKey: productKey,
    httpClient: client,
  );
  // 统一默认头（与策略示例一致）
  adapter.addDefaultHeader('Content-Type', 'application/json');
  adapter.addDefaultHeader('Accept', 'application/json');
  if (defaultHeaders != null && defaultHeaders.isNotEmpty) {
    defaultHeaders.forEach(adapter.addDefaultHeader);
  }
  return adapter;
}

// ---------------- Order 相关示例 ----------------
Future<void> exampleCreatePayment(OrderSdkAdapter adapter, String orderNo) async {
  try {
    final payment = await adapter.orderAppApi.createPayment(orderNo);
    print('CreatePayment => ${payment?.toJson()}');
  } catch (e) {
    print('CreatePayment error: $e');
  }
}

Future<void> exampleCancelPayment(
    OrderSdkAdapter adapter, String paymentId, String orderNo,
    {String? reason}) async {
  try {
    final req = PaymentCancelRequest(paymentId: paymentId, orderNo: orderNo, reason: reason);
    final resp = await adapter.orderAppApi.cancelPayment(req);
    print('CancelPayment => ${resp?.toJson()}');
  } catch (e) {
    print('CancelPayment error: $e');
  }
}

Future<void> exampleQueryPayment(OrderSdkAdapter adapter,
    {String? paymentId, String? orderNo}) async {
  try {
    final req = PaymentQueryRequest(paymentId: paymentId, orderNo: orderNo);
    final resp = await adapter.orderAppApi.queryPayment(req);
    print('QueryPayment => ${resp?.toJson()}');
  } catch (e) {
    print('QueryPayment error: $e');
  }
}

Future<void> exampleConfirmReceive(OrderSdkAdapter adapter, int orderId) async {
  try {
    final ok = await adapter.orderAppApi.confirmReceive(orderId);
    print('ConfirmReceive => $ok');
  } catch (e) {
    print('ConfirmReceive error: $e');
  }
}

Future<void> exampleDeleteOrder(OrderSdkAdapter adapter, int orderId) async {
  try {
    final ok = await adapter.orderAppApi.deleteOrder(orderId);
    print('DeleteOrder => $ok');
  } catch (e) {
    print('DeleteOrder error: $e');
  }
}

Future<void> exampleGetOrderDetail(OrderSdkAdapter adapter, int orderId) async {
  try {
    final detail = await adapter.orderAppApi.getOrderDetail(orderId);
    print('GetOrderDetail => ${detail?.toJson()}');
  } catch (e) {
    print('GetOrderDetail error: $e');
  }
}

Future<void> exampleGetOrderDetailByOrderNo(
    OrderSdkAdapter adapter, String orderNo) async {
  try {
    final detail = await adapter.orderAppApi.getOrderDetailByOrderNo(orderNo);
    print('GetOrderDetailByOrderNo => ${detail?.toJson()}');
  } catch (e) {
    print('GetOrderDetailByOrderNo error: $e');
  }
}

Future<void> exampleGetOrderList(OrderSdkAdapter adapter,
    {String? orderType, int? orderStatus, DateTime? startTime, DateTime? endTime, int? current, int? size}) async {
  try {
    final page = await adapter.orderAppApi.getOrderList(
      orderType: orderType,
      orderStatus: orderStatus,
      startTime: startTime,
      endTime: endTime,
      current: current,
      size: size,
    );
    print('GetOrderList => ${page?.toJson()}');
  } catch (e) {
    print('GetOrderList error: $e');
  }
}

// ---------------- Review 相关示例 ----------------
Future<void> exampleCreateOrderReview(OrderSdkAdapter adapter, {
  required int orderId,
  required int rating,
  String? content,
  String? images,
  bool? isAnonymous,
}) async {
  try {
    final req = OrderReviewRequest(
      orderId: orderId,
      rating: rating,
      content: content,
      images: images,
      isAnonymous: isAnonymous,
    );
    final review = await adapter.orderReviewAppApi.createOrderReview(req);
    print('CreateOrderReview => ${review?.toJson()}');
  } catch (e) {
    print('CreateOrderReview error: $e');
  }
}

Future<void> exampleGetOrderReviewByOrderId(OrderSdkAdapter adapter, int orderId) async {
  try {
    final review = await adapter.orderReviewAppApi.getOrderReviewByOrderId(orderId);
    print('GetOrderReviewByOrderId => ${review?.toJson()}');
  } catch (e) {
    print('GetOrderReviewByOrderId error: $e');
  }
}

// ---------------- Refund 相关示例 ----------------
Future<void> exampleApplyRefund(OrderSdkAdapter adapter, {
  required int orderId,
  required String refundType,
  required String refundAmount,
  required String refundReason,
  String? description,
  String? evidenceImages,
  String? evidenceVideos,
  String? evidenceFiles,
}) async {
  try {
    final req = RefundApplyRequest(
      orderId: orderId,
      refundType: refundType,
      refundAmount: refundAmount,
      refundReason: refundReason,
      description: description,
      evidenceImages: evidenceImages,
      evidenceVideos: evidenceVideos,
      evidenceFiles: evidenceFiles,
    );
    final vo = await adapter.refundAppApi.applyRefund(req);
    print('ApplyRefund => ${vo?.toJson()}');
  } catch (e) {
    print('ApplyRefund error: $e');
  }
}

Future<void> exampleApproveRefund(OrderSdkAdapter adapter, {
  required String refundNo,
  required RefundApproveRequestResultEnum result,
  String? remark,
}) async {
  try {
    final req = RefundApproveRequest(refundNo: refundNo, result: result, remark: remark);
    final vo = await adapter.refundAppApi.approveRefund(req);
    print('ApproveRefund => ${vo?.toJson()}');
  } catch (e) {
    print('ApproveRefund error: $e');
  }
}

Future<void> exampleCancelRefund(OrderSdkAdapter adapter, String refundNo) async {
  try {
    final vo = await adapter.refundAppApi.cancelRefund(refundNo);
    print('CancelRefund => ${vo?.toJson()}');
  } catch (e) {
    print('CancelRefund error: $e');
  }
}

Future<void> exampleConfirmRefund(OrderSdkAdapter adapter, {
  required String refundNo,
  required int sellerId,
  String? confirmRemark,
  num? refundAmount,
  String? refundMethod,
}) async {
  try {
    final req = RefundConfirmRequest(
      refundNo: refundNo,
      sellerId: sellerId,
      confirmRemark: confirmRemark,
      refundAmount: refundAmount,
      refundMethod: refundMethod,
    );
    final vo = await adapter.refundAppApi.confirmRefund(req);
    print('ConfirmRefund => ${vo?.toJson()}');
  } catch (e) {
    print('ConfirmRefund error: $e');
  }
}

Future<void> exampleQueryRefund(OrderSdkAdapter adapter, {String? refundNo}) async {
  try {
    final req = RefundQueryRequest(refundNo: refundNo);
    final resp = await adapter.refundAppApi.queryRefund(req);
    print('QueryRefund => ${resp?.toJson()}');
  } catch (e) {
    print('QueryRefund error: $e');
  }
}

// ---------------- Payment Callback 示例 ----------------
Future<void> examplePaymentCallback(OrderSdkAdapter adapter, Map<String, Object> payload) async {
  try {
    final resp = await adapter.paymentCallbackAppApi.paymentCallback(payload);
    print('PaymentCallback => ${resp?.toJson()}');
  } catch (e) {
    print('PaymentCallback error: $e');
  }
}

// 入口示例：按需替换 basePath 与认证信息后运行
void main() async {
  final adapter = createOrderSdkAdapter(
    basePath: 'http://localhost:9995/v1',
    apiKey: 'YOUR_API_KEY', // 或者使用 bearerToken
    bearerToken: 'YOUR_BEARER_TOKEN',
    productKey: 'YOUR_PRODUCT_KEY',
    defaultHeaders: const {
      // 与策略示例保持一致的认证头演示（二选一或同时）
      'Access-Token': 'YOUR_ACCESS_TOKEN',
      // 'Authorization': 'Bearer YOUR_JWT_TOKEN',
    },
  );

  await exampleCreatePayment(adapter, 'ORDER_NO_123');
  await exampleQueryPayment(adapter, orderNo: 'ORDER_NO_123');
  await exampleConfirmReceive(adapter, 1001);
  await exampleDeleteOrder(adapter, 1001);

  await exampleCreateOrderReview(adapter,
      orderId: 1001, rating: 5, content: 'Great!', isAnonymous: true);

  await exampleApplyRefund(adapter,
      orderId: 1001,
      refundType: 'full',
      refundAmount: '99.99',
      refundReason: 'Item defective',
      description: 'Screen cracked');

  await exampleApproveRefund(adapter,
      refundNo: 'RF20240001', result: RefundApproveRequestResultEnum.approved);
  await exampleCancelRefund(adapter, 'RF20240002');
}