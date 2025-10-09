import 'dart:io';
import 'package:toklink_member_sdk/api.dart';

/// 使用验证码登录测试
void main() async {
  print('🔐 邮件验证码登录测试...\n');
  
  const testEmail = '2386869710@qq.com';
  // TODO: 请将下面的验证码替换为你收到的真实验证码
  const testCode = '421060'; // 请替换为真实验证码
  
  if (testCode == 'YOUR_VERIFICATION_CODE_HERE') {
    print('❌ 请先更新代码中的验证码！');
    print('💡 请将 testCode 变量替换为你收到的真实验证码');
    print('💡 然后重新运行此脚本');
    return;
  }
  
  try {
    // 配置 SDK
    final customClient = ApiClient(basePath: 'https://gw.trunk.toklink.io/api/member');
    customClient.addDefaultHeader('Content-Type', 'application/json');
    customClient.addDefaultHeader('Accept', 'application/json');
    
    print('⚙️ SDK 配置完成');
    
    // 登录测试 - 使用自定义客户端
    final api = EmailAuthAppApi(customClient);
    
    final command = EmailCodeLoginCommand(
      email: testEmail,
      code: testCode,
      deviceId: 'flutter_test_device_${DateTime.now().millisecondsSinceEpoch}',
      userAgent: 'Flutter Test App',
      ipAddress: '127.0.0.1',
    );
    
    print('\n📤 登录请求:');
    print('   - Email: ${command.email}');
    print('   - Code: ${command.code}');
    print('   - Device ID: ${command.deviceId}');
    
    final result = await api.emailCodeLogin(command);
    
    print('\n✅ 登录结果:');
    print('   - Error Code: ${result?.errCode}');
    print('   - Error Message: ${result?.errMsg}');
    print('   - Error Detail: ${result?.errDlt}');
    
    if (result?.data != null) {
      final loginData = result!.data!;
      print('   - 登录数据:');
      print('     * Access Token: ${loginData.accessToken}');
      print('     * Refresh Token: ${loginData.refreshToken}');
      print('     * Token Type: ${loginData.tokenType}');
      print('     * Expires In: ${loginData.expiresIn}');
      print('     * User ID: ${loginData.userId}');
      print('     * Email: ${loginData.email}');
      print('     * Nickname: ${loginData.nickname}');
      print('     * Avatar: ${loginData.avatar}');
      print('     * Is New User: ${loginData.isNewUser}');
      print('     * Login Type: ${loginData.loginType}');
      
      // 如果登录成功，测试获取用户信息
      if (loginData.accessToken != null) {
        await _testGetUserInfo(loginData.accessToken!);
      }
    }
    
  } catch (e) {
    print('\n❌ 登录失败: $e');
    if (e is ApiException) {
      print('   - 状态码: ${e.code}');
      print('   - 错误信息: ${e.message}');
    }
  }
}

/// 测试获取用户信息
Future<void> _testGetUserInfo(String token) async {
  print('\n👤 测试获取用户信息...');
  
  try {
    // 使用相同的自定义客户端配置
    final customClient = ApiClient(basePath: 'https://gw.trunk.toklink.io/api/member');
    customClient.addDefaultHeader('Content-Type', 'application/json');
    customClient.addDefaultHeader('Accept', 'application/json');
    customClient.addDefaultHeader('Access-Token', token);
    
    final api = MemberAppApi(customClient);
    
    print('📤 获取用户信息请求...');
    print('   - Token: ${token.substring(0, 20)}...');
    
    final result = await api.getCurrentUser({});
    
    print('✅ 获取用户信息成功!');
    print('📋 用户信息:');
    print('   - Error Code: ${result?.errCode}');
    print('   - Error Message: ${result?.errMsg}');
    print('   - Error Detail: ${result?.errDlt}');
    
    if (result?.data != null) {
      final userInfo = result!.data!;
      print('   - 用户详情:');
      print('     * ID: ${userInfo.id}');
      print('     * Email: ${userInfo.email}');
      print('     * Full Name: ${userInfo.fullName}');
      print('     * Phone: ${userInfo.phone}');
      print('     * Avatar: ${userInfo.avatar}');
      print('     * Status: ${userInfo.status}');
    }
    
  } catch (e) {
    print('❌ 获取用户信息失败: $e');
    if (e is ApiException) {
      print('   - 状态码: ${e.code}');
      print('   - 错误信息: ${e.message}');
    }
  }
}
