// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderItemImpl _$$OrderItemImplFromJson(Map<String, dynamic> json) =>
    _$OrderItemImpl(
      productId: (json['productId'] as num?)?.toInt() ?? 1001,
      skuId: (json['skuId'] as num?)?.toInt() ?? 2001,
      quantity: (json['quantity'] as num?)?.toInt() ?? 1,
      productName: json['productName'] as String,
      productImage:
          json['productImage'] as String? ?? "https://example.com/image.jpg",
      productDescription: json['productDescription'] as String,
      unitPrice: (json['unitPrice'] as num).toDouble(),
      totalPrice: (json['totalPrice'] as num).toDouble(),
      originalPrice: (json['originalPrice'] as num).toDouble(),
      skuAttributes: json['skuAttributes'] as String? ??
          "{\"color\":\"红色\",\"size\":\"L\"}",
      skuCode: json['skuCode'] as String? ?? "SKU001",
      productCode: json['productCode'] as String? ?? "PROD001",
      brand: json['brand'] as String? ?? "Apple",
      category: json['category'] as String,
      weight: (json['weight'] as num?)?.toDouble() ?? 0.2,
      volume: (json['volume'] as num?)?.toDouble() ?? 0.001,
    );

Map<String, dynamic> _$$OrderItemImplToJson(_$OrderItemImpl instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'skuId': instance.skuId,
      'quantity': instance.quantity,
      'productName': instance.productName,
      'productImage': instance.productImage,
      'productDescription': instance.productDescription,
      'unitPrice': instance.unitPrice,
      'totalPrice': instance.totalPrice,
      'originalPrice': instance.originalPrice,
      'skuAttributes': instance.skuAttributes,
      'skuCode': instance.skuCode,
      'productCode': instance.productCode,
      'brand': instance.brand,
      'category': instance.category,
      'weight': instance.weight,
      'volume': instance.volume,
    };

_$CreateOrderRequestImpl _$$CreateOrderRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateOrderRequestImpl(
      userOpenimUserId: json['userOpenimUserId'] as String? ?? "",
      sellerId: (json['sellerId'] as num?)?.toInt() ?? 1001,
      sellerName: json['sellerName'] as String? ?? "张三",
      sellerOpenimUserId: json['sellerOpenimUserId'] as String? ?? "",
      serviceOpenimUserId: json['serviceOpenimUserId'] as String? ?? "",
      orderType: json['orderType'] as String? ?? "B2C",
      payType: (json['payType'] as num?)?.toInt() ?? 1,
      paymentMethod: json['paymentMethod'] as String? ?? "alipay",
      currencyId: (json['currencyId'] as num?)?.toInt() ?? 7,
      remark: json['remark'] as String? ?? "客服协助下单",
      deliveryDays: (json['deliveryDays'] as num?)?.toInt() ?? 3,
      guaranteeType: json['guaranteeType'] as String? ?? "escrow",
      productType: json['productType'] as String? ?? "physical",
      totalAmount: (json['totalAmount'] as num).toDouble(),
      payAmount: (json['payAmount'] as num).toDouble(),
      shippingFee: (json['shippingFee'] as num?)?.toDouble() ?? 10,
      discountAmount: (json['discountAmount'] as num?)?.toDouble() ?? 20,
      actualPaymentAmount: (json['actualPaymentAmount'] as num).toDouble(),
      priceAdjustmentId:
          json['priceAdjustmentId'] as String? ?? "adj_123456789",
      conversationId: json['conversationId'] as String? ?? "conv_123456789",
      customerServiceId: (json['customerServiceId'] as num?)?.toInt() ?? 0,
      orderItems: (json['orderItems'] as List<dynamic>)
          .map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      memberId: (json['memberId'] as num?)?.toInt() ?? 0,
      buyerId: (json['buyerId'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$CreateOrderRequestImplToJson(
        _$CreateOrderRequestImpl instance) =>
    <String, dynamic>{
      'userOpenimUserId': instance.userOpenimUserId,
      'sellerId': instance.sellerId,
      'sellerName': instance.sellerName,
      'sellerOpenimUserId': instance.sellerOpenimUserId,
      'serviceOpenimUserId': instance.serviceOpenimUserId,
      'orderType': instance.orderType,
      'payType': instance.payType,
      'paymentMethod': instance.paymentMethod,
      'currencyId': instance.currencyId,
      'remark': instance.remark,
      'deliveryDays': instance.deliveryDays,
      'guaranteeType': instance.guaranteeType,
      'productType': instance.productType,
      'totalAmount': instance.totalAmount,
      'payAmount': instance.payAmount,
      'shippingFee': instance.shippingFee,
      'discountAmount': instance.discountAmount,
      'actualPaymentAmount': instance.actualPaymentAmount,
      'priceAdjustmentId': instance.priceAdjustmentId,
      'conversationId': instance.conversationId,
      'customerServiceId': instance.customerServiceId,
      'orderItems': instance.orderItems,
      'memberId': instance.memberId,
      'buyerId': instance.buyerId,
    };

_$OrderDataImpl _$$OrderDataImplFromJson(Map<String, dynamic> json) =>
    _$OrderDataImpl(
      orderId: json['orderId'] as String,
      orderNo: json['orderNo'] as String,
      totalAmount: (json['totalAmount'] as num).toDouble(),
      payAmount: (json['payAmount'] as num).toDouble(),
      payType: (json['payType'] as num).toInt(),
      paymentMethod: json['paymentMethod'] as String,
      orderStatus: (json['orderStatus'] as num).toInt(),
      orderStatusText: json['orderStatusText'] as String,
      createdAt: json['createdAt'] as String,
      paymentLink: json['paymentLink'] as String,
      expireTime: json['expireTime'] as String,
    );

Map<String, dynamic> _$$OrderDataImplToJson(_$OrderDataImpl instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'orderNo': instance.orderNo,
      'totalAmount': instance.totalAmount,
      'payAmount': instance.payAmount,
      'payType': instance.payType,
      'paymentMethod': instance.paymentMethod,
      'orderStatus': instance.orderStatus,
      'orderStatusText': instance.orderStatusText,
      'createdAt': instance.createdAt,
      'paymentLink': instance.paymentLink,
      'expireTime': instance.expireTime,
    };

_$CreateOrderResponseImpl _$$CreateOrderResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateOrderResponseImpl(
      errCode: (json['errCode'] as num).toInt(),
      errMsg: json['errMsg'] as String,
      data: OrderData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateOrderResponseImplToJson(
        _$CreateOrderResponseImpl instance) =>
    <String, dynamic>{
      'errCode': instance.errCode,
      'errMsg': instance.errMsg,
      'data': instance.data,
    };

_$PaymentDataImpl _$$PaymentDataImplFromJson(Map<String, dynamic> json) =>
    _$PaymentDataImpl(
      id: json['id'] as String,
      paymentId: json['paymentId'] as String,
      amount: (json['amount'] as num).toDouble(),
      payType: (json['payType'] as num).toInt(),
      paymentMethod: json['paymentMethod'] as String,
      status: json['status'] as String,
      statusText: json['statusText'] as String,
      transactionId: json['transactionId'] as String,
      paymentUrl: json['paymentUrl'] as String,
      qrCode: json['qrCode'] as String,
      payTime: json['payTime'] as String,
      expireTime: json['expireTime'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      thirdPartyOrderNo: json['thirdPartyOrderNo'] as String,
    );

Map<String, dynamic> _$$PaymentDataImplToJson(_$PaymentDataImpl instance) =>
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

_$PaymentResponseImpl _$$PaymentResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentResponseImpl(
      errCode: (json['errCode'] as num).toInt(),
      errMsg: json['errMsg'] as String,
      data: PaymentData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PaymentResponseImplToJson(
        _$PaymentResponseImpl instance) =>
    <String, dynamic>{
      'errCode': instance.errCode,
      'errMsg': instance.errMsg,
      'data': instance.data,
    };
