import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_models.freezed.dart';
part 'order_models.g.dart';

// 订单项
@freezed
class OrderItem with _$OrderItem {
  const factory OrderItem({
    @Default(1001) int productId,
    @Default(2001) int skuId,
    @Default(1) int quantity,
    required String productName,
    @Default("https://example.com/image.jpg") String productImage,
    required String productDescription,
    required double unitPrice,
    required double totalPrice,
    required double originalPrice,
    @Default("{\"color\":\"红色\",\"size\":\"L\"}") String skuAttributes,
    @Default("SKU001") String skuCode,
    @Default("PROD001") String productCode,
    @Default("Apple") String brand,
    required String category,
    @Default(0.2) double weight,
    @Default(0.001) double volume,
  }) = _OrderItem;

  factory OrderItem.fromJson(Map<String, dynamic> json) => _$OrderItemFromJson(json);
}

// 创建订单请求
@freezed
class CreateOrderRequest with _$CreateOrderRequest {
  const factory CreateOrderRequest({
    @Default("") String userOpenimUserId,
    @Default(1001) int sellerId,
    @Default("张三") String sellerName,
    @Default("") String sellerOpenimUserId,
    @Default("") String serviceOpenimUserId,
    @Default("B2C") String orderType,
    @Default(1) int payType,
    @Default("alipay") String paymentMethod,
    @Default(7) int currencyId,
    @Default("客服协助下单") String remark,
    @Default(3) int deliveryDays,
    @Default("escrow") String guaranteeType,
    @Default("physical") String productType,
    required double totalAmount,
    required double payAmount,
    @Default(10) double shippingFee,
    @Default(20) double discountAmount,
    required double actualPaymentAmount,
    @Default("adj_123456789") String priceAdjustmentId,
    @Default("conv_123456789") String conversationId,
    @Default(0) int customerServiceId,
    required List<OrderItem> orderItems,
    @Default(0) int memberId,
    @Default(0) int buyerId,

  }) = _CreateOrderRequest;

  factory CreateOrderRequest.fromJson(Map<String, dynamic> json) => _$CreateOrderRequestFromJson(json);
}

// 创建订单响应数据
@freezed
class OrderData with _$OrderData {
  const factory OrderData({
    required String orderId,
    required String orderNo,
    required double totalAmount,
    required double payAmount,
    required int payType,
    required String paymentMethod,
    required int orderStatus,
    required String orderStatusText,
    required String createdAt,
    required String paymentLink,
    required String expireTime,
  }) = _OrderData;

  factory OrderData.fromJson(Map<String, dynamic> json) => _$OrderDataFromJson(json);
}

// 创建订单响应
@freezed
class CreateOrderResponse with _$CreateOrderResponse {
  const factory CreateOrderResponse({
    required int errCode,
    required String errMsg,
    required OrderData data,
  }) = _CreateOrderResponse;

  factory CreateOrderResponse.fromJson(Map<String, dynamic> json) => _$CreateOrderResponseFromJson(json);
}

// 支付数据
@freezed
class PaymentData with _$PaymentData {
  const factory PaymentData({
    required String id,
    required String paymentId,
    required double amount,
    required int payType,
    required String paymentMethod,
    required String status,
    required String statusText,
    required String transactionId,
    required String paymentUrl,
    required String qrCode,
    required String payTime,
    required String expireTime,
    required String createdAt,
    required String updatedAt,
    required String thirdPartyOrderNo,
  }) = _PaymentData;

  factory PaymentData.fromJson(Map<String, dynamic> json) => _$PaymentDataFromJson(json);
}

// 支付响应
@freezed
class PaymentResponse with _$PaymentResponse {
  const factory PaymentResponse({
    required int errCode,
    required String errMsg,
    required PaymentData data,
  }) = _PaymentResponse;

  factory PaymentResponse.fromJson(Map<String, dynamic> json) => _$PaymentResponseFromJson(json);
}
