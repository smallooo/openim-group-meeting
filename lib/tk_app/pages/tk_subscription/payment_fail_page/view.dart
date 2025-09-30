import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:openim_common/openim_common.dart';

import 'logic.dart';
import 'state.dart';

class PaymentFailPage extends StatelessWidget {
  const PaymentFailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 确保控制器被注册
    final logic = Get.put(PaymentFailPageLogic());
    final state = logic.state;
    
    // 从路由参数获取失败信息
    final Map<String, dynamic> arguments = Get.arguments ?? {};
    final String failReason = arguments['failReason'] ?? '资金不足。请确保您的钱包有足够的USDT';
    final String amount = arguments['amount'] ?? '50.00';
    final String currency = arguments['currency'] ?? 'USDT';
    
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Get.back(),
        ),
        title: const Text(
          '',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: _buildBody(context, logic, state, failReason, amount, currency),
    );
  }
  
  Widget _buildBody(
    BuildContext context, 
    PaymentFailPageLogic logic, 
    PaymentFailPageState state,
    String failReason,
    String amount,
    String currency,
  ) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.1, // 10% 边距
          vertical: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.12), // 从顶部12%开始
            
            // 失败图标
            _buildFailIcon(context),
            
            const SizedBox(height: 40),
            
            // 失败原因标题
            _buildFailTitle(),
            
            const SizedBox(height: 20),
            
            // 失败原因描述
            _buildFailReason(failReason),
            
            const SizedBox(height: 60),
            
            // 重新支付按钮
            _buildRetryButton(context, amount, currency),
            
            const SizedBox(height: 16),
            
            // 取消按钮
            _buildCancelButton(context),
          ],
        ),
      ),
    );
  }
  
  Widget _buildFailIcon(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.3,
      height: MediaQuery.of(context).size.width * 0.3,
      child: ImageRes.tkPayFail.toImage,
    );
  }
  
  Widget _buildFailTitle() {
    return const Text(
      '失败原因',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Color(0xFF333333),
      ),
    );
  }
  
  Widget _buildFailReason(String reason) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        reason,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 16,
          color: Color(0xFF666666),
          height: 1.5,
        ),
      ),
    );
  }
  
  Widget _buildRetryButton(BuildContext context, String amount, String currency) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () => _onRetryPayment(),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF7C4DFF),
          foregroundColor: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: const Text(
          '重新支付',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
  
  Widget _buildCancelButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: OutlinedButton(
        onPressed: () => Get.back(),
        style: OutlinedButton.styleFrom(
          foregroundColor: const Color(0xFF666666),
          side: const BorderSide(
            color: Color(0xFFE0E0E0),
            width: 1,
          ),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: const Text(
          '重新支付',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
  
  void _onRetryPayment() {
    // 重新支付逻辑
    // 可以导航回支付页面或重新发起支付
    Get.back(result: 'retry');
  }
}
