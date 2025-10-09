import 'dart:io';
import 'package:flutter/material.dart';
import 'package:toklink_member_sdk/api.dart';

/// Member SDK 测试类
/// 用于验证 member-sdk 是否正常工作
class MemberSdkTest {
  static const String _testEmail = 'test@example.com';
  static const String _testCode = '123456';
  static const String _testDeviceId = 'test_device_123';
  static const String _testUserAgent = 'Flutter Test App';
  static const String _testIpAddress = '127.0.0.1';

  /// 运行所有测试
  static Future<void> runAllTests() async {
    print('🚀 开始 Member SDK 测试...\n');
    
    try {
      // 1. 配置 SDK
      await _configureSdk();
      
      // 2. 测试发送邮箱验证码
      await _testSendEmailCode();
      
      // 3. 测试邮箱验证码登录
      await _testEmailCodeLogin();
      
      // 4. 测试获取当前用户信息
      await _testGetCurrentUser();
      
      // 5. 测试刷新 Token
      await _testRefreshToken();
      
      // 6. 测试退出登录
      await _testLogout();
      
      print('\n✅ 所有测试完成！');
      
    } catch (e) {
      print('\n❌ 测试过程中出现错误: $e');
    }
  }

  /// 配置 SDK
  static Future<void> _configureSdk() async {
    print('📋 配置 Member SDK...');
    
    try {
      // 设置基础 URL - 注意：basePath 是 final 的，需要在构造函数中设置
      final customClient = ApiClient(basePath: 'https://gw.trunk.toklink.io/v1');
      
      // 设置默认请求头
      customClient.addDefaultHeader('Content-Type', 'application/json');
      customClient.addDefaultHeader('Accept', 'application/json');
      
      // 如果有访问令牌，可以在这里设置
      // defaultApiClient.addDefaultHeader('Access-Token', 'your_access_token_here');
      
      print('✅ SDK 配置完成');
      print('   - Base URL: ${customClient.basePath}');
      print('   - Headers: ${customClient.defaultHeaderMap}');
      
    } catch (e) {
      print('❌ SDK 配置失败: $e');
      rethrow;
    }
  }

  /// 测试发送邮箱验证码
  static Future<void> _testSendEmailCode() async {
    print('\n📧 测试发送邮箱验证码...');
    
    try {
      final api = EmailAuthAppApi();
      
      // 创建发送验证码请求
      final command = SendEmailCodeCommand(
        email: _testEmail,
        purpose: SendEmailCodeCommandPurposeEnum.LOGIN,
        deviceId: _testDeviceId,
        userAgent: _testUserAgent,
        ipAddress: _testIpAddress,
      );
      
      print('   请求参数:');
      print('   - Email: ${command.email}');
      print('   - Purpose: ${command.purpose}');
      print('   - Device ID: ${command.deviceId}');
      print('   - User Agent: ${command.userAgent}');
      print('   - IP Address: ${command.ipAddress}');
      
      // 发送请求
      final result = await api.sendEmailCode(command);
      
      print('✅ 发送验证码成功!');
      print('   响应数据: $result');
      
      if (result != null) {
        print('   响应详情:');
        print('   - Success: ${result.success}');
        print('   - Message: ${result.message}');
        if (result.data != null) {
          print('   - Data: ${result.data}');
        }
      }
      
    } catch (e) {
      print('❌ 发送验证码失败: $e');
      _printErrorDetails(e);
    }
  }

  /// 测试邮箱验证码登录
  static Future<void> _testEmailCodeLogin() async {
    print('\n🔐 测试邮箱验证码登录...');
    
    try {
      final api = EmailAuthAppApi();
      
      // 创建登录请求
      final command = EmailCodeLoginCommand(
        email: _testEmail,
        code: _testCode,
        deviceId: _testDeviceId,
        userAgent: _testUserAgent,
        ipAddress: _testIpAddress,
      );
      
      print('   请求参数:');
      print('   - Email: ${command.email}');
      print('   - Code: ${command.code}');
      print('   - Device ID: ${command.deviceId}');
      print('   - User Agent: ${command.userAgent}');
      print('   - IP Address: ${command.ipAddress}');
      
      // 发送请求
      final result = await api.emailCodeLogin(command);
      
      print('✅ 邮箱验证码登录成功!');
      print('   响应数据: $result');
      
      if (result != null) {
        print('   响应详情:');
        print('   - Success: ${result.success}');
        print('   - Message: ${result.message}');
        if (result.data != null) {
          print('   - Data: ${result.data}');
          // 如果登录成功，保存 token 用于后续测试
          if (result.data?.token != null) {
            // 注意：这里需要全局设置 token，实际使用时需要根据具体需求调整
            print('   - Token: ${result.data!.token}');
            print('   - 注意：Token 需要在全局客户端中设置');
          }
        }
      }
      
    } catch (e) {
      print('❌ 邮箱验证码登录失败: $e');
      _printErrorDetails(e);
    }
  }

  /// 测试获取当前用户信息
  static Future<void> _testGetCurrentUser() async {
    print('\n👤 测试获取当前用户信息...');
    
    try {
      final api = MemberAppApi();
      
      // 发送请求（空对象作为 body）
      final result = await api.getCurrentUser({});
      
      print('✅ 获取用户信息成功!');
      print('   响应数据: $result');
      
      if (result != null) {
        print('   响应详情:');
        print('   - Success: ${result.success}');
        print('   - Message: ${result.message}');
        if (result.data != null) {
          final userInfo = result.data!;
          print('   - 用户信息:');
          print('     * ID: ${userInfo.id}');
          print('     * Email: ${userInfo.email}');
          print('     * Full Name: ${userInfo.fullName}');
          print('     * Phone: ${userInfo.phone}');
          print('     * Avatar: ${userInfo.avatar}');
          print('     * Status: ${userInfo.status}');
        }
      }
      
    } catch (e) {
      print('❌ 获取用户信息失败: $e');
      _printErrorDetails(e);
    }
  }

  /// 测试刷新 Token
  static Future<void> _testRefreshToken() async {
    print('\n🔄 测试刷新 Token...');
    
    try {
      final api = TokenAppApi();
      
      // 创建刷新 Token 请求
      final command = TokenRefreshCommand(
        refreshToken: 'test_refresh_token', // 这里应该是真实的 refresh token
      );
      
      print('   请求参数:');
      print('   - Refresh Token: ${command.refreshToken}');
      
      // 发送请求
      final result = await api.refreshToken(command);
      
      print('✅ 刷新 Token 成功!');
      print('   响应数据: $result');
      
      if (result != null) {
        print('   响应详情:');
        print('   - Success: ${result.success}');
        print('   - Message: ${result.message}');
        if (result.data != null) {
          print('   - Data: ${result.data}');
        }
      }
      
    } catch (e) {
      print('❌ 刷新 Token 失败: $e');
      _printErrorDetails(e);
    }
  }

  /// 测试退出登录
  static Future<void> _testLogout() async {
    print('\n🚪 测试退出登录...');
    
    try {
      final api = TokenAppApi();
      
      // 创建退出登录请求
      final command = TokenLogoutCommand();
      
      print('   请求参数: 无');
      
      // 发送请求
      final result = await api.logout(command);
      
      print('✅ 退出登录成功!');
      print('   响应数据: $result');
      
      if (result != null) {
        print('   响应详情:');
        print('   - Success: ${result.success}');
        print('   - Message: ${result.message}');
      }
      
    } catch (e) {
      print('❌ 退出登录失败: $e');
      _printErrorDetails(e);
    }
  }

  /// 打印错误详情
  static void _printErrorDetails(dynamic error) {
    if (error is ApiException) {
      print('   - 错误类型: ApiException');
      print('   - 状态码: ${error.code}');
      print('   - 错误信息: ${error.message}');
    } else if (error is SocketException) {
      print('   - 错误类型: SocketException');
      print('   - 错误信息: 网络连接失败');
    } else if (error is HttpException) {
      print('   - 错误类型: HttpException');
      print('   - 错误信息: HTTP 请求失败');
    } else {
      print('   - 错误类型: ${error.runtimeType}');
      print('   - 错误信息: $error');
    }
  }

  /// 测试 SDK 基本功能（不依赖网络）
  static void testSdkBasicFunctionality() {
    print('🧪 测试 SDK 基本功能...');
    
    try {
      // 测试模型创建
      final sendCodeCommand = SendEmailCodeCommand(
        email: _testEmail,
        purpose: SendEmailCodeCommandPurposeEnum.LOGIN,
        deviceId: _testDeviceId,
        userAgent: _testUserAgent,
        ipAddress: _testIpAddress,
      );
      
      final loginCommand = EmailCodeLoginCommand(
        email: _testEmail,
        code: _testCode,
        deviceId: _testDeviceId,
        userAgent: _testUserAgent,
        ipAddress: _testIpAddress,
      );
      
      // 测试 JSON 序列化
      final sendCodeJson = sendCodeCommand.toJson();
      final loginJson = loginCommand.toJson();
      
      print('✅ SDK 基本功能测试通过!');
      print('   - 模型创建: 成功');
      print('   - JSON 序列化: 成功');
      print('   - SendCode JSON: $sendCodeJson');
      print('   - Login JSON: $loginJson');
      
      // 测试 JSON 反序列化
      final sendCodeFromJson = SendEmailCodeCommand.fromJson(sendCodeJson);
      final loginFromJson = EmailCodeLoginCommand.fromJson(loginJson);
      
      print('   - JSON 反序列化: 成功');
      print('   - SendCode 反序列化: ${sendCodeFromJson?.email}');
      print('   - Login 反序列化: ${loginFromJson?.email}');
      
    } catch (e) {
      print('❌ SDK 基本功能测试失败: $e');
    }
  }
}

/// 测试页面 Widget
class MemberSdkTestPage extends StatefulWidget {
  const MemberSdkTestPage({Key? key}) : super(key: key);

  @override
  State<MemberSdkTestPage> createState() => _MemberSdkTestPageState();
}

class _MemberSdkTestPageState extends State<MemberSdkTestPage> {
  final List<String> _testResults = [];
  bool _isRunning = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Member SDK 测试'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // 测试按钮
            ElevatedButton(
              onPressed: _isRunning ? null : _runBasicTest,
              child: const Text('运行基本功能测试'),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: _isRunning ? null : _runNetworkTest,
              child: const Text('运行网络接口测试'),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: _clearResults,
              child: const Text('清空结果'),
            ),
            const SizedBox(height: 16),
            
            // 测试状态
            if (_isRunning)
              const Center(
                child: CircularProgressIndicator(),
              ),
            
            // 测试结果
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ListView.builder(
                  itemCount: _testResults.length,
                  itemBuilder: (context, index) {
                    final result = _testResults[index];
                    final isError = result.startsWith('❌');
                    final isSuccess = result.startsWith('✅');
                    
                    return Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: isError 
                            ? Colors.red.shade50 
                            : isSuccess 
                                ? Colors.green.shade50 
                                : Colors.grey.shade50,
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.grey.shade300,
                            width: 0.5,
                          ),
                        ),
                      ),
                      child: Text(
                        result,
                        style: TextStyle(
                          fontFamily: 'monospace',
                          fontSize: 12,
                          color: isError 
                              ? Colors.red.shade700 
                              : isSuccess 
                                  ? Colors.green.shade700 
                                  : Colors.black87,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _runBasicTest() async {
    setState(() {
      _isRunning = true;
      _testResults.clear();
    });

    // 重定向 print 输出到 UI
    _redirectPrint();

    try {
      MemberSdkTest.testSdkBasicFunctionality();
    } finally {
      setState(() {
        _isRunning = false;
      });
    }
  }

  void _runNetworkTest() async {
    setState(() {
      _isRunning = true;
      _testResults.clear();
    });

    // 重定向 print 输出到 UI
    _redirectPrint();

    try {
      await MemberSdkTest.runAllTests();
    } finally {
      setState(() {
        _isRunning = false;
      });
    }
  }

  void _clearResults() {
    setState(() {
      _testResults.clear();
    });
  }

  void _redirectPrint() {
    // 这里可以添加将 print 输出重定向到 UI 的逻辑
    // 为了简化，我们直接显示一个提示
    setState(() {
      _testResults.add('📱 请在控制台查看详细测试结果');
      _testResults.add('💡 建议在 IDE 中运行测试以查看完整输出');
    });
  }
}
