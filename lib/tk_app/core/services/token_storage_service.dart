import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'token_storage_service.g.dart';

/// Token存储服务
/// 
/// 负责管理accessToken和refreshToken的本地缓存
class TokenStorageService {
  static const String _accessTokenKey = 'tk_access_token';
  static const String _refreshTokenKey = 'tk_refresh_token';
  static const String _tokenTypeKey = 'tk_token_type';
  static const String _expiresInKey = 'tk_expires_in';
  static const String _userIdKey = 'tk_user_id';
  static const String _emailKey = 'tk_email';
  static const String _nicknameKey = 'tk_nickname';
  static const String _avatarKey = 'tk_avatar';
  static const String _loginTimeKey = 'tk_login_time';

  final SharedPreferences _prefs;

  TokenStorageService(this._prefs);

  /// 保存登录信息
  /// 
  /// [accessToken] 访问令牌
  /// [refreshToken] 刷新令牌
  /// [tokenType] 令牌类型
  /// [expiresIn] 过期时间（秒）
  /// [userId] 用户ID
  /// [email] 邮箱
  /// [nickname] 昵称
  /// [avatar] 头像URL
  Future<void> saveLoginInfo({
    required String accessToken,
    required String refreshToken,
    required String tokenType,
    required String expiresIn,
    required String userId,
    required String email,
    required String nickname,
    required String avatar,
  }) async {
    final currentTime = DateTime.now().millisecondsSinceEpoch;
    
    await Future.wait([
      _prefs.setString(_accessTokenKey, accessToken),
      _prefs.setString(_refreshTokenKey, refreshToken),
      _prefs.setString(_tokenTypeKey, tokenType),
      _prefs.setString(_expiresInKey, expiresIn),
      _prefs.setString(_userIdKey, userId),
      _prefs.setString(_emailKey, email),
      _prefs.setString(_nicknameKey, nickname),
      _prefs.setString(_avatarKey, avatar),
      _prefs.setInt(_loginTimeKey, currentTime),
    ]);

    print('[TokenStorage] 登录信息已保存');
    print('[TokenStorage] AccessToken: $accessToken');
    print('[TokenStorage] RefreshToken: $refreshToken');
    print('[TokenStorage] TokenType: $tokenType');
    print('[TokenStorage] ExpiresIn: $expiresIn');
    print('[TokenStorage] UserId: $userId');
    print('[TokenStorage] Email: $email');
    print('[TokenStorage] Nickname: $nickname');
    print('[TokenStorage] Avatar: $avatar');
    debugPrint('[TokenStorage] 🎉 邮箱登录Token已保存到本地存储');
  }

  /// 获取访问令牌
  String? getAccessToken() {
    final token = _prefs.getString(_accessTokenKey);
    print('[TokenStorage] 获取AccessToken: $token');
    debugPrint('[TokenStorage] 当前存储的 accessToken: $token');
    return token;
  }

  /// 获取刷新令牌
  String? getRefreshToken() {
    final token = _prefs.getString(_refreshTokenKey);
    print('[TokenStorage] 获取RefreshToken: $token');
    return token;
  }

  /// 获取令牌类型
  String? getTokenType() {
    return _prefs.getString(_tokenTypeKey);
  }

  /// 获取用户ID
  String? getUserId() {
    return _prefs.getString(_userIdKey);
  }

  /// 获取邮箱
  String? getEmail() {
    return _prefs.getString(_emailKey);
  }

  /// 获取昵称
  String? getNickname() {
    return _prefs.getString(_nicknameKey);
  }

  /// 获取头像URL
  String? getAvatar() {
    return _prefs.getString(_avatarKey);
  }

  /// 检查Token是否过期
  bool isTokenExpired() {
    final loginTime = _prefs.getInt(_loginTimeKey);
    final expiresIn = _prefs.getString(_expiresInKey);
    
    if (loginTime == null || expiresIn == null) {
      return true;
    }

    final expiresInSeconds = int.tryParse(expiresIn) ?? 0;
    final expirationTime = loginTime + (expiresInSeconds * 1000);
    final currentTime = DateTime.now().millisecondsSinceEpoch;
    
    final isExpired = currentTime >= expirationTime;
    print('[TokenStorage] Token过期检查: ${isExpired ? "已过期" : "未过期"}');
    
    return isExpired;
  }

  /// 检查是否有有效的Token
  bool hasValidToken() {
    final accessToken = getAccessToken();
    final hasToken = accessToken != null && accessToken.isNotEmpty && !isTokenExpired();
    print('[TokenStorage] 是否有有效Token: $hasToken');
    return hasToken;
  }

  /// 清除所有登录信息
  Future<void> clearLoginInfo() async {
    await Future.wait([
      _prefs.remove(_accessTokenKey),
      _prefs.remove(_refreshTokenKey),
      _prefs.remove(_tokenTypeKey),
      _prefs.remove(_expiresInKey),
      _prefs.remove(_userIdKey),
      _prefs.remove(_emailKey),
      _prefs.remove(_nicknameKey),
      _prefs.remove(_avatarKey),
      _prefs.remove(_loginTimeKey),
    ]);

    print('[TokenStorage] 登录信息已清除');
  }

  /// 更新访问令牌
  Future<void> updateAccessToken(String accessToken, String expiresIn) async {
    final currentTime = DateTime.now().millisecondsSinceEpoch;
    
    await Future.wait([
      _prefs.setString(_accessTokenKey, accessToken),
      _prefs.setString(_expiresInKey, expiresIn),
      _prefs.setInt(_loginTimeKey, currentTime),
    ]);

    print('[TokenStorage] AccessToken已更新: $accessToken');
    print('[TokenStorage] ExpiresIn已更新: $expiresIn');
  }

  /// 更新刷新令牌
  Future<void> updateRefreshToken(String refreshToken) async {
    await _prefs.setString(_refreshTokenKey, refreshToken);
    print('[TokenStorage] RefreshToken已更新: $refreshToken');
  }

  /// 更新令牌信息（用于刷新token后）
  Future<void> updateTokens({
    required String accessToken,
    required String refreshToken,
    required String expiresIn,
  }) async {
    final currentTime = DateTime.now().millisecondsSinceEpoch;
    
    await Future.wait([
      _prefs.setString(_accessTokenKey, accessToken),
      _prefs.setString(_refreshTokenKey, refreshToken),
      _prefs.setString(_expiresInKey, expiresIn),
      _prefs.setInt(_loginTimeKey, currentTime),
    ]);

    print('[TokenStorage] 令牌已更新');
    print('[TokenStorage] AccessToken: $accessToken');
    print('[TokenStorage] RefreshToken: $refreshToken');
    print('[TokenStorage] ExpiresIn: $expiresIn');
  }

  /// 检查是否需要刷新token（提前5分钟刷新）
  bool shouldRefreshToken() {
    final loginTime = _prefs.getInt(_loginTimeKey);
    final expiresIn = _prefs.getString(_expiresInKey);
    
    if (loginTime == null || expiresIn == null) {
      return true;
    }

    final expiresInSeconds = int.tryParse(expiresIn) ?? 0;
    // 提前5分钟刷新token
    final refreshTime = loginTime + ((expiresInSeconds - 300) * 1000);
    final currentTime = DateTime.now().millisecondsSinceEpoch;
    
    final shouldRefresh = currentTime >= refreshTime;
    print('[TokenStorage] 是否需要刷新Token: ${shouldRefresh ? "是" : "否"}');
    
    return shouldRefresh;
  }
}

/// TokenStorageService Provider
@riverpod
Future<TokenStorageService> tokenStorageService(TokenStorageServiceRef ref) async {
  final prefs = await SharedPreferences.getInstance();
  return TokenStorageService(prefs);
}
