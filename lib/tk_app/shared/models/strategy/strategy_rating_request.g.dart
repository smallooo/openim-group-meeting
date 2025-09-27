// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'strategy_rating_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StrategyRatingRequestImpl _$$StrategyRatingRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$StrategyRatingRequestImpl(
      rating: (json['rating'] as num).toInt(),
      comment: json['comment'] as String,
    );

Map<String, dynamic> _$$StrategyRatingRequestImplToJson(
        _$StrategyRatingRequestImpl instance) =>
    <String, dynamic>{
      'rating': instance.rating,
      'comment': instance.comment,
    };

_$StrategyRatingResponseImpl _$$StrategyRatingResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$StrategyRatingResponseImpl(
      errCode: (json['errCode'] as num).toInt(),
      errMsg: json['errMsg'] as String,
    );

Map<String, dynamic> _$$StrategyRatingResponseImplToJson(
        _$StrategyRatingResponseImpl instance) =>
    <String, dynamic>{
      'errCode': instance.errCode,
      'errMsg': instance.errMsg,
    };
