// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'strategy_publish_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StrategyPublishDataImpl _$$StrategyPublishDataImplFromJson(
        Map<String, dynamic> json) =>
    _$StrategyPublishDataImpl(
      strategyId: json['strategyId'] as String,
    );

Map<String, dynamic> _$$StrategyPublishDataImplToJson(
        _$StrategyPublishDataImpl instance) =>
    <String, dynamic>{
      'strategyId': instance.strategyId,
    };

_$StrategyPublishResponseImpl _$$StrategyPublishResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$StrategyPublishResponseImpl(
      errCode: (json['errCode'] as num).toInt(),
      errMsg: json['errMsg'] as String,
      data: StrategyPublishData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StrategyPublishResponseImplToJson(
        _$StrategyPublishResponseImpl instance) =>
    <String, dynamic>{
      'errCode': instance.errCode,
      'errMsg': instance.errMsg,
      'data': instance.data,
    };
