// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trader_strategies_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TraderStrategiesResponseImpl _$$TraderStrategiesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TraderStrategiesResponseImpl(
      errCode: (json['errCode'] as num).toInt(),
      errMsg: json['errMsg'] as String,
      data: TraderStrategyPaginationData.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TraderStrategiesResponseImplToJson(
        _$TraderStrategiesResponseImpl instance) =>
    <String, dynamic>{
      'errCode': instance.errCode,
      'errMsg': instance.errMsg,
      'data': instance.data,
    };
