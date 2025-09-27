import 'package:freezed_annotation/freezed_annotation.dart';

part 'strategy_rating_request.freezed.dart';
part 'strategy_rating_request.g.dart';

/// 策略评价请求
@freezed
class StrategyRatingRequest with _$StrategyRatingRequest {
  const factory StrategyRatingRequest({
    @JsonKey(name: 'rating') required int rating,
    @JsonKey(name: 'comment') required String comment,
  }) = _StrategyRatingRequest;

  factory StrategyRatingRequest.fromJson(Map<String, dynamic> json) =>
      _$StrategyRatingRequestFromJson(json);
}

/// 策略评价响应
@freezed
class StrategyRatingResponse with _$StrategyRatingResponse {
  const factory StrategyRatingResponse({
    @JsonKey(name: 'errCode') required int errCode,
    @JsonKey(name: 'errMsg') required String errMsg,
  }) = _StrategyRatingResponse;

  factory StrategyRatingResponse.fromJson(Map<String, dynamic> json) =>
      _$StrategyRatingResponseFromJson(json);
}
