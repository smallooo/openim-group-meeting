import 'dart:io';
import 'package:toklink_member_sdk/api.dart';

/// Member SDK 简单测试
/// 用于快速验证 SDK 是否可用
class MemberSdkSimpleTest {
  
  /// 快速测试 SDK 基本功能
  static void quickTest() {
    print('🚀 Member SDK 快速测试开始...\n');
    
    try {
      // 1. 测试导入和基本配置
      _testBasicImport();
      
      // 2. 测试模型创建
      _testModelCreation();
      
      // 3. 测试 JSON 序列化/反序列化
      _testJsonSerialization();
      
      // 4. 测试 API 实例创建
      _testApiInstanceCreation();
      
      // 5. 测试配置
      _testConfiguration();
      
      print('\n✅ Member SDK 快速测试完成 - SDK 基本可用！');
      
    } catch (e) {
      print('\n❌ Member SDK 快速测试失败: $e');
      print('请检查 SDK 是否正确安装和配置');
    }
  }
  
  /// 测试基本导入
  static void _testBasicImport() {
    print('📦 测试基本导入...');
    
    try {
      // 测试是否可以访问主要类
      final apiClient = ApiClient();
      final emailAuthApi = EmailAuthAppApi();
      final memberApi = MemberAppApi();
      final tokenApi = TokenAppApi();
      
      print('✅ 基本导入成功');
      print('   - ApiClient: ${apiClient.runtimeType}');
      print('   - EmailAuthAppApi: ${emailAuthApi.runtimeType}');
      print('   - MemberAppApi: ${memberApi.runtimeType}');
      print('   - TokenAppApi: ${tokenApi.runtimeType}');
      
    } catch (e) {
      print('❌ 基本导入失败: $e');
      rethrow;
    }
  }
  
  /// 测试模型创建
  static void _testModelCreation() {
    print('\n🏗️ 测试模型创建...');
    
    try {
      // 测试发送验证码命令
      final sendCodeCommand = SendEmailCodeCommand(
        email: 'test@example.com',
        purpose: SendEmailCodeCommandPurposeEnum.LOGIN,
        deviceId: 'test_device',
        userAgent: 'test_agent',
        ipAddress: '127.0.0.1',
      );
      
      // 测试登录命令
      final loginCommand = EmailCodeLoginCommand(
        email: 'test@example.com',
        code: '123456',
        deviceId: 'test_device',
        userAgent: 'test_agent',
        ipAddress: '127.0.0.1',
      );
      
      // 测试刷新 Token 命令
      final refreshCommand = TokenRefreshCommand(
        refreshToken: 'test_refresh_token',
      );
      
      // 测试退出登录命令
      final logoutCommand = TokenLogoutCommand();
      
      print('✅ 模型创建成功');
      print('   - SendEmailCodeCommand: ${sendCodeCommand.email}');
      print('   - EmailCodeLoginCommand: ${loginCommand.email}');
      print('   - TokenRefreshCommand: ${refreshCommand.refreshToken}');
      print('   - TokenLogoutCommand: ${logoutCommand.runtimeType}');
      
    } catch (e) {
      print('❌ 模型创建失败: $e');
      rethrow;
    }
  }
  
  /// 测试 JSON 序列化/反序列化
  static void _testJsonSerialization() {
    print('\n🔄 测试 JSON 序列化/反序列化...');
    
    try {
      // 创建测试对象
      final sendCodeCommand = SendEmailCodeCommand(
        email: 'test@example.com',
        purpose: SendEmailCodeCommandPurposeEnum.LOGIN,
        deviceId: 'test_device',
        userAgent: 'test_agent',
        ipAddress: '127.0.0.1',
      );
      
      // 测试序列化
      final json = sendCodeCommand.toJson();
      print('✅ JSON 序列化成功');
      print('   - JSON: $json');
      
      // 测试反序列化
      final fromJson = SendEmailCodeCommand.fromJson(json);
      print('✅ JSON 反序列化成功');
      print('   - Email: ${fromJson?.email}');
      print('   - Purpose: ${fromJson?.purpose}');
      print('   - Device ID: ${fromJson?.deviceId}');
      
      // 验证数据一致性
      if (fromJson?.email == sendCodeCommand.email &&
          fromJson?.purpose == sendCodeCommand.purpose &&
          fromJson?.deviceId == sendCodeCommand.deviceId) {
        print('✅ 数据一致性验证通过');
      } else {
        print('❌ 数据一致性验证失败');
      }
      
    } catch (e) {
      print('❌ JSON 序列化/反序列化失败: $e');
      rethrow;
    }
  }
  
  /// 测试 API 实例创建
  static void _testApiInstanceCreation() {
    print('\n🔧 测试 API 实例创建...');
    
    try {
      // 测试各种 API 实例
      final emailAuthApi = EmailAuthAppApi();
      final memberApi = MemberAppApi();
      final tokenApi = TokenAppApi();
      final smsApi = SmsLoginAppApi();
      final addressApi = MemberAddressAppApi();
      final relationApi = MemberRelationAppApi();
      
      print('✅ API 实例创建成功');
      print('   - EmailAuthAppApi: ${emailAuthApi.runtimeType}');
      print('   - MemberAppApi: ${memberApi.runtimeType}');
      print('   - TokenAppApi: ${tokenApi.runtimeType}');
      print('   - SmsLoginAppApi: ${smsApi.runtimeType}');
      print('   - MemberAddressAppApi: ${addressApi.runtimeType}');
      print('   - MemberRelationAppApi: ${relationApi.runtimeType}');
      
    } catch (e) {
      print('❌ API 实例创建失败: $e');
      rethrow;
    }
  }
  
  /// 测试配置
  static void _testConfiguration() {
    print('\n⚙️ 测试配置...');
    
    try {
      // 测试默认配置
      final defaultClient = defaultApiClient;
      print('✅ 默认客户端获取成功');
      print('   - Base Path: ${defaultClient.basePath}');
      print('   - Default Headers: ${defaultClient.defaultHeaderMap}');
      
      // 测试自定义配置
      final customClient = ApiClient(
        basePath: 'https://api.example.com/v1',
      );
      print('✅ 自定义客户端创建成功');
      print('   - Base Path: ${customClient.basePath}');
      
      // 测试添加默认头
      customClient.addDefaultHeader('Content-Type', 'application/json');
      customClient.addDefaultHeader('Accept', 'application/json');
      print('✅ 默认头添加成功');
      print('   - Headers: ${customClient.defaultHeaderMap}');
      
    } catch (e) {
      print('❌ 配置测试失败: $e');
      rethrow;
    }
  }
  
  /// 测试网络请求（需要真实服务器）
  static Future<void> testNetworkRequest() async {
    print('\n🌐 测试网络请求...');
    
    try {
      // 配置客户端 - 注意：basePath 是 final 的，需要在构造函数中设置
      final customClient = ApiClient(basePath: 'https://gw.trunk.toklink.io/v1');
      customClient.addDefaultHeader('Content-Type', 'application/json');
      customClient.addDefaultHeader('Accept', 'application/json');
      
      // 创建 API 实例
      final emailAuthApi = EmailAuthAppApi();
      
      // 创建请求
      final command = SendEmailCodeCommand(
        email: 'test@example.com',
        purpose: SendEmailCodeCommandPurposeEnum.LOGIN,
        deviceId: 'test_device',
        userAgent: 'Flutter Test',
        ipAddress: '127.0.0.1',
      );
      
      print('📤 发送请求...');
      print('   - URL: ${customClient.basePath}/auth/email/send-code');
      print('   - Method: POST');
      print('   - Body: ${command.toJson()}');
      
      // 发送请求
      final result = await emailAuthApi.sendEmailCode(command);
      
      print('✅ 网络请求成功');
      print('   - 响应: $result');
      
    } catch (e) {
      print('❌ 网络请求失败: $e');
      
      if (e is SocketException) {
        print('   - 错误类型: 网络连接失败');
        print('   - 建议: 检查网络连接和服务器地址');
      } else if (e is HttpException) {
        print('   - 错误类型: HTTP 请求失败');
        print('   - 建议: 检查服务器状态和请求参数');
      } else if (e is ApiException) {
        print('   - 错误类型: API 异常');
        print('   - 状态码: ${e.code}');
        print('   - 错误信息: ${e.message}');
      } else {
        print('   - 错误类型: ${e.runtimeType}');
        print('   - 错误信息: $e');
      }
    }
  }
}

/// 在 main 函数中运行测试
void main() {
  print('=' * 50);
  print('Member SDK 测试程序');
  print('=' * 50);
  
  // 运行快速测试
  MemberSdkSimpleTest.quickTest();
  
  print('\n' + '=' * 50);
  print('如需测试网络请求，请调用:');
  print('MemberSdkSimpleTest.testNetworkRequest()');
  print('=' * 50);
}
