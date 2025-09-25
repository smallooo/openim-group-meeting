import 'package:freezed_annotation/freezed_annotation.dart';

part 'code_login_request.freezed.dart';
part 'code_login_request.g.dart';

/// 验证码登录请求模型
@freezed
class CodeLoginRequest with _$CodeLoginRequest {
  const factory CodeLoginRequest({
    /// 邮箱地址（必填）
    @JsonKey(name: 'email') required String email,
    
    /// 验证码（必填）
    /// 6位数字验证码
    @JsonKey(name: 'code') required String code,
    
    /// 设备ID（可选）
    /// 用于设备管理和安全验证
    @JsonKey(name: 'deviceId') @Default('') String deviceId,
    
    /// 用户代理（可选）
    /// 浏览器或客户端信息
    @JsonKey(name: 'userAgent') @Default('') String userAgent,
    
    /// IP地址（可选）
    /// 用于安全审计
    @JsonKey(name: 'ipAddress') @Default('') String ipAddress,
  }) = _CodeLoginRequest;

  factory CodeLoginRequest.fromJson(Map<String, dynamic> json) => 
      _$CodeLoginRequestFromJson(json);
}
