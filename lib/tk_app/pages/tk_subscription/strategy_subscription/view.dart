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
              fontWeight: FontWeight.w400,
              color: Color(0xFF333333),
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
                                color: Color(0xFF0BAE4E),
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
      padding: const EdgeInsets.only(left: 16,top: 16,bottom: 16,right: 0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
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
              fontWeight: FontWeight.w400,
              color: Color(0xFF333333),
            ),
          ),
          const SizedBox(height: 16),
          Obx(() => SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(state.durationOptions.length, (index) {
                final option = state.durationOptions[index];
                return Obx(() => _buildDurationOption(
                  logic,
                  state,
                  option,
                  index,
                ));
              }),
            ),
          )),
        ],
      ),
    );
  }

  // 单个订阅时长选项
  Widget _buildDurationOption(StrategySubscriptionLogic logic, StrategySubscriptionState state, SubscriptionDuration option, int index) {
    final isSelected = state.selectedDurationIndex.value == index;
    return Container(
      width: 132,  // 固定宽度，让右边显示一部分
      height: 110,  // 增加高度以容纳所有内容
      margin: EdgeInsets.only(
        right: index < state.durationOptions.length - 1 ? 12 : 20, // 最后一项右边距大一些
      ),
      child: GestureDetector(
        onTap: () => logic.selectDuration(index),
        child: Container(
          padding: const EdgeInsets.only(left: 12, top: 0, right: 0, bottom: 12),
          decoration: BoxDecoration(
            color: isSelected
                ? const Color(0xFF9E13F7)
                : Colors.white,
            border: Border.all(
              color: isSelected
                  ? const Color(0xFF9E13F7)
                  : Colors.grey[300]!,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Stack(
            children: [
              // 主要内容
              Positioned(
                left: 2,
                top: 15,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                  // 时长
                  Text(
                    option.duration,
                    style: TextStyle(
                      fontSize: 14,
                      color: isSelected
                          ? Colors.white
                          : Colors.grey[600],
                    ),
                  ),
                  const SizedBox(height: 8),

                  // 价格
                  Text(
                    option.price,
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w600,
                      color: isSelected
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                  const SizedBox(height: 4),

                  // 原价
                  Text(
                    option.originalPrice,
                    style: TextStyle(
                      fontSize: 12,
                      color: isSelected
                          ? Colors.white.withOpacity(0.7)
                          : Colors.grey[500],
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  ],
                ),
              ),
              // 限时优惠标签 - 右上角
              if (option.isLimited)
                Positioned(
                  top: -0.5,  // 紧贴上边，稍微超出一点
                  right: -0.5,  // 紧贴右边，稍微超出一点
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: isSelected
                          ? Colors.white.withOpacity(0.2)
                          : Colors.red,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(8.5),
                        bottomLeft: Radius.circular(8),
                      ),
                    ),
                    child: Text(
                      '限时优惠',
                      style: TextStyle(
                        fontSize: 9,
                        color: isSelected
                            ? Colors.white
                            : Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
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
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF333333),
                  ),
                ),
                const SizedBox(height: 8),
                Obx(() => Text(
                  state.walletBalance.value,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF333333),
                  ),
                )),
              ],
            ),
          ),
          GestureDetector(
            onTap: () => logic.quickTopUp(),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              // decoration: BoxDecoration(
              //   color: const Color(0xFF9E13F7).withValues(alpha: 0.1),
              //   borderRadius: BorderRadius.circular(20),
              // ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '快速充值',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF333333),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: 4),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 12,
                    color: Color(0xFF333333),
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
                color: Colors.grey,
              ),
            ),
          ),
          Obx(() => Switch(
            value: state.autoRenewal.value,
            onChanged: (value) => logic.toggleAutoRenewal(),
            activeColor: const Color(0xFF34C75C),
            // inactiveThumbColor: const Color(0xFFFFFFFF),
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
              fontWeight: FontWeight.w400,
              color: Color(0xFF333333),
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  '实付款',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF333333),
                  ),
                ),
                const SizedBox(height: 4),
                Obx(() => Text(
                  '${state.currentPrice.replaceAll('u', '')}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                )),
              ],
            ),
            const SizedBox(width: 20),
            GestureDetector(
              onTap: () => logic.subscribe(),
              child: Container(
                width: 131,
                height: 46,
                decoration: BoxDecoration(
                  color: const Color(0xFF9E13F7),
                  borderRadius: BorderRadius.circular(5),
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
          ],
        ),
      ),
    );
  }
}