import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_password_status_response.freezed.dart';
part 'wallet_password_status_response.g.dart';

/// 钱包密码状态数据模型
@freezed
class WalletPasswordStatusData with _$WalletPasswordStatusData {
  const factory WalletPasswordStatusData({
    /// 是否已设置密码
    /// true: 已设置密码，需要跳转到修改密码页面
    /// false: 未设置密码，需要跳转到设置密码页面
    @JsonKey(name: 'hasPassword') required bool hasPassword,
    
    /// 密码是否被锁定
    /// true: 密码被锁定，可能需要特殊处理
    /// false: 密码正常状态
    @JsonKey(name: 'isLocked') required bool isLocked,
  }) = _WalletPasswordStatusData;

  factory WalletPasswordStatusData.fromJson(Map<String, dynamic> json) =>
      _$WalletPasswordStatusDataFromJson(json);
}

/// 钱包密码状态响应模型
@freezed
class WalletPasswordStatusResponse with _$WalletPasswordStatusResponse {
  const factory WalletPasswordStatusResponse({
    /// 错误码
    /// 0: 成功
    /// 其他值: 错误
    @JsonKey(name: 'errCode') required int errCode,
    
    /// 错误信息
    /// "success": 成功
    /// 其他值: 具体错误信息
    @JsonKey(name: 'errMsg') required String errMsg,
    
    /// 钱包密码状态数据
    @JsonKey(name: 'data') required WalletPasswordStatusData data,
  }) = _WalletPasswordStatusResponse;

  factory WalletPasswordStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$WalletPasswordStatusResponseFromJson(json);
}