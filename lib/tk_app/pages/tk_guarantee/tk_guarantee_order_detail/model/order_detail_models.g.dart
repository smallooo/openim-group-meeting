// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_detail_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderItemDetailImpl _$$OrderItemDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderItemDetailImpl(
      id: json['id'] as String,
      productId: json['productId'] as String,
      skuId: json['skuId'] as String,
      productName: json['productName'] as String,
      productPic:
          json['productPic'] as String? ?? "https://example.com/image.jpg",
      productSpecs: json['productSpecs'] as String? ?? "{}",
      quantity: (json['quantity'] as num).toInt(),
      unitPrice: (json['unitPrice'] as num).toDouble(),
      totalPrice: (json['totalPrice'] as num).toDouble(),
    );

Map<String, dynamic> _$$OrderItemDetailImplToJson(
        _$OrderItemDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productId': instance.productId,
      'skuId': instance.skuId,
      'productName': instance.productName,
      'productPic': instance.productPic,
      'productSpecs': instance.productSpecs,
      'quantity': instance.quantity,
      'unitPrice': instance.unitPrice,
      'totalPrice': instance.totalPrice,
    };

_$PaymentInfoImpl _$$PaymentInfoImplFromJson(Map<String, dynamic> json) =>
    _$PaymentInfoImpl(
      id: json['id'] as String,
      paymentId: json['paymentId'] as String,
      amount: (json['amount'] as num).toDouble(),
      payType: (json['payType'] as num).toInt(),
      paymentMethod: json['paymentMethod'] as String,
      status: json['status'] as String,
      statusText: json['statusText'] as String,
      transactionId: json['transactionId'] as String,
      paymentUrl: json['paymentUrl'] as String? ?? "",
      qrCode: json['qrCode'] as String? ?? "",
      payTime: json['payTime'] as String? ?? "",
      expireTime: json['expireTime'] as String? ?? "",
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      thirdPartyOrderNo: json['thirdPartyOrderNo'] as String,
    );

Map<String, dynamic> _$$PaymentInfoImplToJson(_$PaymentInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'paymentId': instance.paymentId,
      'amount': instance.amount,
      'payType': instance.payType,
      'paymentMethod': instance.paymentMethod,
      'status': instance.status,
      'statusText': instance.statusText,
      'transactionId': instance.transactionId,
      'paymentUrl': instance.paymentUrl,
      'qrCode': instance.qrCode,
      'payTime': instance.payTime,
      'expireTime': instance.expireTime,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'thirdPartyOrderNo': instance.thirdPartyOrderNo,
    };

_$BuyerInfoImpl _$$BuyerInfoImplFromJson(Map<String, dynamic> json) =>
    _$BuyerInfoImpl(
      buyerId: json['buyerId'] as String,
      buyerName: json['buyerName'] as String? ?? "",
      buyerAvatar: json['buyerAvatar'] as String? ?? "",
      buyerPhone: json['buyerPhone'] as String? ?? "",
    );

Map<String, dynamic> _$$BuyerInfoImplToJson(_$BuyerInfoImpl instance) =>
    <String, dynamic>{
      'buyerId': instance.buyerId,
      'buyerName': instance.buyerName,
      'buyerAvatar': instance.buyerAvatar,
      'buyerPhone': instance.buyerPhone,
    };

_$SellerInfoImpl _$$SellerInfoImplFromJson(Map<String, dynamic> json) =>
    _$SellerInfoImpl(
      sellerId: json['sellerId'] as String,
      sellerName: json['sellerName'] as String? ?? "",
      sellerAvatar: json['sellerAvatar'] as String? ?? "",
      sellerPhone: json['sellerPhone'] as String? ?? "",
      shopId: json['shopId'] as String? ?? "",
      shopName: json['shopName'] as String? ?? "",
    );

Map<String, dynamic> _$$SellerInfoImplToJson(_$SellerInfoImpl instance) =>
    <String, dynamic>{
      'sellerId': instance.sellerId,
      'sellerName': instance.sellerName,
      'sellerAvatar': instance.sellerAvatar,
      'sellerPhone': instance.sellerPhone,
      'shopId': instance.shopId,
      'shopName': instance.shopName,
    };

_$CustomerServiceInfoImpl _$$CustomerServiceInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomerServiceInfoImpl(
      customerServiceId: json['customerServiceId'] as String,
      customerServiceName: json['customerServiceName'] as String? ?? "",
      customerServiceAvatar: json['customerServiceAvatar'] as String? ?? "",
      department: json['department'] as String? ?? "",
    );

Map<String, dynamic> _$$CustomerServiceInfoImplToJson(
        _$CustomerServiceInfoImpl instance) =>
    <String, dynamic>{
      'customerServiceId': instance.customerServiceId,
      'customerServiceName': instance.customerServiceName,
      'customerServiceAvatar': instance.customerServiceAvatar,
      'department': instance.department,
    };

_$StatusTimelineImpl _$$StatusTimelineImplFromJson(Map<String, dynamic> json) =>
    _$StatusTimelineImpl(
      statusText: json['statusText'] as String,
      statusTime: json['statusTime'] as String? ?? "",
      isCompleted: json['isCompleted'] as bool,
      description: json['description'] as String? ?? "",
    );

Map<String, dynamic> _$$StatusTimelineImplToJson(
        _$StatusTimelineImpl instance) =>
    <String, dynamic>{
      'statusText': instance.statusText,
      'statusTime': instance.statusTime,
      'isCompleted': instance.isCompleted,
      'description': instance.description,
    };

_$OrderDetailDataImpl _$$OrderDetailDataImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderDetailDataImpl(
      orderId: json['orderId'] as String,
      orderNo: json['orderNo'] as String,
      memberId: json['memberId'] as String,
      buyerId: json['buyerId'] as String,
      sellerId: json['sellerId'] as String,
      sellerName: json['sellerName'] as String? ?? "",
      orderType: json['orderType'] as String,
      orderStatus: (json['orderStatus'] as num).toInt(),
      orderStatusText: json['orderStatusText'] as String,
      totalAmount: (json['totalAmount'] as num).toDouble(),
      payAmount: (json['payAmount'] as num).toDouble(),
      shippingFee: (json['shippingFee'] as num?)?.toDouble() ?? 0.0,
      discountAmount: (json['discountAmount'] as num?)?.toDouble() ?? 0.0,
      payType: (json['payType'] as num).toInt(),
      paymentMethod: json['paymentMethod'] as String,
      payTime: json['payTime'] as String? ?? "",
      deliveryTime: json['deliveryTime'] as String? ?? "",
      receiveTime: json['receiveTime'] as String? ?? "",
      cancelTime: json['cancelTime'] as String? ?? "",
      cancelReason: json['cancelReason'] as String? ?? "",
      remark: json['remark'] as String? ?? "",
      deliveryDays: (json['deliveryDays'] as num?)?.toInt() ?? 3,
      guaranteeType: json['guaranteeType'] as String? ?? "escrow",
      productType: json['productType'] as String? ?? "physical",
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      orderItems: (json['orderItems'] as List<dynamic>)
          .map((e) => OrderItemDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      payment: _paymentFromJson(json['payment']),
      refundApplication: json['refundApplication'] as String? ?? "",
      conversationId: json['conversationId'] as String? ?? "0",
      buyerInfo: json['buyerInfo'] == null
          ? null
          : BuyerInfo.fromJson(json['buyerInfo'] as Map<String, dynamic>),
      sellerInfo: json['sellerInfo'] == null
          ? null
          : SellerInfo.fromJson(json['sellerInfo'] as Map<String, dynamic>),
      customerServiceInfo: json['customerServiceInfo'] == null
          ? null
          : CustomerServiceInfo.fromJson(
              json['customerServiceInfo'] as Map<String, dynamic>),
      statusTimeline: (json['statusTimeline'] as List<dynamic>?)
              ?.map((e) => StatusTimeline.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$OrderDetailDataImplToJson(
        _$OrderDetailDataImpl instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'orderNo': instance.orderNo,
      'memberId': instance.memberId,
      'buyerId': instance.buyerId,
      'sellerId': instance.sellerId,
      'sellerName': instance.sellerName,
      'orderType': instance.orderType,
      'orderStatus': instance.orderStatus,
      'orderStatusText': instance.orderStatusText,
      'totalAmount': instance.totalAmount,
      'payAmount': instance.payAmount,
      'shippingFee': instance.shippingFee,
      'discountAmount': instance.discountAmount,
      'payType': instance.payType,
      'paymentMethod': instance.paymentMethod,
      'payTime': instance.payTime,
      'deliveryTime': instance.deliveryTime,
      'receiveTime': instance.receiveTime,
      'cancelTime': instance.cancelTime,
      'cancelReason': instance.cancelReason,
      'remark': instance.remark,
      'deliveryDays': instance.deliveryDays,
      'guaranteeType': instance.guaranteeType,
      'productType': instance.productType,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'orderItems': instance.orderItems,
      'payment': instance.payment,
      'refundApplication': instance.refundApplication,
      'conversationId': instance.conversationId,
      'buyerInfo': instance.buyerInfo,
      'sellerInfo': instance.sellerInfo,
      'customerServiceInfo': instance.customerServiceInfo,
      'statusTimeline': instance.statusTimeline,
    };

_$OrderDetailResponseImpl _$$OrderDetailResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderDetailResponseImpl(
      errCode: (json['errCode'] as num).toInt(),
      errMsg: json['errMsg'] as String,
      data: OrderDetailData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrderDetailResponseImplToJson(
        _$OrderDetailResponseImpl instance) =>
    <String, dynamic>{
      'errCode': instance.errCode,
      'errMsg': instance.errMsg,
      'data': instance.data,
    };
