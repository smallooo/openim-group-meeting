import 'package:freezed_annotation/freezed_annotation.dart';

part 'trader_status_response.freezed.dart';
part 'trader_status_response.g.dart';

/// 交易员状态响应模型
@freezed
class TraderStatusResponse with _$TraderStatusResponse {
  const factory TraderStatusResponse({
    /// 错误码
    @JsonKey(name: 'errCode') required int errCode,
    
    /// 错误信息
    @JsonKey(name: 'errMsg') required String errMsg,
    
    /// 交易员状态数据
    @JsonKey(name: 'data') required TraderStatusData data,
  }) = _TraderStatusResponse;

  factory TraderStatusResponse.fromJson(Map<String, dynamic> json) => 
      _$TraderStatusResponseFromJson(json);
}

/// 交易员状态数据模型
@freezed
class TraderStatusData with _$TraderStatusData {
  const factory TraderStatusData({
    /// 是否为交易员
    @JsonKey(name: 'isTrader') required bool isTrader,
    
    /// 交易员ID
    @JsonKey(name: 'traderId') required String traderId,
    
    /// 交易员名称
    @JsonKey(name: 'traderName') required String traderName,
    
    /// 交易员头像
    @JsonKey(name: 'traderAvatar') required String traderAvatar,
  }) = _TraderStatusData;

  factory TraderStatusData.fromJson(Map<String, dynamic> json) => 
      _$TraderStatusDataFromJson(json);
}
