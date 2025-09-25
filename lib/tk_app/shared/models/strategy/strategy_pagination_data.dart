import 'package:freezed_annotation/freezed_annotation.dart';
import 'strategy_item.dart';

part 'strategy_pagination_data.freezed.dart';
part 'strategy_pagination_data.g.dart';

/// 策略分页数据模型
@freezed
class StrategyPaginationData with _$StrategyPaginationData {
  const factory StrategyPaginationData({
    /// 策略记录列表
    @JsonKey(name: 'records') required List<StrategyItem> records,
    
    /// 总记录数
    @JsonKey(name: 'total') required String total,
    
    /// 每页大小
    @JsonKey(name: 'size') required String size,
    
    /// 当前页码
    @JsonKey(name: 'current') required String current,
    
    /// 排序信息
    @JsonKey(name: 'orders') required List<Map<String, dynamic>> orders,
    
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
  }) = _StrategyPaginationData;

  factory StrategyPaginationData.fromJson(Map<String, dynamic> json) => 
      _$StrategyPaginationDataFromJson(json);
}
