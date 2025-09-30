/// Balance API 使用示例
/// 
/// 本文件展示了如何在你的页面中使用 BalanceApiService
/// 可以直接复制代码到你的页面中使用

import 'package:taowu_balance_sdk/api.dart';
import 'balance_api.dart';

/// ==================== 初始化示例 ====================

/// 在应用启动时初始化（例如在 main.dart 或 app.dart 中）
void initializeBalanceApi() {
  // 方式1: 基础初始化
  balanceApi.initialize(
    baseUrl: 'https://your-api-domain.com/v1',
  );

  // 方式2: 带 token 初始化
  balanceApi.initialize(
    baseUrl: 'https://your-api-domain.com/v1',
    accessToken: 'your-access-token',
  );
}

/// 登录后设置 token
void setTokenAfterLogin(String token) {
  balanceApi.setAccessToken(token);
}

/// 设置认证头（如果需要签名认证）
void setAuthenticationHeaders() {
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
}

/// ==================== 余额查询示例 ====================

/// 查询 USDT 余额
Future<void> exampleGetUsdtBalance() async {
  // 假设 USDT 的币种ID是 1
  final balance = await balanceApi.getBalance(1);
  
  if (balance != null) {
    print('USDT 余额: ${balance.availableBalance}');
    print('冻结余额: ${balance.frozenBalance}');
  } else {
    print('查询余额失败');
  }
}

/// 查询所有余额
Future<void> exampleGetAllBalances() async {
  final balances = await balanceApi.getBalanceSummary();
  
  if (balances != null && balances.isNotEmpty) {
    for (var balance in balances) {
      print('币种: ${balance.currencyName}, 余额: ${balance.availableBalance}');
    }
  } else {
    print('暂无余额数据');
  }
}

/// 带条件查询余额列表
Future<void> exampleGetBalanceList() async {
  final queryDTO = BalanceQueryDTO(
    memberId: 12345, // 必需参数：用户ID
    currencyId: 1,   // 可选参数：币种ID
    currencyName: 'USDT', // 可选参数：币种名称
  );
  
  final balances = await balanceApi.getBalanceList(queryDTO: queryDTO);
  
  if (balances != null) {
    print('查询到 ${balances.length} 条余额记录');
  }
}

/// ==================== 支付密码管理示例 ====================

/// 检查是否已设置支付密码
Future<bool> exampleCheckPaymentPassword() async {
  final status = await balanceApi.getPaymentPasswordStatus();
  
  if (status != null) {
    print('是否已设置支付密码: ${status.hasPassword}');
    return status.hasPassword ?? false;
  }
  return false;
}

/// 设置支付密码（首次设置）
Future<void> exampleSetPaymentPassword(String password) async {
  final success = await balanceApi.setPaymentPassword(password);
  
  if (success) {
    print('✅ 支付密码设置成功');
    // 可以显示成功提示，跳转到其他页面等
  } else {
    print('❌ 支付密码设置失败');
    // 显示错误提示
  }
}

/// 修改支付密码
Future<void> exampleChangePaymentPassword({
  required String oldPassword,
  required String newPassword,
}) async {
  final success = await balanceApi.changePaymentPassword(
    oldPassword: oldPassword,
    newPassword: newPassword,
  );
  
  if (success) {
    print('✅ 支付密码修改成功');
  } else {
    print('❌ 支付密码修改失败，请检查原密码是否正确');
  }
}

/// 验证支付密码
Future<bool> exampleVerifyPaymentPassword(String password) async {
  final isValid = await balanceApi.verifyPaymentPassword(password);
  
  if (isValid) {
    print('✅ 密码验证成功');
    return true;
  } else {
    print('❌ 密码验证失败');
    return false;
  }
}

/// ==================== 支付功能示例 ====================

/// 处理支付订单
Future<void> exampleProcessPayment({
  required String orderNo,
  required double amount,
  required int memberId,
  int? currencyId,
}) async {
  final paymentDTO = PaymentProcessDTO(
    partnerOrderNo: orderNo,  // 必需参数：合作方订单号
    memberId: memberId,       // 必需参数：用户ID
    amount: amount,           // 必需参数：支付金额
    currencyId: currencyId,   // 可选参数：币种ID
  );
  
  final result = await balanceApi.processPayment(paymentDTO);
  
  if (result != null) {
    print('支付处理结果: ${result.toString()}');
    // 根据返回结果进行下一步操作
  } else {
    print('支付处理失败');
  }
}

/// 验证密码并支付（完整流程）
Future<void> exampleVerifyAndPay({
  required String password,
  required String orderNo,
  required double amount,
  int? currencyId,
}) async {
  final verifyDTO = PaymentPasswordVerifyDTO(
    paymentPassword: password,  // 必需参数：支付密码
    partnerOrderNo: orderNo,    // 必需参数：合作方订单号
    amount: amount,             // 必需参数：支付金额
    currencyId: currencyId,     // 可选参数：币种ID
  );
  
  final result = await balanceApi.verifyPasswordAndPay(verifyDTO);
  
  if (result != null) {
    print('✅ 支付成功');
    // 跳转到支付成功页面
  } else {
    print('❌ 支付失败');
    // 显示失败原因
  }
}

/// ==================== 退款功能示例 ====================

/// 处理退款
Future<void> exampleProcessRefund({
  required String memberId,
  required String walletOrderNo,
  required String partnerRefundNo,
  required double refundAmount,
  required String reason,
  int? currencyId,
}) async {
  final refundDTO = RefundProcessDTO(
    memberId: memberId,           // 必需参数：用户ID
    walletOrderNo: walletOrderNo, // 必需参数：原钱包订单号
    partnerRefundNo: partnerRefundNo, // 必需参数：支付系统退款单号
    refundAmount: refundAmount,   // 必需参数：退款金额
    reason: reason,               // 必需参数：退款原因
    currencyId: currencyId,       // 可选参数：币种ID
  );
  
  final result = await balanceApi.processRefund(refundDTO);
  
  if (result != null) {
    print('退款处理结果: ${result.toString()}');
  } else {
    print('退款处理失败');
  }
}

/// 验证密码并退款
Future<void> exampleVerifyAndRefund({
  required String password,
  required String walletOrderNo,
  required String partnerRefundNo,
  required double refundAmount,
  required String reason,
  String? notifyUrl,
}) async {
  final verifyDTO = RefundPasswordVerifyDTO(
    walletOrderNo: walletOrderNo,     // 必需参数：原钱包订单号
    partnerRefundNo: partnerRefundNo, // 必需参数：支付系统退款单号
    refundAmount: refundAmount,       // 必需参数：退款金额
    reason: reason,                   // 必需参数：退款原因
    paymentPassword: password,        // 必需参数：支付密码
    notifyUrl: notifyUrl,             // 可选参数：退款通知地址
  );
  
  final result = await balanceApi.verifyPasswordAndRefund(verifyDTO);
  
  if (result != null) {
    print('✅ 退款成功');
  } else {
    print('❌ 退款失败');
  }
}

/// ==================== 红包功能示例 ====================

/// 创建红包
Future<String?> exampleCreateRedPacket({
  required double totalAmount,
  required int quantity,
  required int currencyId,
  required int packetType, // 1:普通红包 2:拼手气红包
  String? message,
  int? groupId, // 群组ID(私聊红包为空)
}) async {
  final createDTO = CreateRedPacketDTO(
    totalAmount: totalAmount,   // 必需参数：红包总金额
    totalCount: quantity,       // 必需参数：红包总个数
    currencyId: currencyId,     // 必需参数：币种ID
    packetType: packetType,     // 必需参数：红包类型
    blessing: message,          // 可选参数：祝福语
    groupId: groupId,           // 可选参数：群组ID
  );
  
  final packetNo = await balanceApi.createRedPacket(createDTO);
  
  if (packetNo != null) {
    print('✅ 红包创建成功，编号: $packetNo');
    return packetNo;
  } else {
    print('❌ 红包创建失败');
    return null;
  }
}

/// 领取红包
Future<void> exampleReceiveRedPacket(String packetNo) async {
  final receiveDTO = ReceiveRedPacketDTO(
    packetNo: packetNo, // 必需参数：红包编号
  );
  
  final result = await balanceApi.receiveRedPacket(receiveDTO);
  
  if (result != null) {
    print('✅ 领取红包成功');
    print('领取金额: ${result.toString()}');
    // 显示领取成功动画
  } else {
    print('❌ 领取红包失败');
    // 可能已被抢完或已领取过
  }
}

/// 查询红包详情
Future<void> exampleGetRedPacketDetail(String packetNo) async {
  final detail = await balanceApi.getRedPacketDetail(packetNo);
  
  if (detail != null) {
    print('红包详情:');
    print('总金额: ${detail.totalAmount}');
    print('已领取: ${detail.receivedCount}');
    print('剩余: ${detail.remainingCount}');
    // 显示红包详情页面
  } else {
    print('查询红包详情失败');
  }
}

/// ==================== 在 GetX 控制器中使用示例 ====================

/*
import 'package:get/get.dart';
import '../api_sdk_use/balance_api.dart';

class WalletController extends GetxController {
  // 余额数据
  final balanceList = <Balance>[].obs;
  final isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    loadBalances();
  }

  /// 加载余额
  Future<void> loadBalances() async {
    isLoading.value = true;
    final balances = await balanceApi.getBalanceSummary();
    if (balances != null) {
      balanceList.value = balances;
    }
    isLoading.value = false;
  }

  /// 支付
  Future<void> pay({
    required String password,
    required String orderNo,
    required double amount,
    int? currencyId,
  }) async {
    isLoading.value = true;
    
    final verifyDTO = PaymentPasswordVerifyDTO(
      paymentPassword: password,  // 必需参数：支付密码
      partnerOrderNo: orderNo,    // 必需参数：合作方订单号
      amount: amount,             // 必需参数：支付金额
      currencyId: currencyId,     // 可选参数：币种ID
    );
    
    final result = await balanceApi.verifyPasswordAndPay(verifyDTO);
    
    isLoading.value = false;
    
    if (result != null) {
      Get.snackbar('成功', '支付成功');
      // 刷新余额
      loadBalances();
    } else {
      Get.snackbar('失败', '支付失败');
    }
  }
}
*/

/// ==================== 在 UI 中使用示例 ====================

/*
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
              trailing: Text('冻结: ${balance.frozenBalance}'),
            );
          },
        );
      }),
    );
  }
}
*/
