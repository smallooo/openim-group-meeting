import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_code_request.freezed.dart';
part 'send_code_request.g.dart';

/// 发送验证码请求模型
@freezed
class SendCodeRequest with _$SendCodeRequest {
  const factory SendCodeRequest({
    /// 邮箱地址（必填）
    @JsonKey(name: 'email') required String email,
    
    /// 验证码用途
    /// LOGIN: 登录
    /// REGISTER: 注册  
    /// RESET_PASSWORD: 重置密码
    @JsonKey(name: 'purpose') @Default('LOGIN') String purpose,
    
    /// 设备ID（可选）
    @JsonKey(name: 'deviceId') @Default('') String deviceId,

    /// IP地址（可选）
    @JsonKey(name: 'ipAddress') @Default('') String ipAddress,

    /// 平台ID，iOS为"1"，Android为"2"
    @JsonKey(name: 'platformId') required String platformId,

  }) = _SendCodeRequest;

  factory SendCodeRequest.fromJson(Map<String, dynamic> json) => 
      _$SendCodeRequestFromJson(json);
}
