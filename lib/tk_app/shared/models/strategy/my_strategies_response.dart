import 'package:freezed_annotation/freezed_annotation.dart';
import 'strategy_pagination_data.dart';

part 'my_strategies_response.freezed.dart';
part 'my_strategies_response.g.dart';

/// 我的策略响应模型
@freezed
class MyStrategiesResponse with _$MyStrategiesResponse {
  const factory MyStrategiesResponse({
    /// 错误码
    @JsonKey(name: 'errCode') required int errCode,
    
    /// 错误信息
    @JsonKey(name: 'errMsg') required String errMsg,
    
    /// 响应数据
    @JsonKey(name: 'data') required StrategyPaginationData data,
  }) = _MyStrategiesResponse;

  factory MyStrategiesResponse.fromJson(Map<String, dynamic> json) => 
      _$MyStrategiesResponseFromJson(json);
}
