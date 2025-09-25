import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'token_storage_service.dart';


part 'token_manager.g.dart';

/// Token刷新响应模型
class TokenRefreshResponse {
  final String accessToken;
  final String refreshToken;
  final String tokenType;
  final String expiresIn;
  final String message;

  TokenRefreshResponse({
    required this.accessToken,
    required this.refreshToken,
    required this.tokenType,
    required this.expiresIn,
    required this.message,
  });

  factory TokenRefreshResponse.fromJson(Map<String, dynamic> json) {
    return TokenRefreshResponse(
      accessToken: json['accessToken'] ?? '',
      refreshToken: json['refreshToken'] ?? '',
      tokenType: json['tokenType'] ?? 'Bearer',
      expiresIn: json['expiresIn'] ?? '',
      message: json['message'] ?? '',
    );
  }
}

/// Token管理器
/// 
/// 负责token的自动刷新、过期检查、错误处理等
class TokenManager {
  final TokenStorageService _tokenStorage;
  final Dio _dio;
  
  // 防止并发刷新
  bool _isRefreshing = false;
  final List<Completer<void>> _refreshCompleters = [];

  TokenManager(this._tokenStorage, this._dio);

  /// 获取有效的访问令牌
  /// 
  /// 如果token即将过期，会自动刷新
  Future<String?> getValidAccessToken() async {
    // 检查是否有token
    final accessToken = _tokenStorage.getAccessToken();
    debugPrint('[TokenManager] 访问令牌 accessToken ： $accessToken');

    if (accessToken == null || accessToken.isEmpty) {
      debugPrint('[TokenManager] 没有访问令牌');
      return null;
    }

    // 检查是否需要刷新
    if (_tokenStorage.shouldRefreshToken()) {
      debugPrint('[TokenManager] Token需要刷新');
      final refreshSuccess = await _refreshTokenIfNeeded();
      if (!refreshSuccess) {
        debugPrint('[TokenManager] Token刷新失败');
        return null;
      }
      return _tokenStorage.getAccessToken();
    }

    return accessToken;
  }

  /// 刷新token（如果需要）
  Future<bool> _refreshTokenIfNeeded() async {
    // 如果正在刷新，等待刷新完成
    if (_isRefreshing) {
      debugPrint('[TokenManager] 等待其他请求完成token刷新');
      final completer = Completer<void>();
      _refreshCompleters.add(completer);
      await completer.future;
      return _tokenStorage.hasValidToken();
    }

    _isRefreshing = true;
    debugPrint('[TokenManager] 开始刷新token');

    try {
      final refreshToken = _tokenStorage.getRefreshToken();
      if (refreshToken == null || refreshToken.isEmpty) {
        debugPrint('[TokenManager] 没有刷新令牌');
        return false;
      }

      // 调用刷新接口
      final response = await _dio.post(
        '/api/member/auth/refresh',
        data: {'refreshToken': refreshToken},
      );

      if (response.statusCode == 200) {
        final data = response.data;
        if (data['errCode'] == 0) {
          final tokenData = data['data'];
          final refreshResponse = TokenRefreshResponse.fromJson(tokenData);
          
          // 更新本地token
          await _tokenStorage.updateTokens(
            accessToken: refreshResponse.accessToken,
            refreshToken: refreshResponse.refreshToken,
            expiresIn: refreshResponse.expiresIn,
          );
          
          debugPrint('[TokenManager] Token刷新成功');
          debugPrint('[TokenManager] 新AccessToken: ${refreshResponse.accessToken}');
          debugPrint('[TokenManager] 新ExpiresIn: ${refreshResponse.expiresIn}');
          
          // 通知等待的请求
          _notifyRefreshCompleters(true);
          return true;
        } else {
          debugPrint('[TokenManager] Token刷新失败: ${data['errMsg']}');
          _notifyRefreshCompleters(false);
          return false;
        }
      } else {
        debugPrint('[TokenManager] Token刷新请求失败: ${response.statusCode}');
        _notifyRefreshCompleters(false);
        return false;
      }
    } catch (e) {
      debugPrint('[TokenManager] Token刷新异常: $e');
      _notifyRefreshCompleters(false);
      return false;
    } finally {
      _isRefreshing = false;
    }
  }

  /// 通知等待的请求刷新结果
  void _notifyRefreshCompleters(bool success) {
    for (final completer in _refreshCompleters) {
      if (!completer.isCompleted) {
        completer.complete();
      }
    }
    _refreshCompleters.clear();
  }

  /// 处理401错误
  /// 
  /// 当API返回401时，尝试刷新token并重试请求
  Future<Response?> handleUnauthorizedError(
    DioException err,
    RequestOptions requestOptions,
  ) async {
    debugPrint('[TokenManager] 处理401错误，尝试刷新token');
    
    final refreshSuccess = await _refreshTokenIfNeeded();
    if (!refreshSuccess) {
      debugPrint('[TokenManager] Token刷新失败，需要重新登录');
      return null;
    }

    // 获取新的token并重试请求
    final newToken = _tokenStorage.getAccessToken();
    if (newToken == null) {
      debugPrint('[TokenManager] 获取新token失败');
      return null;
    }

    // 更新请求头
    requestOptions.headers['Authorization'] = 'Bearer $newToken';
    
    // 重试请求
    try {
      final dio = Dio();
      return await dio.fetch(requestOptions);
    } catch (e) {
      debugPrint('[TokenManager] 重试请求失败: $e');
      return null;
    }
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
  final dio = Dio(); // 创建独立的Dio实例用于token刷新
  return TokenManager(tokenStorage, dio);
}
