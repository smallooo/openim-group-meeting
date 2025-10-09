import 'dart:io';
import 'package:flutter/material.dart';
import 'package:toklink_member_sdk/api.dart';

/// Member SDK 集成测试
/// 用于在现有项目中测试 SDK 与现有代码的兼容性
class MemberSdkIntegrationTest {
  
  /// 测试 SDK 与现有认证系统的兼容性
  static Future<void> testAuthCompatibility() async {
    print('🔐 测试 SDK 与现有认证系统的兼容性...\n');
    
    try {
      // 1. 配置 SDK 使用现有的 API 地址
      _configureSdkForExistingSystem();
      
      // 2. 测试发送验证码（对比现有接口）
      await _testSendCodeCompatibility();
      
      // 3. 测试登录（对比现有接口）
      await _testLoginCompatibility();
      
      // 4. 测试获取用户信息
      await _testGetUserInfoCompatibility();
      
      print('\n✅ 认证系统兼容性测试完成');
      
    } catch (e) {
      print('\n❌ 认证系统兼容性测试失败: $e');
    }
  }
  
  /// 配置 SDK 使用现有系统
  static void _configureSdkForExistingSystem() {
    print('⚙️ 配置 SDK 使用现有系统...');
    
    // 使用现有的 API 地址 - 注意：basePath 是 final 的，需要在构造函数中设置
    final customClient = ApiClient(basePath: 'https://gw.trunk.toklink.io/v1');
    
    // 设置与现有系统兼容的请求头
    customClient.addDefaultHeader('Content-Type', 'application/json');
    customClient.addDefaultHeader('Accept', 'application/json');
    
    // 如果需要，可以设置认证头
    // defaultApiClient.addDefaultHeader('Access-Token', 'your_token_here');
    
    print('✅ SDK 配置完成');
    print('   - Base URL: ${customClient.basePath}');
    print('   - Headers: ${customClient.defaultHeaderMap}');
  }
  
  /// 测试发送验证码兼容性
  static Future<void> _testSendCodeCompatibility() async {
    print('\n📧 测试发送验证码兼容性...');
    
    try {
      final api = EmailAuthAppApi();
      
      // 使用与现有系统相同的参数格式
      final command = SendEmailCodeCommand(
        email: 'test@example.com',
        purpose: SendEmailCodeCommandPurposeEnum.LOGIN,
        deviceId: 'test_device_id',
        userAgent: 'Flutter App',
        ipAddress: '127.0.0.1',
      );
      
      print('📤 发送验证码请求...');
      print('   - Email: ${command.email}');
      print('   - Purpose: ${command.purpose}');
      
      final result = await api.sendEmailCode(command);
      
      print('✅ 发送验证码成功');
      print('   - 响应: $result');
      
      // 检查响应格式是否与现有系统兼容
      if (result != null) {
        print('   - 响应格式检查:');
        print('     * Success: ${result.success}');
        print('     * Message: ${result.message}');
        print('     * Data: ${result.data}');
      }
      
    } catch (e) {
      print('❌ 发送验证码失败: $e');
      _printCompatibilityError(e);
    }
  }
  
  /// 测试登录兼容性
  static Future<void> _testLoginCompatibility() async {
    print('\n🔑 测试登录兼容性...');
    
    try {
      final api = EmailAuthAppApi();
      
      // 使用与现有系统相同的参数格式
      final command = EmailCodeLoginCommand(
        email: 'test@example.com',
        code: '123456',
        deviceId: 'test_device_id',
        userAgent: 'Flutter App',
        ipAddress: '127.0.0.1',
      );
      
      print('📤 登录请求...');
      print('   - Email: ${command.email}');
      print('   - Code: ${command.code}');
      
      final result = await api.emailCodeLogin(command);
      
      print('✅ 登录成功');
      print('   - 响应: $result');
      
      // 检查响应格式是否与现有系统兼容
      if (result != null && result.data != null) {
        final loginData = result.data!;
        print('   - 登录响应检查:');
        print('     * Token: ${loginData.token}');
        print('     * Refresh Token: ${loginData.refreshToken}');
        print('     * User ID: ${loginData.userId}');
        print('     * Email: ${loginData.email}');
        
        // 如果登录成功，保存 token 用于后续测试
        if (loginData.token != null) {
          // 注意：这里需要全局设置 token，实际使用时需要根据具体需求调整
          print('   - Token: ${loginData.token}');
          print('   - 注意：Token 需要在全局客户端中设置');
        }
      }
      
    } catch (e) {
      print('❌ 登录失败: $e');
      _printCompatibilityError(e);
    }
  }
  
  /// 测试获取用户信息兼容性
  static Future<void> _testGetUserInfoCompatibility() async {
    print('\n👤 测试获取用户信息兼容性...');
    
    try {
      final api = MemberAppApi();
      
      print('📤 获取用户信息请求...');
      
      final result = await api.getCurrentUser({});
      
      print('✅ 获取用户信息成功');
      print('   - 响应: $result');
      
      // 检查响应格式是否与现有系统兼容
      if (result != null && result.data != null) {
        final userInfo = result.data!;
        print('   - 用户信息检查:');
        print('     * ID: ${userInfo.id}');
        print('     * Email: ${userInfo.email}');
        print('     * Full Name: ${userInfo.fullName}');
        print('     * Phone: ${userInfo.phone}');
        print('     * Avatar: ${userInfo.avatar}');
        print('     * Status: ${userInfo.status}');
      }
      
    } catch (e) {
      print('❌ 获取用户信息失败: $e');
      _printCompatibilityError(e);
    }
  }
  
  /// 打印兼容性错误信息
  static void _printCompatibilityError(dynamic error) {
    print('   - 兼容性错误分析:');
    
    if (error is ApiException) {
      print('     * 错误类型: API 异常');
      print('     * 状态码: ${error.code}');
      print('     * 错误信息: ${error.message}');
      
      // 根据状态码提供建议
      switch (error.code) {
        case 401:
          print('     * 建议: 检查认证信息是否正确');
          break;
        case 403:
          print('     * 建议: 检查权限配置');
          break;
        case 404:
          print('     * 建议: 检查 API 地址是否正确');
          break;
        case 500:
          print('     * 建议: 检查服务器状态');
          break;
        default:
          print('     * 建议: 检查请求参数和服务器配置');
      }
    } else if (error is SocketException) {
      print('     * 错误类型: 网络连接失败');
      print('     * 建议: 检查网络连接和服务器地址');
    } else {
      print('     * 错误类型: ${error.runtimeType}');
      print('     * 错误信息: $error');
    }
  }
  
  /// 创建 SDK 适配器示例
  static void createSdkAdapterExample() {
    print('\n🔧 创建 SDK 适配器示例...');
    
    final adapterCode = '''
// Member SDK 适配器示例
class MemberSdkAdapter {
  final EmailAuthAppApi _emailAuthApi;
  final MemberAppApi _memberApi;
  final TokenAppApi _tokenApi;
  
  MemberSdkAdapter() 
    : _emailAuthApi = EmailAuthAppApi(),
      _memberApi = MemberAppApi(),
      _tokenApi = TokenAppApi() {
    _configureSdk();
  }
  
  void _configureSdk() {
    // 注意：basePath 是 final 的，需要在构造函数中设置
    final customClient = ApiClient(basePath: 'https://gw.trunk.toklink.io/v1');
    customClient.addDefaultHeader('Content-Type', 'application/json');
    customClient.addDefaultHeader('Accept', 'application/json');
  }
  
  // 发送验证码 - 兼容现有接口
  Future<Map<String, dynamic>> sendEmailCode({
    required String email,
    String? deviceId,
    String? userAgent,
    String? ipAddress,
  }) async {
    final command = SendEmailCodeCommand(
      email: email,
      purpose: SendEmailCodeCommandPurposeEnum.LOGIN,
      deviceId: deviceId ?? '',
      userAgent: userAgent ?? '',
      ipAddress: ipAddress ?? '',
    );
    
    final result = await _emailAuthApi.sendEmailCode(command);
    return result?.toJson() ?? {};
  }
  
  // 验证码登录 - 兼容现有接口
  Future<Map<String, dynamic>> emailCodeLogin({
    required String email,
    required String code,
    String? deviceId,
    String? userAgent,
    String? ipAddress,
  }) async {
    final command = EmailCodeLoginCommand(
      email: email,
      code: code,
      deviceId: deviceId ?? '',
      userAgent: userAgent ?? '',
      ipAddress: ipAddress ?? '',
    );
    
    final result = await _emailAuthApi.emailCodeLogin(command);
    return result?.toJson() ?? {};
  }
  
  // 获取用户信息 - 兼容现有接口
  Future<Map<String, dynamic>> getCurrentUser() async {
    final result = await _memberApi.getCurrentUser({});
    return result?.toJson() ?? {};
  }
  
  // 刷新 Token - 兼容现有接口
  Future<Map<String, dynamic>> refreshToken(String refreshToken) async {
    final command = TokenRefreshCommand(refreshToken: refreshToken);
    final result = await _tokenApi.refreshToken(command);
    return result?.toJson() ?? {};
  }
  
  // 退出登录 - 兼容现有接口
  Future<Map<String, dynamic>> logout() async {
    final command = TokenLogoutCommand();
    final result = await _tokenApi.logout(command);
    return result?.toJson() ?? {};
  }
}
''';
    
    print('✅ SDK 适配器示例代码:');
    print(adapterCode);
  }
}

/// 测试页面 Widget
class MemberSdkIntegrationTestPage extends StatefulWidget {
  const MemberSdkIntegrationTestPage({Key? key}) : super(key: key);

  @override
  State<MemberSdkIntegrationTestPage> createState() => _MemberSdkIntegrationTestPageState();
}

class _MemberSdkIntegrationTestPageState extends State<MemberSdkIntegrationTestPage> {
  final List<String> _testResults = [];
  bool _isRunning = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Member SDK 集成测试'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // 测试按钮
            ElevatedButton(
              onPressed: _isRunning ? null : _runCompatibilityTest,
              child: const Text('运行兼容性测试'),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: _isRunning ? null : _showAdapterExample,
              child: const Text('显示适配器示例'),
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

  void _runCompatibilityTest() async {
    setState(() {
      _isRunning = true;
      _testResults.clear();
    });

    try {
      await MemberSdkIntegrationTest.testAuthCompatibility();
      setState(() {
        _testResults.add('✅ 兼容性测试完成，请在控制台查看详细结果');
      });
    } catch (e) {
      setState(() {
        _testResults.add('❌ 兼容性测试失败: $e');
      });
    } finally {
      setState(() {
        _isRunning = false;
      });
    }
  }

  void _showAdapterExample() {
    setState(() {
      _testResults.clear();
      _testResults.add('🔧 SDK 适配器示例代码:');
      _testResults.add('');
      _testResults.add('class MemberSdkAdapter {');
      _testResults.add('  final EmailAuthAppApi _emailAuthApi;');
      _testResults.add('  final MemberAppApi _memberApi;');
      _testResults.add('  final TokenAppApi _tokenApi;');
      _testResults.add('');
      _testResults.add('  MemberSdkAdapter() : ...');
      _testResults.add('');
      _testResults.add('  Future<Map<String, dynamic>> sendEmailCode({...}) async {');
      _testResults.add('    // 实现代码...');
      _testResults.add('  }');
      _testResults.add('}');
      _testResults.add('');
      _testResults.add('💡 详细代码请查看控制台输出');
    });
    
    // 在控制台输出完整代码
    MemberSdkIntegrationTest.createSdkAdapterExample();
  }

  void _clearResults() {
    setState(() {
      _testResults.clear();
    });
  }
}
