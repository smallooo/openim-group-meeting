# Balance API SDK 使用指南

这是对 `taowu_balance_sdk` 的封装，提供了更便捷的调用方式。

## 📁 文件说明

- `balance_api.dart` - Balance SDK 封装类，提供所有钱包相关API
- `balance_api_example.dart` - 使用示例代码
- `README.md` - 本说明文档

## 🚀 快速开始

### 1. 初始化

在应用启动时初始化 Balance API（建议在 `main.dart` 或 `app.dart` 中）:

```dart
import 'package:your_app/api_sdk_use/balance_api.dart';

void main() {
  // 初始化 Balance API
  balanceApi.initialize(
    baseUrl: 'https://your-api-domain.com/v1',
    accessToken: 'your-initial-token', // 可选
  );
  
  runApp(MyApp());
}
```

### 2. 设置访问令牌

用户登录后设置 token:

```dart
// 登录成功后
balanceApi.setAccessToken('user-access-token');
```

### 3. 使用 API

#### 查询余额

```dart
// 查询指定币种余额（例如 USDT，币种ID=1）
final balance = await balanceApi.getBalance(1);
if (balance != null) {
  print('可用余额: ${balance.availableBalance}');
}

// 查询所有余额
final balances = await balanceApi.getBalanceSummary();
```

#### 支付密码管理

```dart
// 检查是否已设置支付密码
final status = await balanceApi.getPaymentPasswordStatus();
if (status?.hasPassword == false) {
  // 设置支付密码
  await balanceApi.setPaymentPassword('123456');
}

// 修改支付密码
await balanceApi.changePaymentPassword(
  oldPassword: '123456',
  newPassword: '654321',
);

// 验证支付密码
final isValid = await balanceApi.verifyPaymentPassword('123456');
```

#### 支付功能

```dart
// 验证密码并支付
final verifyDTO = PaymentPasswordVerifyDTO(
  // 根据实际需要填写参数
);

final result = await balanceApi.verifyPasswordAndPay(verifyDTO);
if (result != null) {
  print('支付成功');
}
```

#### 红包功能

```dart
// 创建红包
final createDTO = CreateRedPacketDTO(
  // 填写红包参数
);
final packetNo = await balanceApi.createRedPacket(createDTO);

// 领取红包
final receiveDTO = ReceiveRedPacketDTO(
  // 填写领取参数
);
final result = await balanceApi.receiveRedPacket(receiveDTO);

// 查询红包详情
final detail = await balanceApi.getRedPacketDetail('packet-no-123');
```

## 📖 完整 API 列表

### 余额查询
- `getBalance(currencyId)` - 查询指定币种余额
- `getBalanceList({queryDTO})` - 查询余额列表
- `getBalanceSummary()` - 获取余额总览

### 支付密码管理
- `getPaymentPasswordStatus()` - 查询支付密码状态
- `setPaymentPassword(password)` - 设置支付密码
- `changePaymentPassword({oldPassword, newPassword})` - 修改支付密码
- `verifyPaymentPassword(password)` - 验证支付密码

### 支付功能
- `processPayment(paymentProcessDTO)` - 处理支付订单
- `verifyPasswordAndPay(paymentPasswordVerifyDTO)` - 验证密码并支付

### 退款功能
- `processRefund(refundProcessDTO)` - 处理退款订单
- `verifyPasswordAndRefund(refundPasswordVerifyDTO)` - 验证密码并退款

### 红包功能
- `createRedPacket(createRedPacketDTO)` - 创建红包
- `receiveRedPacket(receiveRedPacketDTO)` - 领取红包
- `getRedPacketDetail(packetNo)` - 查询红包详情

## 🔐 认证配置

如果你的 API 需要签名认证，可以使用以下方法:

```dart
final timestamp = DateTime.now().millisecondsSinceEpoch.toString();
final nonce = 'random-nonce-${DateTime.now().microsecondsSinceEpoch}';
final signature = balanceApi.generateSignature(
  timestamp: timestamp,
  nonce: nonce,
  secretKey: 'your-secret-key',
);

balanceApi.setAuthHeaders(
  timestamp: timestamp,
  nonce: nonce,
  signature: signature,
);
```

## 💡 在 GetX 控制器中使用

```dart
import 'package:get/get.dart';
import 'package:your_app/api_sdk_use/balance_api.dart';

class WalletController extends GetxController {
  final balanceList = <Balance>[].obs;
  final isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    loadBalances();
  }

  Future<void> loadBalances() async {
    isLoading.value = true;
    final balances = await balanceApi.getBalanceSummary();
    if (balances != null) {
      balanceList.value = balances;
    }
    isLoading.value = false;
  }
}
```

## 🎨 在 UI 中使用

```dart
class WalletPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(WalletController());
    
    return Scaffold(
      appBar: AppBar(title: Text('我的钱包')),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }
        
        return ListView.builder(
          itemCount: controller.balanceList.length,
          itemBuilder: (context, index) {
            final balance = controller.balanceList[index];
            return ListTile(
              title: Text(balance.currencyName ?? '未知币种'),
              subtitle: Text('可用: ${balance.availableBalance}'),
            );
          },
        );
      }),
    );
  }
}
```

## ⚠️ 注意事项

1. **初始化时机**: 确保在使用任何 API 前已调用 `initialize()` 方法
2. **Token 管理**: 在用户登录/登出时及时更新 token
3. **错误处理**: 所有 API 方法都已包含错误处理，返回 null 表示失败
4. **DTO 参数**: 使用时需要根据实际的 DTO 结构填写参数
5. **安全性**: 不要在代码中硬编码敏感信息（如密钥、密码等）

## 🔗 相关文档

- [Balance SDK 原始文档](../../local_plugin/balance-sdk/README.md)
- [API 文档](../../local_plugin/balance-sdk/doc/CAPIApi.md)

## 📝 更多示例

查看 `balance_api_example.dart` 文件获取更多详细的使用示例。
