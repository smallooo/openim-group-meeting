import 'package:freezed_annotation/freezed_annotation.dart';

part 'strategy_publish_response.freezed.dart';
part 'strategy_publish_response.g.dart';

/// 策略发布响应数据模型
@freezed
class StrategyPublishData with _$StrategyPublishData {
  const factory StrategyPublishData({
    /// 策略ID
    @JsonKey(name: 'strategyId') required String strategyId,
  }) = _StrategyPublishData;

  factory StrategyPublishData.fromJson(Map<String, dynamic> json) => 
      _$StrategyPublishDataFromJson(json);
}

/// 策略发布响应模型
@freezed
class StrategyPublishResponse with _$StrategyPublishResponse {
  const factory StrategyPublishResponse({
    /// 错误码
    @JsonKey(name: 'errCode') required int errCode,
    
    /// 错误信息
    @JsonKey(name: 'errMsg') required String errMsg,
    
    /// 响应数据
    @JsonKey(name: 'data') required StrategyPublishData data,
  }) = _StrategyPublishResponse;

  factory StrategyPublishResponse.fromJson(Map<String, dynamic> json) => 
      _$StrategyPublishResponseFromJson(json);
}
