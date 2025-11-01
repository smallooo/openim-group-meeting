// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guarantee_refund_confirm_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConfirmRefundRequestImpl _$$ConfirmRefundRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ConfirmRefundRequestImpl(
      refundNo: json['refundNo'] as String,
      sellerId: (json['sellerId'] as num).toInt(),
      confirmRemark: json['confirmRemark'] as String? ?? '商家确认退款，已向用户转账',
      refundAmount: (json['refundAmount'] as num).toDouble(),
      refundMethod: json['refundMethod'] as String? ?? '原路退回',
    );

Map<String, dynamic> _$$ConfirmRefundRequestImplToJson(
        _$ConfirmRefundRequestImpl instance) =>
    <String, dynamic>{
      'refundNo': instance.refundNo,
      'sellerId': instance.sellerId,
      'confirmRemark': instance.confirmRemark,
      'refundAmount': instance.refundAmount,
      'refundMethod': instance.refundMethod,
    };

_$ConfirmRefundResponseImpl _$$ConfirmRefundResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ConfirmRefundResponseImpl(
      code: (json['code'] as num?)?.toInt() ?? 0,
      message: json['message'] as String? ?? '',
      ok: json['ok'] as bool? ?? false,
      data: _confirmDataFromJson(json['data']),
    );

Map<String, dynamic> _$$ConfirmRefundResponseImplToJson(
        _$ConfirmRefundResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'ok': instance.ok,
      'data': instance.data,
    };

_$ConfirmRefundDataImpl _$$ConfirmRefundDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ConfirmRefundDataImpl(
      refundId: json['refundId'] as String? ?? '',
      refundNo: json['refundNo'] as String? ?? '',
      orderNo: json['orderNo'] as String? ?? '',
      refundStatus: json['refundStatus'] as String? ?? '',
      refundStatusText: json['refundStatusText'] as String? ?? '',
      orderStatus: (json['orderStatus'] as num?)?.toInt() ?? 0,
      orderStatusText: json['orderStatusText'] as String? ?? '',
      refundAmount: (json['refundAmount'] as num?)?.toDouble() ?? 0.0,
      paymentRefundId: json['paymentRefundId'] as String? ?? '',
      confirmTime: json['confirmTime'] as String? ?? '',
      confirmRemark: json['confirmRemark'] as String? ?? '',
      result: json['result'] as String? ?? '',
      message: json['message'] as String? ?? '',
      thirdPartyRefundNo: json['thirdPartyRefundNo'] as String? ?? '',
    );

Map<String, dynamic> _$$ConfirmRefundDataImplToJson(
        _$ConfirmRefundDataImpl instance) =>
    <String, dynamic>{
      'refundId': instance.refundId,
      'refundNo': instance.refundNo,
      'orderNo': instance.orderNo,
      'refundStatus': instance.refundStatus,
      'refundStatusText': instance.refundStatusText,
      'orderStatus': instance.orderStatus,
      'orderStatusText': instance.orderStatusText,
      'refundAmount': instance.refundAmount,
      'paymentRefundId': instance.paymentRefundId,
      'confirmTime': instance.confirmTime,
      'confirmRemark': instance.confirmRemark,
      'result': instance.result,
      'message': instance.message,
      'thirdPartyRefundNo': instance.thirdPartyRefundNo,
    };
