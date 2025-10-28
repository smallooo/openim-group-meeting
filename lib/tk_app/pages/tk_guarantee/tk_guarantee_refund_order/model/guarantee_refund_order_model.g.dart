// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guarantee_refund_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RefundRecordImpl _$$RefundRecordImplFromJson(Map<String, dynamic> json) =>
    _$RefundRecordImpl(
      id: json['id'] as String,
      refundNo: json['refundNo'] as String,
      orderId: json['orderId'] as String,
      orderNo: json['orderNo'] as String,
      refundType: json['refundType'] as String,
      refundAmount: (json['refundAmount'] as num).toDouble(),
      refundReason: json['refundReason'] as String,
      description: json['description'] as String? ?? '',
      evidenceImages: json['evidenceImages'] as String? ?? '',
      evidenceVideos: json['evidenceVideos'] as String? ?? '',
      evidenceFiles: json['evidenceFiles'] as String? ?? '',
      status: json['status'] as String,
      statusText: json['statusText'] as String,
      reviewTime: json['reviewTime'] as String? ?? '',
      reviewerName: json['reviewerName'] as String? ?? '',
      reviewRemark: json['reviewRemark'] as String? ?? '',
      reviewComment: json['reviewComment'] as String? ?? '',
      completeTime: json['completeTime'] as String? ?? '',
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$RefundRecordImplToJson(_$RefundRecordImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'refundNo': instance.refundNo,
      'orderId': instance.orderId,
      'orderNo': instance.orderNo,
      'refundType': instance.refundType,
      'refundAmount': instance.refundAmount,
      'refundReason': instance.refundReason,
      'description': instance.description,
      'evidenceImages': instance.evidenceImages,
      'evidenceVideos': instance.evidenceVideos,
      'evidenceFiles': instance.evidenceFiles,
      'status': instance.status,
      'statusText': instance.statusText,
      'reviewTime': instance.reviewTime,
      'reviewerName': instance.reviewerName,
      'reviewRemark': instance.reviewRemark,
      'reviewComment': instance.reviewComment,
      'completeTime': instance.completeTime,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$RefundListDataImpl _$$RefundListDataImplFromJson(Map<String, dynamic> json) =>
    _$RefundListDataImpl(
      records: (json['records'] as List<dynamic>)
          .map((e) => RefundRecord.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$$RefundListDataImplToJson(
        _$RefundListDataImpl instance) =>
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

_$RefundListResponseImpl _$$RefundListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RefundListResponseImpl(
      code: (json['code'] as num).toInt(),
      message: json['message'] as String,
      ok: json['ok'] as bool,
      data: RefundListData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RefundListResponseImplToJson(
        _$RefundListResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'ok': instance.ok,
      'data': instance.data,
    };
