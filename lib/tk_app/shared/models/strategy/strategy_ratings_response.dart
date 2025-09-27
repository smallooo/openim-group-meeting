import 'package:freezed_annotation/freezed_annotation.dart';

part 'strategy_ratings_response.freezed.dart';
part 'strategy_ratings_response.g.dart';

/// 策略评价列表响应
@freezed
class StrategyRatingsResponse with _$StrategyRatingsResponse {
  const factory StrategyRatingsResponse({
    @JsonKey(name: 'errCode') required int errCode,
    @JsonKey(name: 'errMsg') required String errMsg,
    @JsonKey(name: 'data') required StrategyRatingsData data,
  }) = _StrategyRatingsResponse;

  factory StrategyRatingsResponse.fromJson(Map<String, dynamic> json) =>
      _$StrategyRatingsResponseFromJson(json);
}

/// 策略评价数据
@freezed
class StrategyRatingsData with _$StrategyRatingsData {
  const factory StrategyRatingsData({
    @JsonKey(name: 'total') required String total,
    @JsonKey(name: 'ratingDistribution') required Map<String, int> ratingDistribution,
    @JsonKey(name: 'records') required List<StrategyRatingRecord> records,
    @JsonKey(name: 'avgRating') required double avgRating,
  }) = _StrategyRatingsData;

  factory StrategyRatingsData.fromJson(Map<String, dynamic> json) =>
      _$StrategyRatingsDataFromJson(json);
}

/// 策略评价记录
@freezed
class StrategyRatingRecord with _$StrategyRatingRecord {
  const factory StrategyRatingRecord({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'strategyId') required String strategyId,
    @JsonKey(name: 'memberId') required String memberId,
    @JsonKey(name: 'rating') required int rating,
    @JsonKey(name: 'comment') required String comment,
    @JsonKey(name: 'status') required int status,
    @JsonKey(name: 'version') required String version,
    @JsonKey(name: 'isDeleted') required int isDeleted,
    @JsonKey(name: 'createdBy') required String createdBy,
    @JsonKey(name: 'updatedBy') required String updatedBy,
    @JsonKey(name: 'createdAt') required String createdAt,
    @JsonKey(name: 'updatedAt') required String updatedAt,
  }) = _StrategyRatingRecord;

  factory StrategyRatingRecord.fromJson(Map<String, dynamic> json) =>
      _$StrategyRatingRecordFromJson(json);
}
