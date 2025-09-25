import 'package:dio/dio.dart';

/// API 异常类
class ApiException implements Exception {
  /// 错误码
  final int code;
  
  /// 错误消息
  final String message;
  
  /// 原始异常
  final dynamic originalException;

  const ApiException({
    required this.code,
    required this.message,
    this.originalException,
  });

  /// 从 DioException 创建 ApiException
  factory ApiException.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return const ApiException(
          code: -1001,
          message: '连接超时，请检查网络连接',
        );
      case DioExceptionType.sendTimeout:
        return const ApiException(
          code: -1002,
          message: '发送超时，请重试',
        );
      case DioExceptionType.receiveTimeout:
        return const ApiException(
          code: -1003,
          message: '接收超时，请重试',
        );
      case DioExceptionType.badResponse:
        final statusCode = dioException.response?.statusCode ?? 0;
        return ApiException(
          code: statusCode,
          message: _getHttpErrorMessage(statusCode),
          originalException: dioException,
        );
      case DioExceptionType.cancel:
        return const ApiException(
          code: -1005,
          message: '请求已取消',
        );
      case DioExceptionType.unknown:
        return ApiException(
          code: -1006,
          message: '网络错误：${dioException.message}',
          originalException: dioException,
        );
      default:
        return ApiException(
          code: -1000,
          message: '未知错误：${dioException.message}',
          originalException: dioException,
        );
    }
  }

  /// 获取 HTTP 错误消息
  static String _getHttpErrorMessage(int statusCode) {
    switch (statusCode) {
      case 400:
        return '请求参数错误';
      case 401:
        return '未授权，请重新登录';
      case 403:
        return '禁止访问';
      case 404:
        return '请求的资源不存在';
      case 405:
        return '请求方法不允许';
      case 408:
        return '请求超时';
      case 409:
        return '资源冲突';
      case 422:
        return '请求参数验证失败';
      case 429:
        return '请求过于频繁，请稍后重试';
      case 500:
        return '服务器内部错误';
      case 502:
        return '网关错误';
      case 503:
        return '服务暂时不可用';
      case 504:
        return '网关超时';
      default:
        return '网络错误 ($statusCode)';
    }
  }

  @override
  String toString() {
    return 'ApiException(code: $code, message: $message)';
  }
}

/// 业务异常类
class BusinessException extends ApiException {
  const BusinessException({
    required super.code,
    required super.message,
    super.originalException,
  });
}

/// 网络异常类
class NetworkException extends ApiException {
  const NetworkException({
    required super.code,
    required super.message,
    super.originalException,
  });
}
