import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';
import 'state.dart';

class RechargeBalancePage extends StatelessWidget {
  const RechargeBalancePage({super.key});

  @override
  Widget build(BuildContext context) {
    // 确保控制器被注册
    final logic = Get.put(RechargeBalanceLogic());
    final state = logic.state;
    
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Get.back(),
        ),
        title: const Text(
          '充值',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  
                  // 余额信息卡片
                  _buildBalanceCard(logic, state),
                  
                  const SizedBox(height: 20),
                  
                  // 购买点数标题
                  _buildPurchaseTitle(),
                  
                  const SizedBox(height: 16),
                  
                  // 充值选项列表
                  _buildRechargeOptions(logic, state),
                  
                  const SizedBox(height: 20),
                  
                  // 协议确认
                  _buildAgreementCheckbox(logic, state),
                  
                  const SizedBox(height: 100), // 为底部按钮留出空间
                ],
              ),
            ),
          ),
          
          // 底部付款信息和充值按钮
          _buildBottomPaymentSection(logic, state),
        ],
      ),
    );
  }

  // 余额信息卡片
  Widget _buildBalanceCard(RechargeBalanceLogic logic, RechargeBalanceState state) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(() => Text(
            '余额:${state.currentBalance.value}点',
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          )),
          const SizedBox(height: 12),
          RichText(
            text: TextSpan(
              children: [
                const TextSpan(
                  text: '可通过购买点数兑换获得U,1点=1U,详情参阅',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                WidgetSpan(
                  child: GestureDetector(
                    onTap: () => logic.viewPurchaseAgreement(),
                    child: const Text(
                      '《购买与使用协议》',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.green,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // 购买点数标题
  Widget _buildPurchaseTitle() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: const Align(
        alignment: Alignment.centerLeft,
        child: Text(
          '购买点数',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  // 充值选项列表
  Widget _buildRechargeOptions(RechargeBalanceLogic logic, RechargeBalanceState state) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: List.generate(
          state.rechargeOptions.length,
          (index) => _buildRechargeOptionCard(logic, state, index),
        ),
      ),
    );
  }

  // 单个充值选项卡片
  Widget _buildRechargeOptionCard(RechargeBalanceLogic logic, RechargeBalanceState state, int index) {
    final option = state.rechargeOptions[index];
    final isSelected = state.selectedOptionIndex.value == index;
    
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: GestureDetector(
        onTap: () => logic.selectRechargeOption(index),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: isSelected ? const Color(0xFF9E13F7) : Colors.grey[300]!,
              width: isSelected ? 2 : 1,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.05),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Row(
            children: [
              // 点数信息
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          '${option.points}点',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          '单价:${option.unitPrice}',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      option.description,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
              ),
              
              // 选中状态指示器
              if (isSelected)
                Container(
                  margin: const EdgeInsets.only(left: 12),
                  child: const Icon(
                    Icons.check_circle,
                    color: Color(0xFF9E13F7),
                    size: 24,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  // 协议确认复选框
  Widget _buildAgreementCheckbox(RechargeBalanceLogic logic, RechargeBalanceState state) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.green.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Obx(() => GestureDetector(
            onTap: () => logic.toggleAgreeToTerms(),
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: state.agreeToTerms.value ? const Color(0xFF9E13F7) : Colors.white,
                border: Border.all(
                  color: state.agreeToTerms.value ? const Color(0xFF9E13F7) : Colors.grey[400]!,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
              child: state.agreeToTerms.value
                  ? const Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 14,
                    )
                  : null,
            ),
          )),
          const SizedBox(width: 12),
          Expanded(
            child: GestureDetector(
              onTap: () => logic.toggleAgreeToTerms(),
              child: RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: '我确认已阅读并同意(',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                    WidgetSpan(
                      child: GestureDetector(
                        onTap: () => logic.viewPurchaseAgreement(),
                        child: const Text(
                          '购买与使用协议',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.green,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                    const TextSpan(
                      text: ')',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 底部付款信息和充值按钮
  Widget _buildBottomPaymentSection(RechargeBalanceLogic logic, RechargeBalanceState state) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20),
      child: SafeArea(
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  '实付款',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 4),
                Obx(() => Text(
                  state.actualPayment,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                )),
              ],
            ),
            const SizedBox(width: 20),
            Expanded(
              child: GestureDetector(
                onTap: () => logic.confirmRecharge(),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  decoration: BoxDecoration(
                    color: const Color(0xFF9E13F7),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Center(
                    child: Text(
                      '订阅',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}