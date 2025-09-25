// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'strategy_pagination_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StrategyPaginationDataImpl _$$StrategyPaginationDataImplFromJson(
        Map<String, dynamic> json) =>
    _$StrategyPaginationDataImpl(
      records: (json['records'] as List<dynamic>)
          .map((e) => StrategyItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as String,
      size: json['size'] as String,
      current: json['current'] as String,
      orders: (json['orders'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      optimizeCountSql: json['optimizeCountSql'] as bool,
      searchCount: json['searchCount'] as bool,
      maxLimit: json['maxLimit'] as String,
      countId: json['countId'] as String,
      pages: json['pages'] as String,
    );

Map<String, dynamic> _$$StrategyPaginationDataImplToJson(
        _$StrategyPaginationDataImpl instance) =>
    <String, dynamic>{
      'records': instance.records,
      'total': instance.total,
      'size': instance.size,
      'current': instance.current,
      'orders': instance.orders,
      'optimizeCountSql': instance.optimizeCountSql,
      'searchCount': instance.searchCount,
      'maxLimit': instance.maxLimit,
      'countId': instance.countId,
      'pages': instance.pages,
    };
