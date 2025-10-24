import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_detail_models.freezed.dart';
part 'order_detail_models.g.dart';

// 订单项详情
@freezed
class OrderItemDetail with _$OrderItemDetail {
  const factory OrderItemDetail({
    required String id,
    required String productId,
    required String skuId,
    required String productName,
    @Default("https://example.com/image.jpg") String productPic,
    @Default("{}") String productSpecs,
    required int quantity,
    required double unitPrice,
    required double totalPrice,
  }) = _OrderItemDetail;

  factory OrderItemDetail.fromJson(Map<String, dynamic> json) => _$OrderItemDetailFromJson(json);
}

// 支付信息
@freezed
class PaymentInfo with _$PaymentInfo {
  const factory PaymentInfo({
    required String id,
    required String paymentId,
    required double amount,
    required int payType,
    required String paymentMethod,
    required String status,
    required String statusText,
    required String transactionId,
    @Default("") String paymentUrl,
    @Default("") String qrCode,
    @Default("") String payTime,
    @Default("") String expireTime,
    required String createdAt,
    required String updatedAt,
    required String thirdPartyOrderNo,
  }) = _PaymentInfo;

  factory PaymentInfo.fromJson(Map<String, dynamic> json) => _$PaymentInfoFromJson(json);
}

// 买家信息
@freezed
class BuyerInfo with _$BuyerInfo {
  const factory BuyerInfo({
    required String buyerId,
    @Default("") String buyerName,
    @Default("") String buyerAvatar,
    @Default("") String buyerPhone,
  }) = _BuyerInfo;

  factory BuyerInfo.fromJson(Map<String, dynamic> json) => _$BuyerInfoFromJson(json);
}

// 卖家信息
@freezed
class SellerInfo with _$SellerInfo {
  const factory SellerInfo({
    required String sellerId,
    @Default("") String sellerName,
    @Default("") String sellerAvatar,
    @Default("") String sellerPhone,
    @Default("") String shopId,
    @Default("") String shopName,
  }) = _SellerInfo;

  factory SellerInfo.fromJson(Map<String, dynamic> json) => _$SellerInfoFromJson(json);
}

// 客服信息
@freezed
class CustomerServiceInfo with _$CustomerServiceInfo {
  const factory CustomerServiceInfo({
    required String customerServiceId,
    @Default("") String customerServiceName,
    @Default("") String customerServiceAvatar,
    @Default("") String department,
  }) = _CustomerServiceInfo;

  factory CustomerServiceInfo.fromJson(Map<String, dynamic> json) => _$CustomerServiceInfoFromJson(json);
}

// 状态时间线
@freezed
class StatusTimeline with _$StatusTimeline {
  const factory StatusTimeline({
    required String statusText,
    @Default("") String statusTime,
    required bool isCompleted,
    @Default("") String description,
  }) = _StatusTimeline;

  factory StatusTimeline.fromJson(Map<String, dynamic> json) => _$StatusTimelineFromJson(json);
}

// 订单详情数据
@freezed
class OrderDetailData with _$OrderDetailData {
  const factory OrderDetailData({
    required String orderId,
    required String orderNo,
    required String memberId,
    required String buyerId,
    required String sellerId,
    @Default("") String sellerName,
    required String orderType,
    required int orderStatus,
    required String orderStatusText,
    required double totalAmount,
    required double payAmount,
    @Default(0.0) double shippingFee,
    @Default(0.0) double discountAmount,
    required int payType,
    required String paymentMethod,
    @Default("") String payTime,
    @Default("") String deliveryTime,
    @Default("") String receiveTime,
    @Default("") String cancelTime,
    @Default("") String cancelReason,
    @Default("") String remark,
    @Default(3) int deliveryDays,
    @Default("escrow") String guaranteeType,
    @Default("physical") String productType,
    required String createdAt,
    required String updatedAt,
    required List<OrderItemDetail> orderItems,
    @JsonKey(fromJson: _paymentFromJson) PaymentInfo? payment,
    @Default("") String refundApplication,
    @Default("0") String conversationId,
    BuyerInfo? buyerInfo,
    SellerInfo? sellerInfo,
    CustomerServiceInfo? customerServiceInfo,
    @Default([]) List<StatusTimeline> statusTimeline,
  }) = _OrderDetailData;

  factory OrderDetailData.fromJson(Map<String, dynamic> json) => _$OrderDetailDataFromJson(json);
}

// 订单详情响应
@freezed
class OrderDetailResponse with _$OrderDetailResponse {
  const factory OrderDetailResponse({
    required int errCode,
    required String errMsg,
    required OrderDetailData data,
  }) = _OrderDetailResponse;

  factory OrderDetailResponse.fromJson(Map<String, dynamic> json) => _$OrderDetailResponseFromJson(json);
}

// 自定义转换函数，处理payment字段为空字符串的情况
PaymentInfo? _paymentFromJson(dynamic json) {
  if (json == null || json == "" || json is String) {
    return null;
  }
  if (json is Map<String, dynamic>) {
    return PaymentInfo.fromJson(json);
  }
  return null;
}
