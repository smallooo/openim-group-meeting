import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/network/api_client.dart';
import '../../../../core/constants/api_constants.dart';
import '../../../../shared/models/auth/send_code_request.dart';
import '../../../../shared/models/auth/send_code_response.dart';
import '../../../../shared/models/auth/code_login_request.dart';
import '../../../../shared/models/auth/code_login_response.dart';

part 'auth_repository.g.dart';

/// 认证仓库
class AuthRepository {
  final ApiClient _apiClient;

  AuthRepository(this._apiClient);

  /// 发送验证码
  /// 
  /// 向指定邮箱发送验证码
  /// [request] 发送验证码请求参数
  /// 
  /// 返回发送结果，包含脱敏邮箱、过期时间等信息
  Future<SendCodeResponse> sendCode(SendCodeRequest request) async {
    return await _apiClient.post<SendCodeResponse>(
      ApiConstants.authSendCode,
      data: request.toJson(),
      fromJson: SendCodeResponse.fromJson,
    );
  }

  /// 验证码登录
  /// 
  /// 使用邮箱和验证码进行登录
  /// [request] 登录请求参数
  /// 
  /// 返回登录结果，包含用户信息和令牌
  Future<CodeLoginResponse> codeLogin(CodeLoginRequest request) async {
    return await _apiClient.post<CodeLoginResponse>(
      ApiConstants.authCodeLogin,
      data: request.toJson(),
      fromJson: CodeLoginResponse.fromJson,
    );
  }

  /// 刷新令牌
  /// 
  /// 使用刷新令牌获取新的访问令牌
  /// [refreshToken] 刷新令牌
  /// 
  /// 返回新的令牌信息
  Future<Map<String, dynamic>> refreshToken(String refreshToken) async {
    print('=== 刷新令牌接口请求开始 ===');
    print('接口地址: ${ApiConstants.authRefreshToken}');
    print('请求参数: refreshToken = $refreshToken');
    
    final response = await _apiClient.post<Map<String, dynamic>>(
      ApiConstants.authRefreshToken,
      data: {'refreshToken': refreshToken},
    );
    
    print('=== 刷新令牌接口响应信息 ===');
    print('完整响应数据: $response');
    if (response != null) {
      print('响应数据类型: ${response.runtimeType}');
      print('响应数据键值对:');
      response.forEach((key, value) {
        print('  $key: $value (${value.runtimeType})');
      });
    }
    print('=== 刷新令牌接口响应结束 ===');
    
    return response;
  }

  /// 退出登录
  /// 
  /// 清除服务端登录状态
  Future<void> logout() async {
    await _apiClient.post<void>(
      ApiConstants.authLogout,
    );
  }

  // ========== 兼容现有API接口 ==========
  
  /// 发送邮箱验证码 - 兼容原有接口格式
  /// 
  /// 提供与原有 TkLoginApi.emailLoginSendCodeReq 相同的接口
  /// 用于逐步迁移现有代码，保持向后兼容性
  Future<Map<String, dynamic>> emailLoginSendCodeReq({
    required String email, 
    String? deviceId, 
    String? userAgent, 
    String? ipAddress,
  }) async {
    final request = SendCodeRequest(
      email: email,
      purpose: 'LOGIN',
      deviceId: deviceId ?? "",
      userAgent: userAgent ?? "",
      ipAddress: ipAddress ?? "",
    );
    
    return await _apiClient.post<Map<String, dynamic>>(
      ApiConstants.authSendCode,
      data: request.toJson(),
    );
  }

  /// 邮箱验证码登录 - 兼容原有接口格式
  /// 
  /// 提供与原有 TkLoginApi.emailCodeLoginReq 相同的接口
  /// 用于逐步迁移现有代码，保持向后兼容性
  Future<Map<String, dynamic>> emailCodeLoginReq({
    required String email, 
    required String code, 
    String? deviceId, 
    String? userAgent, 
    String? ipAddress,
  }) async {
    final request = CodeLoginRequest(
      email: email,
      code: code,
      deviceId: deviceId ?? "",
      userAgent: userAgent ?? "",
      ipAddress: ipAddress ?? "",
    );
    
    return await _apiClient.post<Map<String, dynamic>>(
      ApiConstants.authCodeLogin,
      data: request.toJson(),
    );
  }
}

/// 认证仓库 Provider
@riverpod
Future<AuthRepository> authRepository(AuthRepositoryRef ref) async {
  final apiClient = await ref.watch(apiClientProvider.future);
  return AuthRepository(apiClient);
}
