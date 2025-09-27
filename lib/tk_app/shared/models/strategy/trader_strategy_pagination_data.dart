import 'package:freezed_annotation/freezed_annotation.dart';
import 'trader_strategy_item.dart';

part 'trader_strategy_pagination_data.freezed.dart';
part 'trader_strategy_pagination_data.g.dart';

/// 交易员策略分页数据模型
@freezed
class TraderStrategyPaginationData with _$TraderStrategyPaginationData {
  const factory TraderStrategyPaginationData({
    /// 记录列表
    @JsonKey(name: 'records') required List<TraderStrategyItem> records,
    
    /// 总数
    @JsonKey(name: 'total') required String total,
    
    /// 页面大小
    @JsonKey(name: 'size') required String size,
    
    /// 当前页
    @JsonKey(name: 'current') required String current,
    
    /// 排序信息
    @JsonKey(name: 'orders') required List<dynamic> orders,
    
    /// 是否优化计数SQL
    @JsonKey(name: 'optimizeCountSql') required bool optimizeCountSql,
    
    /// 是否搜索计数
    @JsonKey(name: 'searchCount') required bool searchCount,
    
    /// 最大限制
    @JsonKey(name: 'maxLimit') required String maxLimit,
    
    /// 计数ID
    @JsonKey(name: 'countId') required String countId,
    
    /// 总页数
    @JsonKey(name: 'pages') required String pages,
  }) = _TraderStrategyPaginationData;

  factory TraderStrategyPaginationData.fromJson(Map<String, dynamic> json) => 
      _$TraderStrategyPaginationDataFromJson(json);
}
