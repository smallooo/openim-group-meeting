// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'strategy_publish_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StrategyPublishRequestImpl _$$StrategyPublishRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$StrategyPublishRequestImpl(
      traderId: (json['traderId'] as num).toInt(),
      title: json['title'] as String,
      summary: json['summary'] as String,
      content: json['content'] as String,
      coinSymbol: json['coinSymbol'] as String,
      strategyType: (json['strategyType'] as num).toInt(),
      priceType: (json['priceType'] as num).toInt(),
      targetPrice: (json['targetPrice'] as num).toDouble(),
      takeProfitPrice: (json['takeProfitPrice'] as num).toDouble(),
      stopLossPrice: (json['stopLossPrice'] as num).toDouble(),
      validFrom: json['validFrom'] as String,
      validTo: json['validTo'] as String,
    );

Map<String, dynamic> _$$StrategyPublishRequestImplToJson(
        _$StrategyPublishRequestImpl instance) =>
    <String, dynamic>{
      'traderId': instance.traderId,
      'title': instance.title,
      'summary': instance.summary,
      'content': instance.content,
      'coinSymbol': instance.coinSymbol,
      'strategyType': instance.strategyType,
      'priceType': instance.priceType,
      'targetPrice': instance.targetPrice,
      'takeProfitPrice': instance.takeProfitPrice,
      'stopLossPrice': instance.stopLossPrice,
      'validFrom': instance.validFrom,
      'validTo': instance.validTo,
    };
