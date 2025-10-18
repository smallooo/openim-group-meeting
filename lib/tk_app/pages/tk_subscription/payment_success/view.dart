import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:openim_common/openim_common.dart';

import 'logic.dart';
import 'state.dart';

class PaymentSuccessPage extends StatelessWidget {
  const PaymentSuccessPage({Key? key}) : super(key: key);

  /// 格式化余额显示
  String _formatBalance(String balance) {
    try {
      final double balanceValue = double.parse(balance);
      if (balanceValue >= 1000000) {
        return '${(balanceValue / 1000000).toStringAsFixed(2)}M';
      } else if (balanceValue >= 1000) {
        return '${(balanceValue / 1000).toStringAsFixed(2)}K';
      } else {
        return balanceValue.toStringAsFixed(2);
      }
    } catch (e) {
      return balance;
    }
  }

  @override
  Widget build(BuildContext context) {
    // 确保控制器被注册
    final logic = Get.put(PaymentSuccessLogic());
    final state = logic.state;
    
    // 从路由参数获取支付信息
    final Map<String, dynamic> arguments = Get.arguments ?? {};
    final String amount = arguments['amount'] ?? '0';
    final String currency = arguments['currency'] ?? 'USDT';
    final String transactionId = arguments['transactionId'] ?? '';
    final String transactionTime = arguments['transactionTime'] ?? '';
    final String userBalance = arguments['userBalance'] ?? '0';
    final String status = arguments['status'] ?? '';
    final String partnerOrderNo = arguments['partnerOrderNo'] ?? '';
    final String createTime = arguments['createTime'] ?? '';
    
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // backgroundColor: Colors.white60,
        elevation: 0,
        scrolledUnderElevation: 0,
        surfaceTintColor: Colors.transparent,
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
      body: _buildBody(context, logic, state, amount, currency, transactionId, transactionTime, userBalance, status, partnerOrderNo, createTime),
    );
  }
  
  Widget _buildBody(
    BuildContext context, 
    PaymentSuccessLogic logic, 
    PaymentSuccessState state,
    String amount,
    String currency,
    String transactionId,
    String transactionTime,
    String userBalance,
    String status,
    String partnerOrderNo,
    String createTime,
  ) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top + kToolbarHeight + 20, // 状态栏高度 + 导航栏高度 + 额外间距
        left: 0,
        right: 0,
        bottom: 20,
      ),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            // 成功图标
            _buildSuccessIcon(context),
            
            const SizedBox(height: 30),
            
            // 付款成功标题
            _buildSuccessTitle(),
            
            const SizedBox(height: 20),
            
            // 金额显示
            _buildAmountDisplay(amount, currency),
            
            const SizedBox(height: 10),
            
            // 交易完成提示
            _buildCompletionHint(),
            
            const SizedBox(height: 40),
            
            // 订单详情
            _buildOrderDetails(context, amount, currency, transactionId, transactionTime, userBalance, status, partnerOrderNo, createTime),
            
            const SizedBox(height: 40),
            
            // 完成按钮
            _buildCompleteButton(context),
            
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
  
  Widget _buildSuccessIcon(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.2,
      height: MediaQuery.of(context).size.width * 0.2,
      child: ImageRes.tkPaySuccess.toImage,
    );
  }
  
  Widget _buildSuccessTitle() {
    return const Text(
      '付款成功',
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Color(0xFF333333),
      ),
    );
  }
  
  Widget _buildAmountDisplay(String amount, String currency) {
    return Text(
      '$currency $amount',
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Color(0xFF4CAF50),
      ),
    );
  }
  
  Widget _buildCompletionHint() {
    return const Text(
      '您的交易已成功完成',
      style: TextStyle(
        fontSize: 16,
        color: Color(0xFF666666),
      ),
    );
  }
  
  Widget _buildOrderDetails(
    BuildContext context,
    String amount,
    String currency,
    String transactionId,
    String transactionTime,
    String userBalance,
    String status,
    String partnerOrderNo,
    String createTime,
  ) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFFF8F8F8),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '支付详情',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xFF333333),
            ),
          ),
          const SizedBox(height: 20),
          
          // 支付状态
          _buildDetailRow('支付状态', status, false),
          
          const SizedBox(height: 12),
          
          // 交易编号
          _buildDetailRow('交易编号', transactionId, false),
          
          const SizedBox(height: 12),
          
          // 合作伙伴订单号
          if (partnerOrderNo.isNotEmpty) ...[
            _buildDetailRow('合作伙伴订单号', partnerOrderNo, false),
            const SizedBox(height: 12),
          ],
          
          // 支付时间
          if (transactionTime.isNotEmpty) ...[
            _buildDetailRow('支付时间', transactionTime, false),
            const SizedBox(height: 12),
          ],
          
          // 创建时间
          if (createTime.isNotEmpty) ...[
            _buildDetailRow('创建时间', createTime, false),
            const SizedBox(height: 12),
          ],
          
          const Divider(color: Color(0xFFE0E0E0)),
          const SizedBox(height: 12),
          
          // 支付金额
          _buildDetailRow('支付金额', '$amount $currency', true),
          
          const SizedBox(height: 12),
          
          // 用户余额
          _buildDetailRow('当前余额', '${_formatBalance(userBalance)} $currency', false),
        ],
      ),
    );
  }
  
  Widget _buildOrderItem(String name, int quantity, String price, String currency, IconData? icon) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          // 图标
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: const Color(0xFFE8F5E9),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Icon(
              icon ?? Icons.card_giftcard,
              color: const Color(0xFF4CAF50),
              size: 24,
            ),
          ),
          const SizedBox(width: 12),
          
          // 商品信息
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF333333),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '数量：$quantity',
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xFF666666),
                  ),
                ),
              ],
            ),
          ),
          
          // 价格
          Text(
            '$currency $price',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xFF333333),
            ),
          ),
        ],
      ),
    );
  }
  
  Widget _buildDetailRow(String label, String value, bool isBold) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            color: const Color(0xFF666666),
            fontWeight: isBold ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
        Flexible(
          child: Text(
            value,
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 16,
              color: const Color(0xFF333333),
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
      ],
    );
  }
  
  Widget _buildCompleteButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          onPressed: () => Get.back(),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF9E13F7),
            foregroundColor: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: const Text(
            '完成',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
