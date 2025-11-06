import 'package:freezed_annotation/freezed_annotation.dart';

part 'code_login_response.freezed.dart';
part 'code_login_response.g.dart';

/// 验证码登录响应模型
@freezed
class CodeLoginResponse with _$CodeLoginResponse {
  const factory CodeLoginResponse({
    /// 访问令牌
    /// 用于API请求的身份验证
    @JsonKey(name: 'accessToken') required String accessToken,
    
    /// 刷新令牌
    /// 用于刷新访问令牌
    @JsonKey(name: 'refreshToken') required String refreshToken,
    
    /// 令牌类型
    /// 通常为 "Bearer"
    @JsonKey(name: 'tokenType') required String tokenType,
    
    /// 令牌过期时间（秒）
    /// 14400秒 = 4小时
    @JsonKey(name: 'expiresIn') required String expiresIn,
    
    /// 用户ID
    /// 系统内部用户唯一标识（已废弃，使用 memberId）
    @JsonKey(name: 'userId') String? userId,
    
    /// 会员ID
    /// 系统内部会员唯一标识
    @JsonKey(name: 'memberId') required String memberId,
    
    /// 邮箱地址
    @JsonKey(name: 'email') required String email,
    
    /// 用户昵称
    /// 默认为邮箱前缀
    @JsonKey(name: 'nickname') required String nickname,
    
    /// 头像URL
    /// 空字符串表示使用默认头像
    @JsonKey(name: 'avatar') required String avatar,
    
    /// 是否为新用户
    /// true: 首次登录的新用户
    /// false: 已存在的用户
    @JsonKey(name: 'isNewUser') required bool isNewUser,
    
    /// 登录类型
    /// EMAIL_CODE: 邮箱验证码登录
    /// EMAIL_PASSWORD: 邮箱密码登录
    /// PHONE_CODE: 手机验证码登录
    /// THIRD_PARTY: 第三方登录
    @JsonKey(name: 'loginType') required String loginType,
    
    /// IM Token
    /// 用于 IM 系统的身份验证
    @JsonKey(name: 'imToken') required String imToken,
    
    /// IM 用户ID
    /// IM 系统中的用户唯一标识
    @JsonKey(name: 'imUid') required String imUid,
    
    /// 聊天 Token
    /// 用于聊天系统的身份验证
    @JsonKey(name: 'chatToken') required String chatToken,
  }) = _CodeLoginResponse;

  factory CodeLoginResponse.fromJson(Map<String, dynamic> json) => 
      _$CodeLoginResponseFromJson(json);
}
