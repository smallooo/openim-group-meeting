import 'dart:io';
import 'package:toklink_member_sdk/api.dart';

/// 发送邮件验证码
void main() async {
  print('📧 发送邮件验证码测试...\n');
  
  const testEmail = '2386869710@qq.com';
  
  try {
    // 配置 SDK
    final customClient = ApiClient(basePath: 'https://gw.trunk.toklink.io/api/member');
    customClient.addDefaultHeader('Content-Type', 'application/json');
    customClient.addDefaultHeader('Accept', 'application/json');
    
    print('⚙️ SDK 配置完成');
    print('   - Base URL: ${customClient.basePath}');
    
    // 发送验证码 - 使用自定义客户端
    final api = EmailAuthAppApi(customClient);
    
    final command = SendEmailCodeCommand(
      email: testEmail,
      purpose: SendEmailCodeCommandPurposeEnum.LOGIN,
      deviceId: 'flutter_test_device_${DateTime.now().millisecondsSinceEpoch}',
      userAgent: 'Flutter Test App',
      ipAddress: '127.0.0.1',
    );
    
    print('\n📤 发送验证码请求:');
    print('   - Email: ${command.email}');
    print('   - Purpose: ${command.purpose}');
    print('   - Device ID: ${command.deviceId}');
    
    final result = await api.sendEmailCode(command);
    
    print('\n✅ 发送验证码结果:');
    print('   - Error Code: ${result?.errCode}');
    print('   - Error Message: ${result?.errMsg}');
    print('   - Error Detail: ${result?.errDlt}');
    if (result?.data != null) {
      print('   - Data: ${result?.data}');
    }
    
    print('\n📧 请检查邮箱 $testEmail 并获取验证码');
    print('💡 收到验证码后，请运行: dart run lib/api_sdk_use/login_with_code.dart');
    
  } catch (e) {
    print('\n❌ 发送验证码失败: $e');
    if (e is ApiException) {
      print('   - 状态码: ${e.code}');
      print('   - 错误信息: ${e.message}');
    }
  }
}
