import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../constants/api_constants.dart';
import '../exceptions/api_exception.dart';
import '../services/token_storage_service.dart';
import '../services/token_manager.dart';
import '../services/auth_state_manager.dart';
import 'interceptors/auth_interceptor.dart';
import 'interceptors/logging_interceptor.dart';

part 'api_client.g.dart';

/// API 客户端
class ApiClient {
  late final Dio _dio;

  ApiClient({
    String? baseUrl,
    TokenStorageService? tokenStorage,
    TokenManager? tokenManager,
    AuthStateManager? authStateManager,
  }) {
    _dio = Dio(BaseOptions(
      baseUrl: baseUrl ?? ApiConstants.baseUrl,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 30),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    ));

    // 添加拦截器
    _dio.interceptors.addAll([
      if (tokenStorage != null && tokenManager != null && authStateManager != null)
        AuthInterceptor(tokenStorage, tokenManager, authStateManager),
      LoggingInterceptor(),
    ]);
  }

  /// GET 请求
  Future<T> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    T Function(Map<String, dynamic>)? fromJson,
  }) async {
    try {
      final response = await _dio.get(
        path,
        queryParameters: queryParameters,
        options: options,
      );
      return _handleResponse<T>(response, fromJson);
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }

  /// POST 请求
  Future<T> post<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    T Function(Map<String, dynamic>)? fromJson,
  }) async {
    try {
      final response = await _dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
      return _handleResponse<T>(response, fromJson);
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }

  /// PUT 请求
  Future<T> put<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    T Function(Map<String, dynamic>)? fromJson,
  }) async {
    try {
      final response = await _dio.put(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
      return _handleResponse<T>(response, fromJson);
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }

  /// DELETE 请求
  Future<T> delete<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    T Function(Map<String, dynamic>)? fromJson,
  }) async {
    try {
      final response = await _dio.delete(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
      return _handleResponse<T>(response, fromJson);
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }

  /// 处理响应
  T _handleResponse<T>(
    Response response,
    T Function(Map<String, dynamic>)? fromJson,
  ) {
    final data = response.data;
    
    if (data is Map<String, dynamic>) {
      // 检查业务错误码
      final errCode = data['errCode'] as int? ?? 0;
      if (errCode != 0) {
        throw ApiException(
          code: errCode,
          message: data['errMsg'] as String? ?? 'Unknown error',
        );
      }

      // 返回解析后的数据
      if (fromJson != null) {
        final responseData = data['data'] as Map<String, dynamic>? ?? {};
        return fromJson(responseData);
      }
    }

    return data as T;
  }
}

/// API 客户端 Provider
@riverpod
Future<ApiClient> apiClient(ApiClientRef ref) async {
  final tokenStorage = await ref.watch(tokenStorageServiceProvider.future);
  final tokenManager = await ref.watch(tokenManagerProvider.future);
  final authStateManager = await ref.watch(authStateManagerProvider.future);
  return ApiClient(
    tokenStorage: tokenStorage,
    tokenManager: tokenManager,
    authStateManager: authStateManager,
  );
}
