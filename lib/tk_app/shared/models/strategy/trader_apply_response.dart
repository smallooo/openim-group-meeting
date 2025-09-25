import 'package:freezed_annotation/freezed_annotation.dart';

part 'trader_apply_response.freezed.dart';
part 'trader_apply_response.g.dart';

/// 交易员申请响应模型
@freezed
class TraderApplyResponse with _$TraderApplyResponse {
  const factory TraderApplyResponse({
    /// 错误码
    @JsonKey(name: 'errCode') required int errCode,
    
    /// 错误信息
    @JsonKey(name: 'errMsg') required String errMsg,
    
    /// 申请结果数据
    @JsonKey(name: 'data') required TraderApplyData data,
  }) = _TraderApplyResponse;

  factory TraderApplyResponse.fromJson(Map<String, dynamic> json) => 
      _$TraderApplyResponseFromJson(json);
}

/// 交易员申请结果数据模型
@freezed
class TraderApplyData with _$TraderApplyData {
  const factory TraderApplyData({
    /// 交易员ID
    @JsonKey(name: 'traderId') required String traderId,
    
    /// 申请状态
    @JsonKey(name: 'status') required String status,
  }) = _TraderApplyData;

  factory TraderApplyData.fromJson(Map<String, dynamic> json) => 
      _$TraderApplyDataFromJson(json);
}
