import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../services/auth_state_manager.dart';
import '../../services/token_manager.dart';
import '../../services/token_storage_service.dart';


/// 认证拦截器
/// 
/// 自动为请求添加认证头，处理 token 刷新
class AuthInterceptor extends Interceptor {
  final TokenStorageService _tokenStorage;
  final TokenManager _tokenManager;
  final AuthStateManager _authStateManager;

  AuthInterceptor(this._tokenStorage, this._tokenManager, this._authStateManager);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    // 跳过不需要认证的请求
    if (_shouldSkipAuth(options.path)) {
      super.onRequest(options, handler);
      return;
    }

    // 获取有效的访问令牌
    final token = await _tokenManager.getValidAccessToken();
    if (token != null) {
      // options.headers['Authorization'] = 'Bearer $token';
      // debugPrint('[AuthInterceptor] 已添加认证头: Bearer $token');
      // debugPrint('[AuthInterceptor] 当前使用的 accessToken: $token');
      options.headers['Access-Token'] = '$token';
      debugPrint('[AuthInterceptor] 已添加认证头:  $token');
      debugPrint('[AuthInterceptor] 当前使用的 accessToken: $token');
    } else {
      debugPrint('[AuthInterceptor] 没有有效的访问令牌');
    }
    
    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    // 处理 401 未授权错误，尝试刷新 token
    if (err.response?.statusCode == 401) {
      debugPrint('[AuthInterceptor] 收到401错误，尝试刷新token');
      final response = await _handleUnauthorized(err);
      if (response != null) {
        handler.resolve(response);
        return;
      }
    }
    
    super.onError(err, handler);
  }

  /// 处理未授权错误
  Future<Response?> _handleUnauthorized(DioException err) async {
    try {
      // 使用TokenManager处理401错误
      final response = await _tokenManager.handleUnauthorizedError(
        err, 
        err.requestOptions,
      );
      
      if (response != null) {
        debugPrint('[AuthInterceptor] Token刷新成功，请求重试成功');
        return response;
      } else {
        debugPrint('[AuthInterceptor] Token刷新失败，需要重新登录');
        // 这里可以触发全局的登录状态变化
        _navigateToLogin();
        return null;
      }
    } catch (e) {
      debugPrint('[AuthInterceptor] Token刷新异常：$e');
      _navigateToLogin();
      return null;
    }
  }

  /// 判断是否应该跳过认证
  bool _shouldSkipAuth(String path) {
    // 不需要认证的接口
    final skipPaths = [
      '/api/member/auth/send-code',
      '/api/member/auth/code-login',
      '/api/member/auth/refresh',
      '/api/member/auth/logout',
    ];
    
    return skipPaths.any((skipPath) => path.contains(skipPath));
  }

  /// 跳转到登录页面
  void _navigateToLogin() {
    debugPrint('[AuthInterceptor] 需要跳转到登录页面');
    
    // 使用AuthStateManager处理登出
    _authStateManager.logout();
  }
}
