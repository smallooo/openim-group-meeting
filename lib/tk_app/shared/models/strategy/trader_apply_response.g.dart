// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trader_apply_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TraderApplyResponseImpl _$$TraderApplyResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TraderApplyResponseImpl(
      errCode: (json['errCode'] as num).toInt(),
      errMsg: json['errMsg'] as String,
      data: TraderApplyData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TraderApplyResponseImplToJson(
        _$TraderApplyResponseImpl instance) =>
    <String, dynamic>{
      'errCode': instance.errCode,
      'errMsg': instance.errMsg,
      'data': instance.data,
    };

_$TraderApplyDataImpl _$$TraderApplyDataImplFromJson(
        Map<String, dynamic> json) =>
    _$TraderApplyDataImpl(
      traderId: json['traderId'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$$TraderApplyDataImplToJson(
        _$TraderApplyDataImpl instance) =>
    <String, dynamic>{
      'traderId': instance.traderId,
      'status': instance.status,
    };
