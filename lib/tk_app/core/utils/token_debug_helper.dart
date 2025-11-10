import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../services/token_storage_service.dart';
import '../services/token_manager.dart';

part 'token_debug_helper.g.dart';

/// Token调试助手
/// 
/// 用于调试和查看当前token状态
class TokenDebugHelper {
  final TokenStorageService _tokenStorage;
  final TokenManager _tokenManager;

  TokenDebugHelper(this._tokenStorage, this._tokenManager);

  /// 打印当前token状态
  Future<void> printCurrentTokenStatus() async {
    debugPrint('=== Token 调试信息 ===');
    
    // 打印存储的token
    final accessToken = _tokenStorage.getAccessToken();
    final tokenType = _tokenStorage.getTokenType();
    
    debugPrint('存储的 AccessToken: $accessToken');
    debugPrint('Token类型: $tokenType');
    
    // 打印token状态
    final isExpired = _tokenStorage.isTokenExpired();
    final shouldRefresh = _tokenStorage.shouldRefreshToken();
    final hasValidToken = _tokenStorage.hasValidToken();
    
    debugPrint('Token是否过期: $isExpired');
    debugPrint('是否需要刷新: $shouldRefresh');
    debugPrint('是否有有效Token: $hasValidToken');
    
    // 打印用户信息
    final userInfo = {
      'userId': _tokenStorage.getUserId(),
      'email': _tokenStorage.getEmail(),
      'nickname': _tokenStorage.getNickname(),
      'avatar': _tokenStorage.getAvatar(),
    };
    debugPrint('用户信息: $userInfo');
    
    // 获取有效的token
    final validToken = await _tokenManager.getValidAccessToken();
    debugPrint('当前有效的 AccessToken: $validToken');
    
    debugPrint('=== Token 调试信息结束 ===');
  }

  /// 打印token刷新过程
  void printTokenRefreshProcess(String step, {String? details}) {
    debugPrint('[TokenRefresh] $step${details != null ? ': $details' : ''}');
  }
}

/// Token调试助手 Provider
@riverpod
Future<TokenDebugHelper> tokenDebugHelper(TokenDebugHelperRef ref) async {
  final tokenStorage = await ref.watch(tokenStorageServiceProvider.future);
  final tokenManager = await ref.watch(tokenManagerProvider.future);
  return TokenDebugHelper(tokenStorage, tokenManager);
}
