import 'package:freezed_annotation/freezed_annotation.dart';

part 'strategy_publish_request.freezed.dart';
part 'strategy_publish_request.g.dart';

/// 策略发布请求模型
@freezed
class StrategyPublishRequest with _$StrategyPublishRequest {
  const factory StrategyPublishRequest({
    /// 交易员ID
    @JsonKey(name: 'traderId') required int traderId,
    
    /// 策略标题
    @JsonKey(name: 'title') required String title,
    
    /// 策略简介
    @JsonKey(name: 'summary') required String summary,
    
    /// 具体交易方案
    @JsonKey(name: 'content') required String content,
    
    /// 币种符号
    @JsonKey(name: 'coinSymbol') required String coinSymbol,
    
    /// 策略类型 (1: 短线, 2: 中线, 3: 长线)
    @JsonKey(name: 'strategyType') required int strategyType,
    
    /// 价格类型 (1: 限价, 2: 市价)
    @JsonKey(name: 'priceType') required int priceType,
    
    /// 目标价格
    @JsonKey(name: 'targetPrice') required double targetPrice,
    
    /// 止盈价格
    @JsonKey(name: 'takeProfitPrice') required double takeProfitPrice,
    
    /// 止损价格
    @JsonKey(name: 'stopLossPrice') required double stopLossPrice,
    
    /// 有效期开始时间
    @JsonKey(name: 'validFrom') required String validFrom,
    
    /// 有效期结束时间
    @JsonKey(name: 'validTo') required String validTo,
  }) = _StrategyPublishRequest;

  factory StrategyPublishRequest.fromJson(Map<String, dynamic> json) => 
      _$StrategyPublishRequestFromJson(json);
}
