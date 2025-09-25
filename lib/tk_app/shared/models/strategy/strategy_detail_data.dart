import 'package:freezed_annotation/freezed_annotation.dart';

part 'strategy_detail_data.freezed.dart';
part 'strategy_detail_data.g.dart';

/// 策略详情数据模型
@freezed
class StrategyDetailData with _$StrategyDetailData {
  const factory StrategyDetailData({
    /// 策略ID
    @JsonKey(name: 'id') required String id,
    
    /// 交易员ID
    @JsonKey(name: 'traderId') required String traderId,
    
    /// 策略标题
    @JsonKey(name: 'title') required String title,
    
    /// 策略简介
    @JsonKey(name: 'summary') required String summary,
    
    /// 具体交易方案
    @JsonKey(name: 'content') required String content,
    
    /// 币种符号
    @JsonKey(name: 'coinSymbol') required String coinSymbol,
    
    /// 策略类型
    @JsonKey(name: 'strategyType') required int strategyType,
    
    /// 价格类型
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
    
    /// 查看次数
    @JsonKey(name: 'viewCount') required String viewCount,
    
    /// 关注次数
    @JsonKey(name: 'followCount') required int followCount,
    
    /// 平均评分
    @JsonKey(name: 'avgRating') required double avgRating,
    
    /// 评分次数
    @JsonKey(name: 'ratingCount') required int ratingCount,
    
    /// 状态
    @JsonKey(name: 'status') required int status,
    
    /// 版本
    @JsonKey(name: 'version') required String version,
    
    /// 是否删除
    @JsonKey(name: 'isDeleted') required int isDeleted,
    
    /// 创建者
    @JsonKey(name: 'createdBy') String? createdBy,
    
    /// 更新者
    @JsonKey(name: 'updatedBy') String? updatedBy,
    
    /// 创建时间
    @JsonKey(name: 'createdAt') required String createdAt,
    
    /// 更新时间
    @JsonKey(name: 'updatedAt') required String updatedAt,
  }) = _StrategyDetailData;

  factory StrategyDetailData.fromJson(Map<String, dynamic> json) => 
      _$StrategyDetailDataFromJson(json);
}
