import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/repositories/auth_repository.dart';
import '../../../../shared/models/auth/send_code_request.dart';
import '../../../../shared/models/auth/send_code_response.dart';
import '../../../../shared/models/auth/code_login_request.dart';
import '../../../../shared/models/auth/code_login_response.dart';
import '../../../../core/exceptions/api_exception.dart';

part 'auth_provider.freezed.dart';
part 'auth_provider.g.dart';

/// 认证状态
@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    /// 是否正在加载
    @Default(false) bool isLoading,
    
    /// 用户信息
    CodeLoginResponse? user,
    
    /// 错误信息
    String? error,
    
    /// 是否已登录
    @Default(false) bool isLoggedIn,
    
    /// 发送验证码结果
    SendCodeResponse? sendCodeResult,
    
    /// 验证码发送冷却时间（秒）
    @Default(0) int sendCodeCooldown,
  }) = _AuthState;
}

/// 认证 Provider
@riverpod
class Auth extends _$Auth {
  @override
  AuthState build() {
    return const AuthState();
  }

  /// 发送验证码
  Future<void> sendCode({
    required String email,
    String purpose = 'LOGIN',
    String? deviceId,
    String? userAgent,
    String? ipAddress,
  }) async {
    if (state.isLoading) return;

    state = state.copyWith(
      isLoading: true,
      error: null,
    );

    try {
      final request = SendCodeRequest(
        email: email,
        purpose: purpose,
        deviceId: deviceId ?? '',
        platformId: platformId ?? '',
        ipAddress: ipAddress ?? '',
      );

      final authRepo = await ref.read(authRepositoryProvider.future);
      final result = await authRepo.sendCode(request);

      state = state.copyWith(
        isLoading: false,
        sendCodeResult: result,
        sendCodeCooldown: result.nextSendTime,
        error: null,
      );

      // 开始倒计时
      _startCooldownTimer();
    } on ApiException catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.message,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: '发送验证码失败：${e.toString()}',
      );
    }
  }

  /// 验证码登录
  Future<void> codeLogin({
    required String email,
    required String code,
    String? deviceId,
    String? userAgent,
    String? ipAddress,
  }) async {
    if (state.isLoading) return;

    state = state.copyWith(
      isLoading: true,
      error: null,
    );

    try {
      final request = CodeLoginRequest(
        email: email,
        code: code,
        deviceId: deviceId ?? '',
        userAgent: userAgent ?? '',
        ipAddress: ipAddress ?? '',
      );

      final authRepo = await ref.read(authRepositoryProvider.future);
      final result = await authRepo.codeLogin(request);

      state = state.copyWith(
        isLoading: false,
        user: result,
        isLoggedIn: true,
        error: null,
      );

      // 保存登录状态到本地存储
      // await _saveAuthData(result);
    } on ApiException catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.message,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: '登录失败：${e.toString()}',
      );
    }
  }

  /// 退出登录
  Future<void> logout() async {
    try {
      final authRepo = await ref.read(authRepositoryProvider.future);
      await authRepo.logout();
    } catch (e) {
      // 即使服务端退出失败，也要清除本地状态
      debugPrint('服务端退出登录失败：$e');
    }

    state = const AuthState();
    // await _clearAuthData();
  }

  /// 清除错误信息
  void clearError() {
    state = state.copyWith(error: null);
  }

  /// 开始验证码发送冷却倒计时
  void _startCooldownTimer() {
    if (state.sendCodeCooldown <= 0) return;

    Future.delayed(const Duration(seconds: 1), () {
      if (state.sendCodeCooldown > 0) {
        state = state.copyWith(
          sendCodeCooldown: state.sendCodeCooldown - 1,
        );
        _startCooldownTimer();
      }
    });
  }
}
