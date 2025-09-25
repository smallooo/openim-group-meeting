// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'strategy_detail_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StrategyDetailDataImpl _$$StrategyDetailDataImplFromJson(
        Map<String, dynamic> json) =>
    _$StrategyDetailDataImpl(
      id: json['id'] as String,
      traderId: json['traderId'] as String,
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
      viewCount: json['viewCount'] as String,
      followCount: (json['followCount'] as num).toInt(),
      avgRating: (json['avgRating'] as num).toDouble(),
      ratingCount: (json['ratingCount'] as num).toInt(),
      status: (json['status'] as num).toInt(),
      version: json['version'] as String,
      isDeleted: (json['isDeleted'] as num).toInt(),
      createdBy: json['createdBy'] as String?,
      updatedBy: json['updatedBy'] as String?,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$StrategyDetailDataImplToJson(
        _$StrategyDetailDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
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
      'viewCount': instance.viewCount,
      'followCount': instance.followCount,
      'avgRating': instance.avgRating,
      'ratingCount': instance.ratingCount,
      'status': instance.status,
      'version': instance.version,
      'isDeleted': instance.isDeleted,
      'createdBy': instance.createdBy,
      'updatedBy': instance.updatedBy,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
