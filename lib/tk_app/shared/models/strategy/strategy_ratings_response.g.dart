// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'strategy_ratings_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StrategyRatingsResponseImpl _$$StrategyRatingsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$StrategyRatingsResponseImpl(
      errCode: (json['errCode'] as num).toInt(),
      errMsg: json['errMsg'] as String,
      data: StrategyRatingsData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StrategyRatingsResponseImplToJson(
        _$StrategyRatingsResponseImpl instance) =>
    <String, dynamic>{
      'errCode': instance.errCode,
      'errMsg': instance.errMsg,
      'data': instance.data,
    };

_$StrategyRatingsDataImpl _$$StrategyRatingsDataImplFromJson(
        Map<String, dynamic> json) =>
    _$StrategyRatingsDataImpl(
      total: json['total'] as String,
      ratingDistribution:
          Map<String, int>.from(json['ratingDistribution'] as Map),
      records: (json['records'] as List<dynamic>)
          .map((e) => StrategyRatingRecord.fromJson(e as Map<String, dynamic>))
          .toList(),
      avgRating: (json['avgRating'] as num).toDouble(),
    );

Map<String, dynamic> _$$StrategyRatingsDataImplToJson(
        _$StrategyRatingsDataImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'ratingDistribution': instance.ratingDistribution,
      'records': instance.records,
      'avgRating': instance.avgRating,
    };

_$StrategyRatingRecordImpl _$$StrategyRatingRecordImplFromJson(
        Map<String, dynamic> json) =>
    _$StrategyRatingRecordImpl(
      id: json['id'] as String,
      strategyId: json['strategyId'] as String,
      memberId: json['memberId'] as String,
      rating: (json['rating'] as num).toInt(),
      comment: json['comment'] as String,
      status: (json['status'] as num).toInt(),
      version: json['version'] as String,
      isDeleted: (json['isDeleted'] as num).toInt(),
      createdBy: json['createdBy'] as String,
      updatedBy: json['updatedBy'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$StrategyRatingRecordImplToJson(
        _$StrategyRatingRecordImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'strategyId': instance.strategyId,
      'memberId': instance.memberId,
      'rating': instance.rating,
      'comment': instance.comment,
      'status': instance.status,
      'version': instance.version,
      'isDeleted': instance.isDeleted,
      'createdBy': instance.createdBy,
      'updatedBy': instance.updatedBy,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
