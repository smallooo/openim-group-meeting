import 'member_sdk_simple_test.dart';
import 'member_sdk_integration_test.dart';

/// Member SDK 测试运行器
/// 提供简单的命令行界面来运行各种测试
void main(List<String> arguments) {
  print('🚀 Member SDK 测试运行器');
  print('=' * 50);
  
  if (arguments.isEmpty) {
    _showHelp();
    return;
  }
  
  final command = arguments[0].toLowerCase();
  
  switch (command) {
    case 'quick':
    case 'q':
      _runQuickTest();
      break;
    case 'integration':
    case 'i':
      _runIntegrationTest();
      break;
    case 'network':
    case 'n':
      _runNetworkTest();
      break;
    case 'all':
    case 'a':
      _runAllTests();
      break;
    case 'help':
    case 'h':
    default:
      _showHelp();
      break;
  }
}

void _showHelp() {
  print('''
📖 使用说明:

命令:
  quick, q      - 运行快速测试（不依赖网络）
  integration, i - 运行集成测试（测试与现有系统的兼容性）
  network, n    - 运行网络测试（需要真实服务器）
  all, a        - 运行所有测试
  help, h       - 显示此帮助信息

示例:
  dart run lib/api_sdk_use/run_member_sdk_test.dart quick
  dart run lib/api_sdk_use/run_member_sdk_test.dart integration
  dart run lib/api_sdk_use/run_member_sdk_test.dart network
  dart run lib/api_sdk_use/run_member_sdk_test.dart all

💡 建议:
  1. 首先运行 'quick' 测试验证 SDK 基本功能
  2. 然后运行 'integration' 测试验证兼容性
  3. 最后运行 'network' 测试验证网络请求
''');
}

void _runQuickTest() {
  print('🧪 运行快速测试...\n');
  MemberSdkSimpleTest.quickTest();
}

void _runIntegrationTest() {
  print('🔗 运行集成测试...\n');
  MemberSdkIntegrationTest.testAuthCompatibility();
}

void _runNetworkTest() {
  print('🌐 运行网络测试...\n');
  MemberSdkSimpleTest.testNetworkRequest();
}

void _runAllTests() {
  print('🎯 运行所有测试...\n');
  
  print('1️⃣ 快速测试:');
  MemberSdkSimpleTest.quickTest();
  
  print('\n2️⃣ 集成测试:');
  MemberSdkIntegrationTest.testAuthCompatibility();
  
  print('\n3️⃣ 网络测试:');
  MemberSdkSimpleTest.testNetworkRequest();
  
  print('\n✅ 所有测试完成！');
}
