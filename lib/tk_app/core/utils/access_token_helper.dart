import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants/api_constants.dart';
import '../services/token_storage_service.dart';
import '../services/token_manager.dart';

/// 提供统一的 accessToken 获取方法，便于在业务代码中复用。
/// 
/// - getAccessToken(): 返回“有效的” accessToken，必要时会自动刷新。
/// - getAccessTokenDirect(): 直接读取本地缓存的 accessToken（不刷新）。
/// - buildAccessTokenHeader(): 返回可直接注入到请求的认证头 Map。
class TokenAccessHelper {
  /// 获取有效 accessToken（必要时自动刷新）
  static Future<String?> getAccessToken() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final storage = TokenStorageService(prefs);

      // 与 TokenManager Provider 保持一致的 Dio 配置
      final dio = Dio(BaseOptions(
        baseUrl: ApiConstants.baseUrl,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        sendTimeout: const Duration(seconds: 30),
        headers: const {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ));

      final manager = TokenManager(storage, dio);
      final token = await manager.getValidAccessToken();
      debugPrint('[TokenAccessHelper] 获取有效 accessToken: $token');
      return token;
    } catch (e) {
      debugPrint('[TokenAccessHelper] 获取 accessToken 失败: $e');
      return null;
    }
  }

  /// 直接读取已缓存的 accessToken（不刷新）
  static Future<String?> getAccessTokenDirect() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final storage = TokenStorageService(prefs);
      final token = storage.getAccessToken();
      debugPrint('[TokenAccessHelper] 直接读取 accessToken: $token');
      return token;
    } catch (e) {
      debugPrint('[TokenAccessHelper] 直接读取 accessToken 失败: $e');
      return null;
    }
  }

  /// 构建认证头（Access-Token），便于注入到客户端
  static Future<Map<String, String>> buildAccessTokenHeader({
    bool refreshIfNeeded = true,
  }) async {
    final token = refreshIfNeeded
        ? await getAccessToken()
        : await getAccessTokenDirect();
    if (token != null && token.isNotEmpty) {
      return {'Access-Token': token};
    }
    return {};
  }

  /// 获取有效 UserId
  static Future<String?> getUserId() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final storage = TokenStorageService(prefs);
      return storage.getUserId();
    } catch (e) {
      debugPrint('[TokenAccessHelper] 获取 UserId 失败: $e');
      return null;
    }
  }

}