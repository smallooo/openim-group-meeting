import 'package:flutter/foundation.dart';
import 'package:flutter_openim_sdk/flutter_openim_sdk.dart';
import 'package:get/get.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:openim_common/openim_common.dart';
import '../../../routes/app_pages.dart';
import 'token_storage_service.dart';
import 'token_manager.dart';

part 'auth_state_manager.g.dart';

/// 认证状态管理器
/// 
/// 负责管理全局的认证状态，处理登录/登出事件
class AuthStateManager {
  final TokenStorageService _tokenStorage;
  final TokenManager _tokenManager;
  
  // 登录状态变化回调
  final List<VoidCallback> _onLoginCallbacks = [];
  final List<VoidCallback> _onLogoutCallbacks = [];

  AuthStateManager(this._tokenStorage, this._tokenManager);

  /// 添加登录成功回调
  void addOnLoginCallback(VoidCallback callback) {
    _onLoginCallbacks.add(callback);
  }

  /// 添加登出回调
  void addOnLogoutCallback(VoidCallback callback) {
    _onLogoutCallbacks.add(callback);
  }

  /// 移除登录回调
  void removeOnLoginCallback(VoidCallback callback) {
    _onLoginCallbacks.remove(callback);
  }

  /// 移除登出回调
  void removeOnLogoutCallback(VoidCallback callback) {
    _onLogoutCallbacks.remove(callback);
  }

  /// 触发登录成功事件
  void notifyLoginSuccess() {
    debugPrint('[AuthStateManager] 触发登录成功事件');
    for (final callback in _onLoginCallbacks) {
      try {
        callback();
      } catch (e) {
        debugPrint('[AuthStateManager] 登录回调执行异常: $e');
      }
    }
  }

  /// 触发登出事件
  void notifyLogout() {
    debugPrint('[AuthStateManager] 触发登出事件');
    for (final callback in _onLogoutCallbacks) {
      try {
        callback();
      } catch (e) {
        debugPrint('[AuthStateManager] 登出回调执行异常: $e');
      }
    }
  }

  /// 检查登录状态
  bool isLoggedIn() {
    return _tokenManager.isLoggedIn();
  }

  /// 执行登出
  Future<void> logout() async {
    debugPrint('[AuthStateManager] 执行登出，开始清除所有登录数据');
    
    try {
      // 1. 清除 IM 登录数据
      await DataSp.removeLoginCertificate();
      await DataSp.putLoginAccount({});
      
      // 2. 清除登录响应数据
      SpUtil().remove('email_login_response');
      SpUtil().remove('im_login_response');
      
      // 3. 清除邮箱登录 token 数据
      await _tokenStorage.clearLoginInfo();
      
      // 4. 清除 IM SDK 登录状态（如果已登录）
      try {
        await OpenIM.iMManager.logout();
        debugPrint('[AuthStateManager] IM SDK 已登出');
      } catch (e) {
        debugPrint('[AuthStateManager] IM SDK 登出失败（可能未登录）: $e');
      }
      
      debugPrint('[AuthStateManager] ✅ 所有登录数据已清除');
    } catch (e) {
      debugPrint('[AuthStateManager] ❌ 清除登录数据时出错: $e');
    }
    
    // 触发登出事件
    notifyLogout();
    
    // 跳转到登录页
    _navigateToLogin();
  }

  /// 跳转到登录页面
  void _navigateToLogin() {
    debugPrint('[AuthStateManager] 跳转到登录页面');
    
    // 使用GetX跳转到登录页
    // 清除所有页面栈，确保用户无法返回
    Get.offAllNamed(AppRoutes.tk_login);
  }

  /// 获取当前用户信息
  Map<String, String?> getCurrentUserInfo() {
    return {
      'userId': _tokenStorage.getUserId(),
      'email': _tokenStorage.getEmail(),
      'nickname': _tokenStorage.getNickname(),
      'avatar': _tokenStorage.getAvatar(),
    };
  }
}

/// 认证状态管理器 Provider
@riverpod
Future<AuthStateManager> authStateManager(AuthStateManagerRef ref) async {
  final tokenStorage = await ref.watch(tokenStorageServiceProvider.future);
  final tokenManager = await ref.watch(tokenManagerProvider.future);
  return AuthStateManager(tokenStorage, tokenManager);
}
