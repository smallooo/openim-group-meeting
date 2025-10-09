import 'dart:io';
import 'package:toklink_member_sdk/api.dart';

/// 邮件验证码测试
/// 专门用于测试发送邮件验证码和登录功能
void main() async {
  print('🚀 开始邮件验证码测试...\n');
  
  const testEmail = '2386869710@qq.com';
  const testCode = '123456'; // 测试用的验证码
  
  try {
    // 1. 配置 SDK
    await _configureSdk();
    
    // 2. 发送邮件验证码
    await _sendEmailCode(testEmail);
    
    // 3. 等待用户输入验证码
    print('\n📧 验证码已发送到 $testEmail');
    print('💡 请检查邮箱并输入收到的验证码');
    print('💡 或者按回车键使用测试验证码: $testCode');
    
    // 4. 测试登录
    await _testEmailLogin(testEmail, testCode);
    
  } catch (e) {
    print('\n❌ 测试失败: $e');
  }
}

/// 配置 SDK
Future<void> _configureSdk() async {
  print('⚙️ 配置 Member SDK...');
  
  // 使用真实的 API 地址
  final customClient = ApiClient(basePath: 'https://gw.trunk.toklink.io/v1');
  customClient.addDefaultHeader('Content-Type', 'application/json');
  customClient.addDefaultHeader('Accept', 'application/json');
  
  print('✅ SDK 配置完成');
  print('   - Base URL: ${customClient.basePath}');
  print('   - Headers: ${customClient.defaultHeaderMap}');
}

/// 发送邮件验证码
Future<void> _sendEmailCode(String email) async {
  print('\n📧 发送邮件验证码到 $email...');
  
  try {
    final api = EmailAuthAppApi();
    
    // 创建发送验证码请求
    final command = SendEmailCodeCommand(
      email: email,
      purpose: SendEmailCodeCommandPurposeEnum.LOGIN,
      deviceId: 'flutter_test_device_${DateTime.now().millisecondsSinceEpoch}',
      userAgent: 'Flutter Test App',
      ipAddress: '127.0.0.1',
    );
    
    print('📤 请求参数:');
    print('   - Email: ${command.email}');
    print('   - Purpose: ${command.purpose}');
    print('   - Device ID: ${command.deviceId}');
    print('   - User Agent: ${command.userAgent}');
    print('   - IP Address: ${command.ipAddress}');
    
    // 发送请求
    final result = await api.sendEmailCode(command);
    
    print('✅ 发送验证码成功!');
    print('📋 响应详情:');
    print('   - Success: ${result?.success}');
    print('   - Message: ${result?.message}');
    if (result?.data != null) {
      print('   - Data: ${result?.data}');
    }
    
  } catch (e) {
    print('❌ 发送验证码失败: $e');
    _printErrorDetails(e);
    rethrow;
  }
}

/// 测试邮件登录
Future<void> _testEmailLogin(String email, String code) async {
  print('\n🔐 测试邮件验证码登录...');
  
  try {
    final api = EmailAuthAppApi();
    
    // 创建登录请求
    final command = EmailCodeLoginCommand(
      email: email,
      code: code,
      deviceId: 'flutter_test_device_${DateTime.now().millisecondsSinceEpoch}',
      userAgent: 'Flutter Test App',
      ipAddress: '127.0.0.1',
    );
    
    print('📤 登录请求参数:');
    print('   - Email: ${command.email}');
    print('   - Code: ${command.code}');
    print('   - Device ID: ${command.deviceId}');
    print('   - User Agent: ${command.userAgent}');
    print('   - IP Address: ${command.ipAddress}');
    
    // 发送请求
    final result = await api.emailCodeLogin(command);
    
    print('✅ 邮件验证码登录成功!');
    print('📋 登录响应详情:');
    print('   - Success: ${result?.success}');
    print('   - Message: ${result?.message}');
    
    if (result?.data != null) {
      final loginData = result!.data!;
      print('   - 登录数据:');
      print('     * Token: ${loginData.token}');
      print('     * Refresh Token: ${loginData.refreshToken}');
      print('     * User ID: ${loginData.userId}');
      print('     * Email: ${loginData.email}');
      
      // 如果登录成功，测试获取用户信息
      if (loginData.token != null) {
        await _testGetUserInfo(loginData.token!);
      }
    }
    
  } catch (e) {
    print('❌ 邮件验证码登录失败: $e');
    _printErrorDetails(e);
  }
}

/// 测试获取用户信息
Future<void> _testGetUserInfo(String token) async {
  print('\n👤 测试获取用户信息...');
  
  try {
    final api = MemberAppApi();
    
    // 设置认证头
    final customClient = ApiClient(basePath: 'https://gw.trunk.toklink.io/v1');
    customClient.addDefaultHeader('Content-Type', 'application/json');
    customClient.addDefaultHeader('Accept', 'application/json');
    customClient.addDefaultHeader('Access-Token', token);
    
    print('📤 获取用户信息请求...');
    print('   - Token: ${token.substring(0, 20)}...');
    
    // 发送请求
    final result = await api.getCurrentUser({});
    
    print('✅ 获取用户信息成功!');
    print('📋 用户信息详情:');
    print('   - Success: ${result?.success}');
    print('   - Message: ${result?.message}');
    
    if (result?.data != null) {
      final userInfo = result!.data!;
      print('   - 用户信息:');
      print('     * ID: ${userInfo.id}');
      print('     * Email: ${userInfo.email}');
      print('     * Full Name: ${userInfo.fullName}');
      print('     * Phone: ${userInfo.phone}');
      print('     * Avatar: ${userInfo.avatar}');
      print('     * Status: ${userInfo.status}');
    }
    
  } catch (e) {
    print('❌ 获取用户信息失败: $e');
    _printErrorDetails(e);
  }
}

/// 打印错误详情
void _printErrorDetails(dynamic error) {
  if (error is ApiException) {
    print('   - 错误类型: API 异常');
    print('   - 状态码: ${error.code}');
    print('   - 错误信息: ${error.message}');
    
    // 根据状态码提供建议
    switch (error.code) {
      case 401:
        print('   - 建议: 检查认证信息是否正确');
        break;
      case 403:
        print('   - 建议: 检查权限配置');
        break;
      case 404:
        print('   - 建议: 检查 API 地址是否正确');
        break;
      case 500:
        print('   - 建议: 检查服务器状态');
        break;
      default:
        print('   - 建议: 检查请求参数和服务器配置');
    }
  } else if (error is SocketException) {
    print('   - 错误类型: 网络连接失败');
    print('   - 建议: 检查网络连接和服务器地址');
  } else if (error is HttpException) {
    print('   - 错误类型: HTTP 请求失败');
    print('   - 建议: 检查服务器状态和请求参数');
  } else {
    print('   - 错误类型: ${error.runtimeType}');
    print('   - 错误信息: $error');
  }
}
