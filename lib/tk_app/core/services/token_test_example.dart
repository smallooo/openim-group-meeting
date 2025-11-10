import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'token_storage_service.dart';
import 'token_manager.dart';
import 'auth_state_manager.dart';
import 'token_init_service.dart';

/// Token管理测试示例
/// 
/// 这个文件展示了如何使用新的token管理系统
class TokenTestExample {
  final WidgetRef ref;

  TokenTestExample(this.ref);

  /// 测试完整的token管理流程
  Future<void> testTokenManagement() async {
    debugPrint('🧪 开始测试Token管理系统...');

    try {
      // 1. 测试TokenStorageService
      await _testTokenStorage();
      
      // 2. 测试TokenManager
      await _testTokenManager();
      
      // 3. 测试AuthStateManager
      await _testAuthStateManager();
      
      // 4. 测试TokenInitService
      await _testTokenInitService();
      
      debugPrint('✅ Token管理系统测试完成！');
    } catch (e) {
      debugPrint('❌ Token管理系统测试失败: $e');
    }
  }

  /// 测试TokenStorageService
  Future<void> _testTokenStorage() async {
    debugPrint('📦 测试TokenStorageService...');
    
    final tokenStorage = await ref.read(tokenStorageServiceProvider.future);
    
    // 保存测试数据
    await tokenStorage.saveLoginInfo(
      accessToken: 'test_access_token_123',
      tokenType: 'Bearer',
      expiresIn: '3600', // 1小时
      userId: 'test_user_789',
      email: 'test@example.com',
      nickname: 'TestUser',
      avatar: 'https://example.com/avatar.jpg',
    );
    
    // 验证数据
    final accessToken = tokenStorage.getAccessToken();
    final userId = tokenStorage.getUserId();
    
    assert(accessToken == 'test_access_token_123');
    assert(userId == 'test_user_789');
    
    // 测试过期检查
    final isExpired = tokenStorage.isTokenExpired();
    final shouldRefresh = tokenStorage.shouldRefreshToken();
    
    debugPrint('Token过期状态: $isExpired');
    debugPrint('是否需要刷新: $shouldRefresh');
    
    debugPrint('✅ TokenStorageService测试通过');
  }

  /// 测试TokenManager
  Future<void> _testTokenManager() async {
    debugPrint('🔧 测试TokenManager...');
    
    final tokenManager = await ref.read(tokenManagerProvider.future);
    
    // 测试获取有效token
    final validToken = await tokenManager.getValidAccessToken();
    debugPrint('有效Token: $validToken');
    
    // 测试登录状态检查
    final isLoggedIn = tokenManager.isLoggedIn();
    debugPrint('登录状态: $isLoggedIn');
    
    debugPrint('✅ TokenManager测试通过');
  }

  /// 测试AuthStateManager
  Future<void> _testAuthStateManager() async {
    debugPrint('🔐 测试AuthStateManager...');
    
    final authStateManager = await ref.read(authStateManagerProvider.future);
    
    // 测试获取用户信息
    final userInfo = authStateManager.getCurrentUserInfo();
    debugPrint('用户信息: $userInfo');
    
    // 测试登录状态
    final isLoggedIn = authStateManager.isLoggedIn();
    debugPrint('登录状态: $isLoggedIn');
    
    // 添加回调测试
    bool loginCallbackCalled = false;
    bool logoutCallbackCalled = false;
    
    authStateManager.addOnLoginCallback(() {
      loginCallbackCalled = true;
      debugPrint('登录回调被触发');
    });
    
    authStateManager.addOnLogoutCallback(() {
      logoutCallbackCalled = true;
      debugPrint('登出回调被触发');
    });
    
    // 触发登录成功事件
    authStateManager.notifyLoginSuccess();
    assert(loginCallbackCalled);
    
    debugPrint('✅ AuthStateManager测试通过');
  }

  /// 测试TokenInitService
  Future<void> _testTokenInitService() async {
    debugPrint('🚀 测试TokenInitService...');
    
    final initService = await ref.read(tokenInitServiceProvider.future);
    
    // 测试初始化
    final result = await initService.initialize();
    debugPrint('初始化结果: ${result.isLoggedIn}');
    
    if (result.isLoggedIn) {
      debugPrint('用户信息: ${result.userInfo}');
    } else {
      debugPrint('需要登录');
    }
    
    debugPrint('✅ TokenInitService测试通过');
  }

  /// 清理测试数据
  Future<void> cleanup() async {
    debugPrint('🧹 清理测试数据...');
    
    final tokenStorage = await ref.read(tokenStorageServiceProvider.future);
    await tokenStorage.clearLoginInfo();
    
    debugPrint('✅ 测试数据已清理');
  }
}

/// 使用示例
/// 
/// 在你的Widget中使用：
/// 
/// ```dart
/// class MyTestWidget extends ConsumerWidget {
///   @override
///   Widget build(BuildContext context, WidgetRef ref) {
///     return ElevatedButton(
///       onPressed: () async {
///         final tester = TokenTestExample(ref);
///         await tester.testTokenManagement();
///         await tester.cleanup();
///       },
///       child: Text('测试Token管理'),
///     );
///   }
/// }
/// ```
