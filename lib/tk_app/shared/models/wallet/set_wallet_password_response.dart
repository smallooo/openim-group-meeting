import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_wallet_password_response.freezed.dart';
part 'set_wallet_password_response.g.dart';

/// 设置钱包密码响应模型
/// 
/// 用于处理设置钱包密码API的返回数据
@freezed
class SetWalletPasswordResponse with _$SetWalletPasswordResponse {
  const factory SetWalletPasswordResponse({
    /// 错误码
    /// 0: 成功
    /// 其他值: 错误
    @JsonKey(name: 'errCode') required int errCode,
    
    /// 错误信息
    /// "success": 成功
    /// 其他值: 具体错误信息
    @JsonKey(name: 'errMsg') required String errMsg,
  }) = _SetWalletPasswordResponse;

  factory SetWalletPasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$SetWalletPasswordResponseFromJson(json);
}