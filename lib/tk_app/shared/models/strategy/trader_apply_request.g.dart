// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trader_apply_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TraderApplyRequestImpl _$$TraderApplyRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$TraderApplyRequestImpl(
      traderName: json['traderName'] as String,
      traderAvatar: json['traderAvatar'] as String,
      bio: json['bio'] as String,
      pricingConfigs: (json['pricingConfigs'] as List<dynamic>)
          .map((e) => PricingConfig.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TraderApplyRequestImplToJson(
        _$TraderApplyRequestImpl instance) =>
    <String, dynamic>{
      'traderName': instance.traderName,
      'traderAvatar': instance.traderAvatar,
      'bio': instance.bio,
      'pricingConfigs': instance.pricingConfigs,
    };

_$PricingConfigImpl _$$PricingConfigImplFromJson(Map<String, dynamic> json) =>
    _$PricingConfigImpl(
      traderId: (json['traderId'] as num?)?.toInt() ?? 0,
      strategyType: json['strategyType'] as String,
      monthlyPrice: (json['monthlyPrice'] as num).toDouble(),
      quarterlyPrice: (json['quarterlyPrice'] as num).toDouble(),
      yearlyPrice: (json['yearlyPrice'] as num).toDouble(),
      currency: json['currency'] as String? ?? 'CNY',
    );

Map<String, dynamic> _$$PricingConfigImplToJson(_$PricingConfigImpl instance) =>
    <String, dynamic>{
      'traderId': instance.traderId,
      'strategyType': instance.strategyType,
      'monthlyPrice': instance.monthlyPrice,
      'quarterlyPrice': instance.quarterlyPrice,
      'yearlyPrice': instance.yearlyPrice,
      'currency': instance.currency,
    };
