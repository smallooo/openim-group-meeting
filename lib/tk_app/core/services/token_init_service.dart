import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'token_storage_service.dart';
import 'token_manager.dart';
import 'auth_state_manager.dart';

part 'token_init_service.g.dart';

/// Token初始化服务
/// 
/// 负责应用启动时的token检查和自动登录
class TokenInitService {
  final TokenStorageService _tokenStorage;
  final TokenManager _tokenManager;
  final AuthStateManager _authStateManager;

  TokenInitService(
    this._tokenStorage,
    this._tokenManager,
    this._authStateManager,
  );

  /// 初始化token管理
  /// 
  /// 在应用启动时调用，检查token状态并决定是否需要自动登录
  Future<TokenInitResult> initialize() async {
    debugPrint('[TokenInitService] 开始初始化token管理');

    try {
      // 检查是否有refreshToken
      final refreshToken = _tokenStorage.getRefreshToken();
      if (refreshToken == null || refreshToken.isEmpty) {
        debugPrint('[TokenInitService] 没有refreshToken，需要登录');
        return TokenInitResult.needsLogin();
      }

      debugPrint('[TokenInitService] 发现refreshToken，尝试自动刷新获取最新accessToken');
      
      // 只要有refreshToken，就强制刷新获取最新的accessToken
      final refreshSuccess = await _tokenManager.forceRefreshToken();
      if (!refreshSuccess) {
        debugPrint('[TokenInitService] Token刷新失败，需要重新登录');
        return TokenInitResult.needsLogin();
      }
      
      final newAccessToken = _tokenStorage.getAccessToken();
      if (newAccessToken == null || newAccessToken.isEmpty) {
        debugPrint('[TokenInitService] 获取新accessToken失败，需要重新登录');
        return TokenInitResult.needsLogin();
      }

      debugPrint('[TokenInitService] Token刷新成功，获取到最新的accessToken');

      // 获取用户信息
      final userInfo = _authStateManager.getCurrentUserInfo();
      debugPrint('[TokenInitService] 用户已登录: ${userInfo['email']}');
      
      return TokenInitResult.loggedIn(userInfo);
    } catch (e) {
      debugPrint('[TokenInitService] Token初始化异常: $e');
      return TokenInitResult.needsLogin();
    }
  }

  /// 清除所有token并登出
  Future<void> clearAndLogout() async {
    debugPrint('[TokenInitService] 清除token并登出');
    await _authStateManager.logout();
  }
}

/// Token初始化结果
class TokenInitResult {
  final bool isLoggedIn;
  final Map<String, String?>? userInfo;
  final String? error;

  TokenInitResult._({
    required this.isLoggedIn,
    this.userInfo,
    this.error,
  });

  /// 需要登录
  factory TokenInitResult.needsLogin() {
    return TokenInitResult._(isLoggedIn: false);
  }

  /// 已登录
  factory TokenInitResult.loggedIn(Map<String, String?> userInfo) {
    return TokenInitResult._(
      isLoggedIn: true,
      userInfo: userInfo,
    );
  }

  /// 初始化失败
  factory TokenInitResult.error(String error) {
    return TokenInitResult._(
      isLoggedIn: false,
      error: error,
    );
  }
}

/// Token初始化服务 Provider
@riverpod
Future<TokenInitService> tokenInitService(TokenInitServiceRef ref) async {
  final tokenStorage = await ref.watch(tokenStorageServiceProvider.future);
  final tokenManager = await ref.watch(tokenManagerProvider.future);
  final authStateManager = await ref.watch(authStateManagerProvider.future);
  return TokenInitService(tokenStorage, tokenManager, authStateManager);
}
