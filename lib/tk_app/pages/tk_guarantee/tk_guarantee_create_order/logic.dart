import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:openim_common/openim_common.dart';

import '../../../core/constants/api_constants.dart';
import '../../../core/utils/access_token_helper.dart';
import 'model/order_models.dart';
import 'state.dart';

class TkGuaranteeCreateOrderLogic extends GetxController {
  final TkGuaranteeCreateOrderState state = TkGuaranteeCreateOrderState();
  
  late final Dio _dio;

  late CreateOrderRequest from_model;

  @override
  void onInit() {
    super.onInit();
    _initDio();

    // 从路由参数获取商品ID
    final arguments = Get.arguments as Map<String, dynamic>?;
    if (arguments != null) {
      from_model = arguments['orderData'] as CreateOrderRequest;
    }
  }

  /// 获取订单数据
  Map<String, dynamic>? getOrderData() {
    try {
      if (from_model.orderItems.isNotEmpty) {
        OrderItem order = from_model.orderItems.first;
        return {
          'category': order.category,
          'productName': order.productName,
          'productDescription': order.productDescription,
          'totalPrice': order.totalPrice,
        };
      }
    } catch (e) {
      debugPrint('[GetOrderData] 获取订单数据失败: $e');
    }
    return null;
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

      // 根据 from_model 是否为空来设置动态参数
      String paymentMethod = 'alipay'; // 默认支付方式
      int currencyId = 7; // 默认货币ID
      int payType = 1; // 默认支付类型
      String userOpenimUserId = ''; // 用户OpenIM ID
      String sellerOpenimUserId = ''; // 卖家OpenIM ID
      int sellerId = 0; // 卖家ID
      int buyerId = 0; // 买家ID
      int memberId = 0; // 下单ID

      if (from_model != null) {
        // 如果 from_model 不为空，使用其中的参数

        userOpenimUserId = from_model.userOpenimUserId;
        sellerOpenimUserId = from_model.sellerOpenimUserId;
        sellerId = from_model.sellerId;
        buyerId = from_model.buyerId;
        memberId = from_model.memberId;

        debugPrint('[CreateOrder] 使用 from_model 参数: userOpenimUserId=$userOpenimUserId, sellerOpenimUserId=$sellerOpenimUserId, sellerId=$sellerId');
      } else {
        debugPrint('[CreateOrder] from_model 为空，使用默认参数');
      }

      // 构建请求数据
      final request = CreateOrderRequest(
        totalAmount: price, // 商品价格 + 运费 - 折扣
        payAmount: price,
        actualPaymentAmount: price, // 实际支付金额
        orderItems: [orderItem],
        // paymentMethod: paymentMethod,
        // currencyId: currencyId,
        // payType: payType,
        paymentMethod: 'alipay', // 可以根据需要修改
        currencyId: 7,
        payType: 1,
        userOpenimUserId: userOpenimUserId,
        sellerOpenimUserId: sellerOpenimUserId,
        sellerId: sellerId,
        memberId: memberId,
        buyerId: buyerId,
        shippingFee: 0,
        discountAmount: 0,

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

  /// 只订单创建
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
        Get.snackbar('成功', '订单创建成功');
        debugPrint('[SaveDraft] 订单创建成功: ${orderResponse.data.orderId}');

        if (from_model.orderItems.isNotEmpty) {
          // 获取消息数据，传递用户输入的新数据
          final messageData = _handlePayMessage(
            from_model.userOpenimUserId,
            orderResponse.data.orderId,
            productName: productName,
            productDescription: productDescription,
            category: category,
            price: price,
          );

          // 获取回调函数
          final arguments = Get.arguments as Map<String, dynamic>?;
          final onOrderCreated = arguments?['onOrderCreated'] as Function?;

          if (messageData != null && onOrderCreated != null) {
            // 调用回调函数发送消息
            onOrderCreated(messageData);
            debugPrint('✅ [CreateAndSend] 已通过回调发送消息');

            // 显示成功提示
            Get.snackbar('成功', '订单创建并发送成功！消息已发送给用户');

            // 等待用户看到提示后再返回
            await Future.delayed(const Duration(milliseconds: 1500));
          } else {
            debugPrint('❌ [CreateAndSend] 消息数据或回调函数为空');
            Get.snackbar('警告', '订单创建成功，但消息发送失败');
            await Future.delayed(const Duration(milliseconds: 1500));
          }
        } else {
          // 没有 from_model 的情况
          Get.snackbar('成功', '订单创建成功');
          await Future.delayed(const Duration(milliseconds: 1500));
        }


      } else {
        Get.snackbar('失败', orderResponse?.errMsg ?? '订单创建失败');
      }
    } catch (e) {
      debugPrint('[SaveDraft] 异常: $e');
      Get.snackbar('错误', '订单创建失败');
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
        debugPrint('[CreateAndSend] 支付创建成功: ${paymentResponse.data.paymentId}');
        debugPrint('[CreateAndSend] 支付链接: ${paymentResponse.data.paymentUrl}');



        // // 返回聊天页面
        // Get.back();
        
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



  /// 处理支付订单消息（使用回调函数）
  Map<String, dynamic>? _handlePayMessage(
    String customerServiceID,
    String orderId, {
    String? productName,
    String? productDescription,
    String? category,
    double? price,
  }) {
    try {
      debugPrint('📤 [HandlePayMessage] 开始构建订单消息数据');

      String userOpenimUserId = '';
      if (from_model != null) {
        userOpenimUserId = from_model.userOpenimUserId;
      }
      
      // 使用传入的新数据，如果没有传入则使用旧数据作为后备
      final orderData = getOrderData();
      final productData = {
        "customType": CustomMessageType.productInquiry,
        "data": {
          "productId": orderData?['productId'] ?? '',
          "productName": productName ?? orderData?['productName'] ?? '订单商品',
          "price": price ?? orderData?['totalPrice'] ?? 0,
          "category": category ?? orderData?['category'] ?? '',
          "description": productDescription ?? orderData?['productDescription'] ?? '',
          "orderId": orderId,
          "userOpenimUserId": userOpenimUserId,
        }
      };

      debugPrint('🔍 [HandlePayMessage] 构建的消息数据: ${json.encode(productData)}');
      debugPrint('🔍 [HandlePayMessage] 使用的新价格: $price');

      // 返回消息数据，让聊天页面发送
      return {
        'messageData': productData,
        'extension': 'order_payment',
        'description': '订单支付通知',
      };

    } catch (e) {
      debugPrint('❌ [HandlePayMessage] 构建消息数据失败: $e');
      return null;
    }
  }




}
