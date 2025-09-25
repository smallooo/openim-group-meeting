// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trader_status_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TraderStatusResponseImpl _$$TraderStatusResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TraderStatusResponseImpl(
      errCode: (json['errCode'] as num).toInt(),
      errMsg: json['errMsg'] as String,
      data: TraderStatusData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TraderStatusResponseImplToJson(
        _$TraderStatusResponseImpl instance) =>
    <String, dynamic>{
      'errCode': instance.errCode,
      'errMsg': instance.errMsg,
      'data': instance.data,
    };

_$TraderStatusDataImpl _$$TraderStatusDataImplFromJson(
        Map<String, dynamic> json) =>
    _$TraderStatusDataImpl(
      isTrader: json['isTrader'] as bool,
      traderId: json['traderId'] as String,
      traderName: json['traderName'] as String,
      traderAvatar: json['traderAvatar'] as String,
    );

Map<String, dynamic> _$$TraderStatusDataImplToJson(
        _$TraderStatusDataImpl instance) =>
    <String, dynamic>{
      'isTrader': instance.isTrader,
      'traderId': instance.traderId,
      'traderName': instance.traderName,
      'traderAvatar': instance.traderAvatar,
    };
