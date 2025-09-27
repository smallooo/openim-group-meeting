// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trader_strategy_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TraderStrategyItemImpl _$$TraderStrategyItemImplFromJson(
        Map<String, dynamic> json) =>
    _$TraderStrategyItemImpl(
      id: json['id'] as String,
      traderId: json['traderId'] as String,
      title: json['title'] as String,
      summary: json['summary'] as String,
      content: json['content'] as String,
      coinSymbol: json['coinSymbol'] as String,
      marketType: json['marketType'] as String,
      strategyType: (json['strategyType'] as num).toInt(),
      priceType: (json['priceType'] as num).toInt(),
      targetPrice: json['targetPrice'] as String,
      takeProfitPrice: json['takeProfitPrice'] as String,
      stopLossPrice: json['stopLossPrice'] as String,
      validFrom: json['validFrom'] as String,
      validTo: json['validTo'] as String,
      viewCount: json['viewCount'] as String,
      followCount: (json['followCount'] as num).toInt(),
      avgRating: (json['avgRating'] as num).toDouble(),
      ratingCount: (json['ratingCount'] as num).toInt(),
      status: (json['status'] as num).toInt(),
      createdAt: json['createdAt'] as String,
      isSubscribed: json['isSubscribed'] as bool,
    );

Map<String, dynamic> _$$TraderStrategyItemImplToJson(
        _$TraderStrategyItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'traderId': instance.traderId,
      'title': instance.title,
      'summary': instance.summary,
      'content': instance.content,
      'coinSymbol': instance.coinSymbol,
      'marketType': instance.marketType,
      'strategyType': instance.strategyType,
      'priceType': instance.priceType,
      'targetPrice': instance.targetPrice,
      'takeProfitPrice': instance.takeProfitPrice,
      'stopLossPrice': instance.stopLossPrice,
      'validFrom': instance.validFrom,
      'validTo': instance.validTo,
      'viewCount': instance.viewCount,
      'followCount': instance.followCount,
      'avgRating': instance.avgRating,
      'ratingCount': instance.ratingCount,
      'status': instance.status,
      'createdAt': instance.createdAt,
      'isSubscribed': instance.isSubscribed,
    };
