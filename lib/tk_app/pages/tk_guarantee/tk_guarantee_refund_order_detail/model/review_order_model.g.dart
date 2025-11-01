// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApproveRefundResponseImpl _$$ApproveRefundResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ApproveRefundResponseImpl(
      code: (json['code'] as num?)?.toInt() ?? 0,
      message: json['message'] as String? ?? '',
      ok: json['ok'] as bool? ?? false,
      data: _approveDataFromJson(json['data']),
    );

Map<String, dynamic> _$$ApproveRefundResponseImplToJson(
        _$ApproveRefundResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'ok': instance.ok,
      'data': instance.data,
    };

_$ApproveRefundDataImpl _$$ApproveRefundDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ApproveRefundDataImpl(
      id: json['id'] as String? ?? '',
      refundNo: json['refundNo'] as String? ?? '',
      orderId: json['orderId'] as String? ?? '',
      orderNo: json['orderNo'] as String? ?? '',
      refundType: json['refundType'] as String? ?? '',
      refundAmount: (json['refundAmount'] as num?)?.toDouble() ?? 0.0,
      refundReason: json['refundReason'] as String? ?? '',
      description: json['description'] as String? ?? '',
      evidenceImages: json['evidenceImages'] as String? ?? '',
      evidenceVideos: json['evidenceVideos'] as String? ?? '',
      evidenceFiles: json['evidenceFiles'] as String? ?? '',
      status: json['status'] as String? ?? '',
      statusText: json['statusText'] as String? ?? '',
      reviewTime: json['reviewTime'] as String? ?? '',
      reviewerName: json['reviewerName'] as String? ?? '',
      reviewRemark: json['reviewRemark'] as String? ?? '',
      reviewComment: json['reviewComment'] as String? ?? '',
      completeTime: json['completeTime'] as String? ?? '',
      createdAt: json['createdAt'] as String? ?? '',
      updatedAt: json['updatedAt'] as String? ?? '',
    );

Map<String, dynamic> _$$ApproveRefundDataImplToJson(
        _$ApproveRefundDataImpl instance) =>
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
