# Member SDK 测试代码

这个目录包含了用于验证 `toklink_member_sdk` 是否可用的完整测试代码。

## 📁 文件说明

### 1. `member_sdk_simple_test.dart`
**快速测试文件** - 不依赖网络，验证 SDK 基本功能
- ✅ 测试基本导入
- ✅ 测试模型创建
- ✅ 测试 JSON 序列化/反序列化
- ✅ 测试 API 实例创建
- ✅ 测试配置

### 2. `member_sdk_test.dart`
**完整测试文件** - 包含网络请求测试
- ✅ 发送邮箱验证码
- ✅ 邮箱验证码登录
- ✅ 获取当前用户信息
- ✅ 刷新 Token
- ✅ 退出登录
- ✅ 包含测试页面 Widget

### 3. `member_sdk_integration_test.dart`
**集成测试文件** - 测试与现有系统的兼容性
- ✅ 认证系统兼容性测试
- ✅ SDK 适配器示例
- ✅ 错误处理分析
- ✅ 包含测试页面 Widget

### 4. `run_member_sdk_test.dart`
**测试运行器** - 提供命令行界面运行各种测试

## 🚀 快速开始

### 方法一：使用测试运行器（推荐）

```bash
# 运行快速测试（不依赖网络）
dart run lib/api_sdk_use/run_member_sdk_test.dart quick

# 运行集成测试
dart run lib/api_sdk_use/run_member_sdk_test.dart integration

# 运行网络测试
dart run lib/api_sdk_use/run_member_sdk_test.dart network

# 运行所有测试
dart run lib/api_sdk_use/run_member_sdk_test.dart all
```

### 方法二：直接运行测试文件

```bash
# 运行快速测试
dart run lib/api_sdk_use/member_sdk_simple_test.dart

# 运行完整测试（需要修改 main 函数）
dart run lib/api_sdk_use/member_sdk_test.dart
```

### 方法三：在 Flutter 应用中使用

```dart
import 'package:your_app/api_sdk_use/member_sdk_simple_test.dart';

void main() {
  // 运行快速测试
  MemberSdkSimpleTest.quickTest();
}
```

## 📋 测试步骤

### 第一步：验证 SDK 基本功能
```bash
dart run lib/api_sdk_use/run_member_sdk_test.dart quick
```

**预期输出：**
```
🚀 Member SDK 快速测试开始...

📦 测试基本导入...
✅ 基本导入成功
   - ApiClient: ApiClient
   - EmailAuthAppApi: EmailAuthAppApi
   - MemberAppApi: MemberAppApi
   - TokenAppApi: TokenAppApi

🏗️ 测试模型创建...
✅ 模型创建成功
   - SendEmailCodeCommand: test@example.com
   - EmailCodeLoginCommand: test@example.com
   - TokenRefreshCommand: test_refresh_token
   - TokenLogoutCommand: TokenLogoutCommand

🔄 测试 JSON 序列化/反序列化...
✅ JSON 序列化成功
✅ JSON 反序列化成功
✅ 数据一致性验证通过

🔧 测试 API 实例创建...
✅ API 实例创建成功

⚙️ 测试配置...
✅ 默认客户端获取成功
✅ 自定义客户端创建成功
✅ 默认头添加成功

✅ Member SDK 快速测试完成 - SDK 基本可用！
```

### 第二步：测试网络请求
```bash
dart run lib/api_sdk_use/run_member_sdk_test.dart network
```

**预期输出：**
```
🌐 测试网络请求...

📤 发送请求...
   - URL: https://gw.trunk.toklink.io/v1/auth/email/send-code
   - Method: POST
   - Body: {email: test@example.com, purpose: LOGIN, ...}

✅ 网络请求成功
   - 响应: ApiRespSendEmailCodeResponse(...)
```

### 第三步：测试兼容性
```bash
dart run lib/api_sdk_use/run_member_sdk_test.dart integration
```

## 🔧 配置说明

### SDK 配置
测试代码会自动配置 SDK 使用以下设置：

```dart
// 基础 URL
defaultApiClient.basePath = 'https://gw.trunk.toklink.io/v1';

// 请求头
defaultApiClient.addDefaultHeader('Content-Type', 'application/json');
defaultApiClient.addDefaultHeader('Accept', 'application/json');
```

### 认证配置
如果需要测试需要认证的接口，可以设置 Access Token：

```dart
defaultApiClient.addDefaultHeader('Access-Token', 'your_access_token_here');
```

## 🐛 常见问题

### 1. 导入错误
```
Error: Could not resolve the package 'toklink_member_sdk'
```
**解决方案：** 确保在 `pubspec.yaml` 中正确添加了依赖：
```yaml
dependencies:
  toklink_member_sdk:
    path: local_plugin/member-sdk
```

### 2. 网络连接失败
```
❌ 网络请求失败: SocketException: Failed host lookup
```
**解决方案：** 
- 检查网络连接
- 确认服务器地址是否正确
- 检查防火墙设置

### 3. API 异常
```
❌ 网络请求失败: ApiException: 401 Unauthorized
```
**解决方案：**
- 检查认证信息是否正确
- 确认 API 地址和版本
- 检查请求参数格式

## 📊 测试结果分析

### 成功指标
- ✅ 所有基本功能测试通过
- ✅ JSON 序列化/反序列化正常
- ✅ API 实例创建成功
- ✅ 网络请求返回有效响应

### 失败处理
- ❌ 基本功能失败 → 检查 SDK 安装
- ❌ 网络请求失败 → 检查网络和服务器
- ❌ 认证失败 → 检查认证配置

## 🔄 下一步

测试通过后，你可以：

1. **创建 SDK 适配器** - 参考 `member_sdk_integration_test.dart` 中的示例
2. **逐步迁移现有接口** - 从简单接口开始替换
3. **集成到现有项目** - 使用适配器模式保持兼容性

## 📞 支持

如果遇到问题，请检查：
1. SDK 是否正确安装
2. 网络连接是否正常
3. 服务器是否可访问
4. 认证信息是否正确