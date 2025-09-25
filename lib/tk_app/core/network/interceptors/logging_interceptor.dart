import 'dart:convert';
import 'package:dio/dio.dart';

/// 日志拦截器 - 整合现有项目的日志格式
/// 
/// 打印详细的请求和响应日志，与现有login_api.dart保持一致的格式
class LoggingInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final fullUrl = options.baseUrl + options.path;
    // 打印请求
    // ignore: avoid_print
    print('[HTTP] REQUEST => ${options.method} $fullUrl');
    if (options.headers.isNotEmpty) {
      // ignore: avoid_print
      print('[HTTP] Headers => ${jsonEncode(options.headers)}');
    }
    if (options.data != null) {
      // ignore: avoid_print
      print('[HTTP] Body => ${_prettyJson(options.data)}');
    }
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final fullUrl = response.requestOptions.baseUrl + response.requestOptions.path;
    // ignore: avoid_print
    print('[HTTP] RESPONSE <= ${response.statusCode} $fullUrl');
    // ignore: avoid_print
    print('[HTTP] Data <= ${_prettyJson(response.data)}');
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final fullUrl = err.requestOptions.baseUrl + err.requestOptions.path;
    // ignore: avoid_print
    print('[HTTP] ERROR <= ${err.response?.statusCode} $fullUrl');
    // ignore: avoid_print
    print('[HTTP] Error <= ${err.toString()}');
    super.onError(err, handler);
  }

  /// 格式化JSON输出 - 与login_api.dart保持一致
  String _prettyJson(dynamic data) {
    try {
      if (data is String) {
        final obj = json.decode(data);
        return const JsonEncoder.withIndent('  ').convert(obj);
      }
      return const JsonEncoder.withIndent('  ').convert(data);
    } catch (_) {
      return data.toString();
    }
  }
}
