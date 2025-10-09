import 'package:freezed_annotation/freezed_annotation.dart';

part 'trader_apply_request.freezed.dart';
part 'trader_apply_request.g.dart';

/// 交易员申请请求模型
@freezed
class TraderApplyRequest with _$TraderApplyRequest {
  const factory TraderApplyRequest({
    /// 交易员名称
    @JsonKey(name: 'traderName') required String traderName,
    
    /// 交易员头像
    @JsonKey(name: 'traderAvatar') required String traderAvatar,
    
    /// 个人简介
    @JsonKey(name: 'bio') required String bio,
    
    /// 价格配置数组
    @JsonKey(name: 'pricingConfigs') required List<PricingConfig> pricingConfigs,
  }) = _TraderApplyRequest;

  factory TraderApplyRequest.fromJson(Map<String, dynamic> json) => 
      _$TraderApplyRequestFromJson(json);
}

/// 价格配置模型
@freezed
class PricingConfig with _$PricingConfig {
  const factory PricingConfig({
    /// 交易员ID (默认为0)
    @JsonKey(name: 'traderId') @Default(0) int traderId,
    
    /// 策略类型 (SPOT-现货, FUTURES-合约)
    @JsonKey(name: 'strategyType') required String strategyType,
    
    /// 月订阅费
    @JsonKey(name: 'monthlyPrice') double? monthlyPrice,
    
    /// 季度订阅费
    @JsonKey(name: 'quarterlyPrice') double? quarterlyPrice,
    
    /// 年订阅费
    @JsonKey(name: 'yearlyPrice') double? yearlyPrice,
    
    /// 货币单位 (默认CNY)
    @JsonKey(name: 'currency') @Default('CNY') String currency,
  }) = _PricingConfig;

  factory PricingConfig.fromJson(Map<String, dynamic> json) => 
      _$PricingConfigFromJson(json);
}
