import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'token_storage_service.dart';
import '../constants/api_constants.dart';


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

  /// 强制刷新token
  /// 
  /// 无论token是否过期都强制刷新，用于应用启动时获取最新token
  Future<bool> forceRefreshToken() async {
    debugPrint('[TokenManager] 强制刷新token');
    return await _refreshTokenIfNeeded();
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

      debugPrint('[TokenManager] 准备刷新token，refreshToken: $refreshToken');
      debugPrint('[TokenManager] 请求URL: ${_dio.options.baseUrl}/member/app/auth/refresh');
      debugPrint('[TokenManager] 请求数据: {"refreshToken": "$refreshToken"}');

      // 尝试不同的请求格式
      Response response;
      try {
        // 首先尝试JSON格式
        debugPrint('[TokenManager] 尝试JSON格式请求');
        response = await _dio.post(
          '/member/app/auth/token/refresh',
          data: {'refreshToken': refreshToken},
          options: Options(
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
            },
          ),
        );
      } catch (e) {
        if (e is DioException && e.response?.statusCode == 500) {
          debugPrint('[TokenManager] JSON格式失败，尝试form-urlencoded格式');
          // 如果JSON格式失败，尝试form-urlencoded格式
          response = await _dio.post(
            '/member/app/auth/token/refresh',
            data: {'refreshToken': refreshToken},
            options: Options(
              headers: {
                'Content-Type': 'application/x-www-form-urlencoded',
                'Accept': 'application/json',
              },
            ),
          );
        } else {
          rethrow;
        }
      }

      if (response.statusCode == 200) {
        final data = response.data;
        
        // === 详细打印刷新令牌接口响应信息 ===
        print('=== TokenManager 刷新令牌接口响应信息 ===');
        print('HTTP状态码: ${response.statusCode}');
        print('完整响应数据: $data');
        if (data is Map<String, dynamic>) {
          print('响应数据类型: ${data.runtimeType}');
          print('响应数据键值对:');
          data.forEach((key, value) {
            print('  $key: $value (${value.runtimeType})');
          });
        }
        print('=== TokenManager 刷新令牌接口响应结束 ===');
        
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
        // === 详细打印非200状态码的响应信息 ===
        print('=== TokenManager 刷新令牌接口错误响应信息 ===');
        print('HTTP状态码: ${response.statusCode}');
        print('完整响应数据: ${response.data}');
        if (response.data is Map<String, dynamic>) {
          print('响应数据类型: ${response.data.runtimeType}');
          print('响应数据键值对:');
          (response.data as Map<String, dynamic>).forEach((key, value) {
            print('  $key: $value (${value.runtimeType})');
          });
        }
        print('=== TokenManager 刷新令牌接口错误响应结束 ===');
        
        debugPrint('[TokenManager] Token刷新请求失败: ${response.statusCode}');
        debugPrint('[TokenManager] 响应数据: ${response.data}');
        _notifyRefreshCompleters(false);
        return false;
      }
    } catch (e) {
      debugPrint('[TokenManager] Token刷新异常: $e');
      if (e is DioException) {
        debugPrint('[TokenManager] ========== Dio异常详情 ==========');
        debugPrint('[TokenManager] 状态码: ${e.response?.statusCode}');
        debugPrint('[TokenManager] 响应数据: ${e.response?.data}');
        debugPrint('[TokenManager] 请求URL: ${e.requestOptions.uri}');
        debugPrint('[TokenManager] 请求数据: ${e.requestOptions.data}');
        debugPrint('[TokenManager] 请求头: ${e.requestOptions.headers}');
        debugPrint('[TokenManager] 响应头: ${e.response?.headers}');
        debugPrint('[TokenManager] ================================');
        
        // 如果是500错误，尝试解析响应数据
        if (e.response?.statusCode == 500) {
          final responseData = e.response?.data;
          if (responseData is Map<String, dynamic>) {
            debugPrint('[TokenManager] 500错误详情:');
            debugPrint('[TokenManager] - errCode: ${responseData['errCode']}');
            debugPrint('[TokenManager] - errMsg: ${responseData['errMsg']}');
            debugPrint('[TokenManager] - data: ${responseData['data']}');
          }
        }
      }
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

    // 更新请求头 - 与AuthInterceptor保持一致
    requestOptions.headers['Access-Token'] = '$newToken';
    
    // 重试请求
    try {
      debugPrint('[TokenManager] 开始重试原始请求');
      debugPrint('[TokenManager] 重试请求URL: ${requestOptions.uri}');
      debugPrint('[TokenManager] 重试请求头: ${requestOptions.headers}');
      
      final dio = Dio();
      final retryResponse = await dio.fetch(requestOptions);
      
      debugPrint('[TokenManager] 重试请求成功，状态码: ${retryResponse.statusCode}');
      return retryResponse;
    } catch (e) {
      debugPrint('[TokenManager] 重试请求失败: $e');
      if (e is DioException) {
        debugPrint('[TokenManager] 重试失败详情: 状态码=${e.response?.statusCode}, 响应=${e.response?.data}');
      }
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
