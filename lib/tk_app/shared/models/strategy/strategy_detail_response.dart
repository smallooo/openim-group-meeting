import 'package:freezed_annotation/freezed_annotation.dart';
import 'strategy_detail_data.dart';

part 'strategy_detail_response.freezed.dart';
part 'strategy_detail_response.g.dart';

/// 策略详情响应模型
@freezed
class StrategyDetailResponse with _$StrategyDetailResponse {
  const factory StrategyDetailResponse({
    /// 错误码
    @JsonKey(name: 'errCode') required int errCode,
    
    /// 错误信息
    @JsonKey(name: 'errMsg') required String errMsg,
    
    /// 响应数据
    @JsonKey(name: 'data') required StrategyDetailData data,
  }) = _StrategyDetailResponse;

  factory StrategyDetailResponse.fromJson(Map<String, dynamic> json) => 
      _$StrategyDetailResponseFromJson(json);
}
