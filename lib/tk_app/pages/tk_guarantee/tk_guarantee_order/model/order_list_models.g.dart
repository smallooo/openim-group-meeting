// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_list_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderRecordImpl _$$OrderRecordImplFromJson(Map<String, dynamic> json) =>
    _$OrderRecordImpl(
      orderId: json['orderId'] as String,
      orderNo: json['orderNo'] as String,
      sellerName: json['sellerName'] as String? ?? "",
      totalAmount: (json['totalAmount'] as num).toDouble(),
      payAmount: (json['payAmount'] as num).toDouble(),
      orderStatus: (json['orderStatus'] as num).toInt(),
      orderStatusText: json['orderStatusText'] as String,
      productName: json['productName'] as String,
      productPic:
          json['productPic'] as String? ?? "https://example.com/image.jpg",
      productCount: (json['productCount'] as num?)?.toInt() ?? 1,
      createdAt: json['createdAt'] as String,
      payTime: json['payTime'] as String? ?? "",
      deliveryTime: json['deliveryTime'] as String? ?? "",
      receiveTime: json['receiveTime'] as String? ?? "",
      cancelTime: json['cancelTime'] as String? ?? "",
      updatedAt: json['updatedAt'] as String,
      buyerName: json['buyerName'] as String? ?? "",
      buyerAvatar: json['buyerAvatar'] as String? ?? "",
    );

Map<String, dynamic> _$$OrderRecordImplToJson(_$OrderRecordImpl instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'orderNo': instance.orderNo,
      'sellerName': instance.sellerName,
      'totalAmount': instance.totalAmount,
      'payAmount': instance.payAmount,
      'orderStatus': instance.orderStatus,
      'orderStatusText': instance.orderStatusText,
      'productName': instance.productName,
      'productPic': instance.productPic,
      'productCount': instance.productCount,
      'createdAt': instance.createdAt,
      'payTime': instance.payTime,
      'deliveryTime': instance.deliveryTime,
      'receiveTime': instance.receiveTime,
      'cancelTime': instance.cancelTime,
      'updatedAt': instance.updatedAt,
      'buyerName': instance.buyerName,
      'buyerAvatar': instance.buyerAvatar,
    };

_$OrderListDataImpl _$$OrderListDataImplFromJson(Map<String, dynamic> json) =>
    _$OrderListDataImpl(
      records: (json['records'] as List<dynamic>)
          .map((e) => OrderRecord.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as String,
      size: json['size'] as String,
      current: json['current'] as String,
      pages: json['pages'] as String,
      hasNext: json['hasNext'] as bool,
      hasPrevious: json['hasPrevious'] as bool,
      isEmpty: json['isEmpty'] as bool,
      isFirst: json['isFirst'] as bool,
      isLast: json['isLast'] as bool,
    );

Map<String, dynamic> _$$OrderListDataImplToJson(_$OrderListDataImpl instance) =>
    <String, dynamic>{
      'records': instance.records,
      'total': instance.total,
      'size': instance.size,
      'current': instance.current,
      'pages': instance.pages,
      'hasNext': instance.hasNext,
      'hasPrevious': instance.hasPrevious,
      'isEmpty': instance.isEmpty,
      'isFirst': instance.isFirst,
      'isLast': instance.isLast,
    };

_$OrderListResponseImpl _$$OrderListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderListResponseImpl(
      errCode: (json['errCode'] as num).toInt(),
      errMsg: json['errMsg'] as String,
      data: OrderListData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrderListResponseImplToJson(
        _$OrderListResponseImpl instance) =>
    <String, dynamic>{
      'errCode': instance.errCode,
      'errMsg': instance.errMsg,
      'data': instance.data,
    };
