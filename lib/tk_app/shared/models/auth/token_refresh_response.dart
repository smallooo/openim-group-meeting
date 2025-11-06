import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_refresh_response.freezed.dart';
part 'token_refresh_response.g.dart';

/// Token刷新响应模型
@freezed
class TokenRefreshResponse with _$TokenRefreshResponse {
  const factory TokenRefreshResponse({
    /// 访问令牌
    @JsonKey(name: 'accessToken') required String accessToken,
    
    /// 刷新令牌
    @JsonKey(name: 'refreshToken') required String refreshToken,
    
    /// 令牌类型
    @JsonKey(name: 'tokenType') required String tokenType,
    
    /// 令牌过期时间（秒）
    @JsonKey(name: 'expiresIn') required String expiresIn,
    
    /// 提示消息
    @JsonKey(name: 'message') String? message,
    
    /// IM Token
    /// 用于 IM 系统的身份验证
    @JsonKey(name: 'imToken') required String imToken,
    
    /// IM 用户ID
    /// IM 系统中的用户唯一标识
    @JsonKey(name: 'imUid') required String imUid,
    
    /// 聊天 Token
    /// 用于聊天系统的身份验证
    @JsonKey(name: 'chatToken') required String chatToken,
  }) = _TokenRefreshResponse;

  factory TokenRefreshResponse.fromJson(Map<String, dynamic> json) => 
      _$TokenRefreshResponseFromJson(json);
}

