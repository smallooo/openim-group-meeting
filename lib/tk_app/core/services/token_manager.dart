import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'token_storage_service.dart';
import '../constants/api_constants.dart';


part 'token_manager.g.dart';

/// Token管理器
/// 
/// 负责token的检查和管理，不再进行自动刷新
class TokenManager {
  final TokenStorageService _tokenStorage;
  final Dio _dio;

  TokenManager(this._tokenStorage, this._dio);

  /// 获取有效的访问令牌
  /// 
  /// 只检查缓存中是否有token，不进行刷新
  Future<String?> getValidAccessToken() async {
    // 检查是否有token
    final accessToken = _tokenStorage.getAccessToken();
    debugPrint('[TokenManager] 访问令牌 accessToken ： $accessToken');

    if (accessToken == null || accessToken.isEmpty) {
      debugPrint('[TokenManager] 没有访问令牌');
      return null;
    }

    return accessToken;
  }


  /// 处理401错误
  /// 
  /// 当API返回401时，不再尝试刷新token，直接返回null要求重新登录
  Future<Response?> handleUnauthorizedError(
    DioException err,
    RequestOptions requestOptions,
  ) async {
    debugPrint('[TokenManager] 处理401错误，不再刷新token，需要重新登录');
    return null;
  }

  /// 清除所有token
  Future<void> clearTokens() async {
    await _tokenStorage.clearLoginInfo();
    debugPrint('[TokenManager] 所有token已清除');
  }

  /// 检查是否已登录
  bool isLoggedIn() {
    return _tokenStorage.hasValidToken();
  }
}

/// TokenManager Provider
@riverpod
Future<TokenManager> tokenManager(TokenManagerRef ref) async {
  final tokenStorage = await ref.watch(tokenStorageServiceProvider.future);
  final dio = Dio(BaseOptions(
    baseUrl: ApiConstants.baseUrl, // 使用API常量
    connectTimeout: const Duration(seconds: 30),
    receiveTimeout: const Duration(seconds: 30),
    sendTimeout: const Duration(seconds: 30),
    headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    },
  ));
  return TokenManager(tokenStorage, dio);
}
