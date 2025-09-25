// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_strategies_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyStrategiesResponseImpl _$$MyStrategiesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$MyStrategiesResponseImpl(
      errCode: (json['errCode'] as num).toInt(),
      errMsg: json['errMsg'] as String,
      data:
          StrategyPaginationData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MyStrategiesResponseImplToJson(
        _$MyStrategiesResponseImpl instance) =>
    <String, dynamic>{
      'errCode': instance.errCode,
      'errMsg': instance.errMsg,
      'data': instance.data,
    };
