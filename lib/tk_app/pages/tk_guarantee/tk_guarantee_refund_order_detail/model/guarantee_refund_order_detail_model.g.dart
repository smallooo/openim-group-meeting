// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guarantee_refund_order_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RefundDetailResponseImpl _$$RefundDetailResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RefundDetailResponseImpl(
      code: (json['code'] as num?)?.toInt() ?? 0,
      message: json['message'] as String? ?? '',
      ok: json['ok'] as bool? ?? true,
      data: RefundDetailData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RefundDetailResponseImplToJson(
        _$RefundDetailResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'ok': instance.ok,
      'data': instance.data,
    };

_$RefundDetailDataImpl _$$RefundDetailDataImplFromJson(
        Map<String, dynamic> json) =>
    _$RefundDetailDataImpl(
      id: json['id'] as String,
      refundNo: json['refundNo'] as String,
      orderId: json['orderId'] as String,
      orderNo: json['orderNo'] as String,
      refundType: json['refundType'] as String,
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

Map<String, dynamic> _$$RefundDetailDataImplToJson(
        _$RefundDetailDataImpl instance) =>
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

_$CancelRefundResponseImpl _$$CancelRefundResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CancelRefundResponseImpl(
      code: (json['code'] as num?)?.toInt() ?? 0,
      message: json['message'] as String? ?? '',
      ok: json['ok'] as bool? ?? false,
      data: _cancelDataFromJson(json['data']),
    );

Map<String, dynamic> _$$CancelRefundResponseImplToJson(
        _$CancelRefundResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'ok': instance.ok,
      'data': instance.data,
    };

_$CancelRefundDataImpl _$$CancelRefundDataImplFromJson(
        Map<String, dynamic> json) =>
    _$CancelRefundDataImpl(
      result: json['result'] as String? ?? '',
      message: json['message'] as String? ?? '',
      refundId: json['refundId'] as String? ?? '',
      refundNo: json['refundNo'] as String? ?? '',
      cancelTime: json['cancelTime'] as String? ?? '',
      cancelReason: json['cancelReason'] as String? ?? '',
    );

Map<String, dynamic> _$$CancelRefundDataImplToJson(
        _$CancelRefundDataImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
      'message': instance.message,
      'refundId': instance.refundId,
      'refundNo': instance.refundNo,
      'cancelTime': instance.cancelTime,
      'cancelReason': instance.cancelReason,
    };
