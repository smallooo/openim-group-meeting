import 'package:freezed_annotation/freezed_annotation.dart';

part 'trader_detail_response.freezed.dart';
part 'trader_detail_response.g.dart';

/// 交易员详情响应模型
@freezed
class TraderDetailResponse with _$TraderDetailResponse {
  const factory TraderDetailResponse({
    /// 错误码
    @JsonKey(name: 'errCode') required int errCode,
    
    /// 错误信息
    @JsonKey(name: 'errMsg') required String errMsg,
    
    /// 交易员详情数据
    @JsonKey(name: 'data') required TraderDetailData data,
  }) = _TraderDetailResponse;

  factory TraderDetailResponse.fromJson(Map<String, dynamic> json) => 
      _$TraderDetailResponseFromJson(json);
}

/// 交易员详情数据模型
@freezed
class TraderDetailData with _$TraderDetailData {
  const factory TraderDetailData({
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
    
    /// 状态
    @JsonKey(name: 'status') required int status,
    
    /// 版本
    @JsonKey(name: 'version') required String version,
    
    /// 是否删除
    @JsonKey(name: 'isDeleted') required int isDeleted,
    
    /// 创建者
    @JsonKey(name: 'createdBy') required String createdBy,
    
    /// 更新者
    @JsonKey(name: 'updatedBy') required String updatedBy,
    
    /// 创建时间
    @JsonKey(name: 'createdAt') required String createdAt,
    
    /// 更新时间
    @JsonKey(name: 'updatedAt') required String updatedAt,
  }) = _TraderDetailData;

  factory TraderDetailData.fromJson(Map<String, dynamic> json) => 
      _$TraderDetailDataFromJson(json);
}
