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
  /// 在应用启动时调用，检查缓存中是否有accessToken，有则使用，没有则需要登录
  Future<TokenInitResult> initialize() async {
    debugPrint('[TokenInitService] 开始初始化token管理');

    try {
      // 检查缓存中是否有accessToken
      final accessToken = _tokenStorage.getAccessToken();
      if (accessToken == null || accessToken.isEmpty) {
        debugPrint('[TokenInitService] 缓存中没有accessToken，需要登录');
        return TokenInitResult.needsLogin();
      }

      debugPrint('[TokenInitService] 缓存中存在accessToken，直接使用');

      // 获取用户信息
      final userInfo = _authStateManager.getCurrentUserInfo();
      if (userInfo.isEmpty) {
        debugPrint('[TokenInitService] 没有用户信息，需要登录');
        return TokenInitResult.needsLogin();
      }
      
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
