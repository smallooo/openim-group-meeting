import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_code_response.freezed.dart';
part 'send_code_response.g.dart';

/// 发送验证码响应模型
@freezed
class SendCodeResponse with _$SendCodeResponse {
  const factory SendCodeResponse({
    /// 是否发送成功
    @JsonKey(name: 'success') required bool success,
    
    /// 响应消息
    @JsonKey(name: 'message') required String message,
    
    /// 脱敏后的邮箱地址
    /// 例如：2***0@qq.com
    @JsonKey(name: 'maskedEmail') required String maskedEmail,
    
    /// 验证码过期时间（秒）
    /// 默认：300秒（5分钟）
    @JsonKey(name: 'expirationTime') required int expirationTime,
    
    /// 下次可发送时间（秒）
    /// 防止频繁发送，默认：60秒
    @JsonKey(name: 'nextSendTime') required int nextSendTime,
  }) = _SendCodeResponse;

  factory SendCodeResponse.fromJson(Map<String, dynamic> json) => 
      _$SendCodeResponseFromJson(json);
}
