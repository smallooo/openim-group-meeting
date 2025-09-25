// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'strategy_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StrategyDetailResponseImpl _$$StrategyDetailResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$StrategyDetailResponseImpl(
      errCode: (json['errCode'] as num).toInt(),
      errMsg: json['errMsg'] as String,
      data: StrategyDetailData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StrategyDetailResponseImplToJson(
        _$StrategyDetailResponseImpl instance) =>
    <String, dynamic>{
      'errCode': instance.errCode,
      'errMsg': instance.errMsg,
      'data': instance.data,
    };
