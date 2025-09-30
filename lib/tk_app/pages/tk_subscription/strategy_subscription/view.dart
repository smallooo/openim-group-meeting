import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';
import 'state.dart';

class StrategySubscriptionPage extends StatelessWidget {
  const StrategySubscriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    // 确保控制器被注册
    final logic = Get.put(StrategySubscriptionLogic());
    final state = logic.state;
    
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Get.back(),
        ),
        title: const Text(
          '订阅',
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
                  
                  // 服务信息卡片
                  _buildServiceInfoCard(logic, state),
                  
                  const SizedBox(height: 20),
                  
                  // 订阅时长选择
                  _buildDurationSelection(logic, state),
                  
                  const SizedBox(height: 20),
                  
                  // 钱包余额
                  _buildWalletBalance(logic, state),
                  
                  const SizedBox(height: 20),
                  
                  // 自动续订开关
                  _buildAutoRenewalSwitch(logic, state),
                  
                  const SizedBox(height: 20),
                  
                  // 免费声明
                  _buildFreeDisclaimer(),
                  
                  const SizedBox(height: 100), // 为底部按钮留出空间
                ],
              ),
            ),
          ),
          
          // 底部付款信息和订阅按钮
          _buildBottomPaymentSection(logic, state),
        ],
      ),
    );
  }

  // 服务信息卡片
  Widget _buildServiceInfoCard(StrategySubscriptionLogic logic, StrategySubscriptionState state) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(16),
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
          const Text(
            '服务信息',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              // 服务头像
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Icon(
                  Icons.analytics,
                  color: Colors.white,
                  size: 24,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(() => Text(
                      state.serviceName.value,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    )),
                    const SizedBox(height: 4),
                    GestureDetector(
                      onTap: () => logic.viewServiceDetails(),
                      child: Obx(() => RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '${state.serviceDescription.value}...',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[600],
                              ),
                            ),
                            const TextSpan(
                              text: '查看详情',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF9E13F7),
                              ),
                            ),
                          ],
                        ),
                      )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // 订阅时长选择
  Widget _buildDurationSelection(StrategySubscriptionLogic logic, StrategySubscriptionState state) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(16),
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
          const Text(
            '订阅时长',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 16),
          Obx(() => Row(
            children: List.generate(
              state.durationOptions.length,
              (index) => Expanded(
                child: GestureDetector(
                  onTap: () => logic.selectDuration(index),
                  child: Container(
                    margin: EdgeInsets.only(
                      right: index < state.durationOptions.length - 1 ? 12 : 0,
                    ),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: state.selectedDurationIndex.value == index 
                          ? const Color(0xFF9E13F7) 
                          : Colors.white,
                      border: Border.all(
                        color: state.selectedDurationIndex.value == index 
                            ? const Color(0xFF9E13F7) 
                            : Colors.grey[300]!,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        // 限时优惠标签
                        if (state.durationOptions[index].isLimited)
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                            decoration: BoxDecoration(
                              color: state.selectedDurationIndex.value == index 
                                  ? Colors.white.withValues(alpha: 0.2)
                                  : Colors.red,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              '限时优惠',
                              style: TextStyle(
                                fontSize: 10,
                                color: state.selectedDurationIndex.value == index 
                                    ? Colors.white 
                                    : Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        const SizedBox(height: 8),
                        
                        // 时长
                        Text(
                          state.durationOptions[index].duration,
                          style: TextStyle(
                            fontSize: 14,
                            color: state.selectedDurationIndex.value == index 
                                ? Colors.white 
                                : Colors.grey[600],
                          ),
                        ),
                        const SizedBox(height: 8),
                        
                        // 价格
                        Text(
                          state.durationOptions[index].price,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: state.selectedDurationIndex.value == index 
                                ? Colors.white 
                                : Colors.black,
                          ),
                        ),
                        const SizedBox(height: 4),
                        
                        // 原价
                        Text(
                          state.durationOptions[index].originalPrice,
                          style: TextStyle(
                            fontSize: 12,
                            color: state.selectedDurationIndex.value == index 
                                ? Colors.white.withValues(alpha: 0.7)
                                : Colors.grey[500],
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )),
        ],
      ),
    );
  }

  // 钱包余额
  Widget _buildWalletBalance(StrategySubscriptionLogic logic, StrategySubscriptionState state) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(16),
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
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '钱包余额',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 8),
                Obx(() => Text(
                  state.walletBalance.value,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                )),
              ],
            ),
          ),
          GestureDetector(
            onTap: () => logic.quickTopUp(),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: const Color(0xFF9E13F7).withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '快速充值',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF9E13F7),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 4),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 12,
                    color: Color(0xFF9E13F7),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 自动续订开关
  Widget _buildAutoRenewalSwitch(StrategySubscriptionLogic logic, StrategySubscriptionState state) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(16),
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
      child: Row(
        children: [
          const Expanded(
            child: Text(
              '到期自动续订，可随时取消',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
          Obx(() => Switch(
            value: state.autoRenewal.value,
            onChanged: (value) => logic.toggleAutoRenewal(),
            activeColor: const Color(0xFF9E13F7),
          )),
        ],
      ),
    );
  }

  // 免费声明
  Widget _buildFreeDisclaimer() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(16),
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
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '免费声明',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 8),
          Text(
            '信号由第三方提供，仅作为投资参考不作为投资建议，其中可能会造成的风险请自行承担',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }

  // 底部付款信息和订阅按钮
  Widget _buildBottomPaymentSection(StrategySubscriptionLogic logic, StrategySubscriptionState state) {
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
                  '${state.currentPrice.replaceAll('u', '')} USDT',
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
                onTap: () => logic.subscribe(),
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