import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

// import '../../core/constants/api_constants.dart';
// import '../../core/utils/access_token_helper.dart';
import '../../../core/constants/api_constants.dart';
import '../../../core/utils/access_token_helper.dart';
import 'model/order_models.dart';
import 'state.dart';

class TkGuaranteeCreateOrderLogic extends GetxController {
  final TkGuaranteeCreateOrderState state = TkGuaranteeCreateOrderState();
  
  late final Dio _dio;

  @override
  void onInit() {
    super.onInit();
    _initDio();
  }

  void _initDio() {
    _dio = Dio(BaseOptions(
      baseUrl: ApiConstants.baseUrl,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 30),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    ));
  }

  /// 创建订单接口
  Future<CreateOrderResponse?> createOrder({
    required String productName,
    required String productDescription,
    required String category,
    required double price,
  }) async {
    try {
      // 获取访问令牌
      final tokenHeaders = await TokenAccessHelper.buildAccessTokenHeader();
      if (tokenHeaders.isEmpty) {
        debugPrint('[CreateOrder] 未找到有效的访问令牌');
        Get.snackbar('错误', '请先登录');
        return null;
      }

      // 构建订单项
      final orderItem = OrderItem(
        productName: productName,
        productDescription: productDescription,
        category: category,
        unitPrice: price,
        totalPrice: price,
        originalPrice: price,
      );

      // 构建请求数据
      final request = CreateOrderRequest(
        totalAmount: price + 10 - 20, // 商品价格 + 运费 - 折扣
        payAmount: price,
        actualPaymentAmount: price + 10 - 20, // 实际支付金额
        orderItems: [orderItem],
        paymentMethod: 'alipay', // crypto
        currencyId: 7,
        payType: 1,
      );

      debugPrint('[CreateOrder] 请求数据: ${request.toJson()}');

      // 发送请求
      final response = await _dio.post(
        '/order/app/purchase/create',
        data: request.toJson(),
        options: Options(headers: tokenHeaders),
      );

      debugPrint('[CreateOrder] 响应数据: ${response.data}');

      if (response.statusCode == 200) {
        return CreateOrderResponse.fromJson(response.data);
      } else {
        debugPrint('[CreateOrder] 请求失败: ${response.statusCode}');
        Get.snackbar('错误', '创建订单失败');
        return null;
      }
    } catch (e) {
      debugPrint('[CreateOrder] 异常: $e');
      Get.snackbar('错误', '创建订单失败: ${e.toString()}');
      return null;
    }
  }

  /// 支付接口
  Future<PaymentResponse?> createPayment(String orderNo) async {
    try {
      // 获取访问令牌
      final tokenHeaders = await TokenAccessHelper.buildAccessTokenHeader();
      if (tokenHeaders.isEmpty) {
        debugPrint('[CreatePayment] 未找到有效的访问令牌');
        Get.snackbar('错误', '请先登录');
        return null;
      }

      debugPrint('[CreatePayment] 订单号: $orderNo');

      // 发送支付请求
      final response = await _dio.post(
        '/order/app/purchase/$orderNo/payment',
        options: Options(headers: tokenHeaders),
      );

      debugPrint('[CreatePayment] 响应数据: ${response.data}');

      if (response.statusCode == 200) {
        return PaymentResponse.fromJson(response.data);
      } else {
        debugPrint('[CreatePayment] 请求失败: ${response.statusCode}');
        Get.snackbar('错误', '创建支付失败');
        return null;
      }
    } catch (e) {
      debugPrint('[CreatePayment] 异常: $e');
      Get.snackbar('错误', '创建支付失败: ${e.toString()}');
      return null;
    }
  }

  /// 保存草稿
  Future<void> saveDraft({
    required String productName,
    required String productDescription,
    required String category,
    required double price,
  }) async {
    try {
      final orderResponse = await createOrder(
        productName: productName,
        productDescription: productDescription,
        category: category,
        price: price,
      );

      if (orderResponse != null && orderResponse.errCode == 0) {
        Get.snackbar('成功', '草稿保存成功');
        debugPrint('[SaveDraft] 订单创建成功: ${orderResponse.data.orderNo}');
      } else {
        Get.snackbar('失败', orderResponse?.errMsg ?? '保存草稿失败');
      }
    } catch (e) {
      debugPrint('[SaveDraft] 异常: $e');
      Get.snackbar('错误', '保存草稿失败');
    }
  }

  /// 创建并发送
  Future<void> createAndSend({
    required String productName,
    required String productDescription,
    required String category,
    required double price,
  }) async {
    try {
      // 第一步：创建订单
      final orderResponse = await createOrder(
        productName: productName,
        productDescription: productDescription,
        category: category,
        price: price,
      );

      if (orderResponse == null || orderResponse.errCode != 0) {
        Get.snackbar('失败', orderResponse?.errMsg ?? '创建订单失败');
        return;
      }

      final orderNo = orderResponse.data.orderNo;
      debugPrint('[CreateAndSend] 订单创建成功: $orderNo');

      // 第二步：创建支付
      final paymentResponse = await createPayment(orderNo);

      if (paymentResponse != null && paymentResponse.errCode == 0) {
        Get.snackbar('成功', '订单创建并发送成功');
        debugPrint('[CreateAndSend] 支付创建成功: ${paymentResponse.data.paymentId}');
        debugPrint('[CreateAndSend] 支付链接: ${paymentResponse.data.paymentUrl}');
        
        // 这里可以跳转到支付页面或显示支付二维码
        // 例如：Get.toNamed('/payment', arguments: paymentResponse.data);
      } else {
        Get.snackbar('失败', paymentResponse?.errMsg ?? '创建支付失败');
      }
    } catch (e) {
      debugPrint('[CreateAndSend] 异常: $e');
      Get.snackbar('错误', '创建并发送失败');
    }
  }
}
