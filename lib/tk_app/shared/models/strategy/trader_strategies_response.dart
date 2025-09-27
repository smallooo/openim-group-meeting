import 'package:freezed_annotation/freezed_annotation.dart';
import 'trader_strategy_pagination_data.dart';

part 'trader_strategies_response.freezed.dart';
part 'trader_strategies_response.g.dart';

/// 交易员策略响应模型
@freezed
class TraderStrategiesResponse with _$TraderStrategiesResponse {
  const factory TraderStrategiesResponse({
    /// 错误码
    @JsonKey(name: 'errCode') required int errCode,
    
    /// 错误信息
    @JsonKey(name: 'errMsg') required String errMsg,
    
    /// 响应数据
    @JsonKey(name: 'data') required TraderStrategyPaginationData data,
  }) = _TraderStrategiesResponse;

  factory TraderStrategiesResponse.fromJson(Map<String, dynamic> json) => 
      _$TraderStrategiesResponseFromJson(json);
}
