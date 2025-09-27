import 'package:freezed_annotation/freezed_annotation.dart';

part 'trader_list_response.freezed.dart';
part 'trader_list_response.g.dart';

/// 交易员列表响应模型
@freezed
class TraderListResponse with _$TraderListResponse {
  const factory TraderListResponse({
    /// 错误码
    @JsonKey(name: 'errCode') required int errCode,
    
    /// 错误信息
    @JsonKey(name: 'errMsg') required String errMsg,
    
    /// 交易员列表数据
    @JsonKey(name: 'data') required TraderListData data,
  }) = _TraderListResponse;

  factory TraderListResponse.fromJson(Map<String, dynamic> json) => 
      _$TraderListResponseFromJson(json);
}

/// 交易员列表数据模型
@freezed
class TraderListData with _$TraderListData {
  const factory TraderListData({
    /// 交易员记录列表
    @JsonKey(name: 'records') required List<TraderItem> records,
    
    /// 总记录数
    @JsonKey(name: 'total') required String total,
    
    /// 每页大小
    @JsonKey(name: 'size') required String size,
    
    /// 当前页码
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
  }) = _TraderListData;

  factory TraderListData.fromJson(Map<String, dynamic> json) => 
      _$TraderListDataFromJson(json);
}

/// 交易员项目模型
@freezed
class TraderItem with _$TraderItem {
  const factory TraderItem({
    /// 交易员ID
    @JsonKey(name: 'id') required String id,
    
    /// 会员ID
    @JsonKey(name: 'memberId') required String memberId,
    
    /// 交易员名称
    @JsonKey(name: 'traderName') required String traderName,
    
    /// 交易员头像
    @JsonKey(name: 'traderAvatar') required String traderAvatar,
    
    /// 个人简介
    @JsonKey(name: 'bio') required String bio,
    
    /// 加入时间
    @JsonKey(name: 'joinTime') required String joinTime,
    
    /// 订阅者数量
    @JsonKey(name: 'subscriberCount') required int subscriberCount,
    
    /// 关注者数量
    @JsonKey(name: 'followerCount') required int followerCount,
    
    /// 总浏览量
    @JsonKey(name: 'totalViews') required String totalViews,
    
    /// 现货策略数量
    @JsonKey(name: 'spotStrategyCount') required int spotStrategyCount,
    
    /// 期货策略数量
    @JsonKey(name: 'futuresStrategyCount') required int futuresStrategyCount,
    
    /// 总策略数量
    @JsonKey(name: 'totalStrategyCount') required int totalStrategyCount,
    
    /// 状态
    @JsonKey(name: 'status') required int status,
    
    /// 创建时间
    @JsonKey(name: 'createdAt') required String createdAt,
  }) = _TraderItem;

  factory TraderItem.fromJson(Map<String, dynamic> json) => 
      _$TraderItemFromJson(json);
}
