import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'logic.dart';
import '../../../features/strategy/presentation/providers/strategy_detail_provider.dart';

class StrategyDetailPage extends ConsumerWidget {
  final String strategyId;
  
  const StrategyDetailPage({super.key, required this.strategyId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 确保controller被注册
    final controller = Get.put(StrategyDetailLogic(strategyId: strategyId));
    controller.setRef(ref);
    
    // 监听策略详情数据变化
    ref.listen(strategyDetailNotifierProvider(strategyId), (previous, next) {
      next.when(
        data: (data) => controller.updateStrategyDetail(data),
        loading: () => print('策略详情加载中...'),
        error: (error, stack) => print('策略详情加载失败: $error'),
      );
    });
    
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
          '策略详情',
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
          // 内容区域
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // 顶部用户信息
                  _buildUserInfoSection(controller),
                  
                  const SizedBox(height: 12),
                  
                  // 策略信息卡片
                  _buildStrategyInfoCard(controller),
                  
                  const SizedBox(height: 12),
                  
                  // Tab切换和内容
                  _buildTabSection(controller),
                ],
              ),
            ),
          ),
          
          // 底部固定按钮
          _buildBottomButtons(controller),
        ],
      ),
    );
  }

  Widget _buildUserInfoSection(StrategyDetailLogic controller) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          // 用户头像
          Obx(() => CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(controller.state.userAvatar.value),
          )),
          
          const SizedBox(width: 12),
          
          // 用户信息
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 用户名
                Obx(() => Text(
                  controller.state.userName.value,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                )),
                
                const SizedBox(height: 4),
                
                // 徽章
                Obx(() => Row(
                  children: [
                    const Icon(
                      Icons.verified,
                      color: Colors.green,
                      size: 16,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      controller.state.userBadge.value,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.green,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStrategyInfoCard(StrategyDetailLogic controller) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
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
          // 顶部标签和币种
          Row(
            children: [
              // 合约标签
              Obx(() => Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: const Color(0xFF9E13F7),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  controller.state.isContract.value ? '合约' : '现货',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )),
              const SizedBox(width: 8),
              // 多/空标签
              Obx(() => Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: controller.state.isLong.value ? Colors.green : Colors.red,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  controller.state.isLong.value ? '多' : '空',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )),
              const SizedBox(width: 12),
              // 币种符号
              Obx(() => Text(
                controller.state.symbol.value,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              )),
            ],
          ),
          
          const SizedBox(height: 12),
          
          // ID和类型
          Row(
            children: [
              Obx(() => Text(
                'ID.${controller.state.strategyId.value}',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              )),
              const SizedBox(width: 16),
              Obx(() => Text(
                controller.state.strategyType.value,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              )),
            ],
          ),
          
          const SizedBox(height: 12),
          
          // 挂单状态和个人观点
          Row(
            children: [
              Obx(() => Text(
                '${controller.state.followCount.value}人已挂单',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              )),
              const Spacer(),
              Text(
                '*个人观点仅供参考',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
          
          const SizedBox(height: 16),
          
          // 价格信息
          Obx(() => Column(
            children: [
              _buildPriceRow('价格', controller.state.priceRange.value),
              const SizedBox(height: 8),
              _buildPriceRow('止盈价', controller.state.stopProfitRange.value),
              const SizedBox(height: 8),
              _buildPriceRow('止损价', controller.state.stopLossRange.value),
            ],
          )),
          
          const SizedBox(height: 16),
          
          // 底部统计
          Row(
            children: [
              Obx(() => Text(
                controller.state.lastUpdateTime.value,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[500],
                ),
              )),
              const SizedBox(width: 16),
              Obx(() => Text(
                '${controller.state.viewCount.value} 次查看',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[500],
                ),
              )),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPriceRow(String label, String value) {
    return Row(
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[600],
          ),
        ),
        const Spacer(),
        Text(
          value,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Widget _buildTabSection(StrategyDetailLogic controller) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          // Tab切换
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              children: [
                Obx(() => _buildTabItem('策略跟踪', 0, controller)),
                const SizedBox(width: 32),
                Obx(() => _buildTabItem('打赏', 1, controller)),
              ],
            ),
          ),
          
          // 分割线
          Container(
            height: 1,
            color: Colors.grey[200],
          ),
          
          // Tab内容
          Obx(() => _buildTabContent(controller)),
        ],
      ),
    );
  }

  Widget _buildTabItem(String title, int index, StrategyDetailLogic controller) {
    final isSelected = controller.state.selectedTabIndex.value == index;
    return GestureDetector(
      onTap: () => controller.switchTab(index),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              color: isSelected ? Colors.black : Colors.grey,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
            ),
          ),
          const SizedBox(height: 8),
          Container(
            height: 2,
            width: 24,
            color: isSelected ? Colors.black : Colors.transparent,
          ),
        ],
      ),
    );
  }

  Widget _buildTabContent(StrategyDetailLogic controller) {
    if (controller.state.selectedTabIndex.value == 0) {
      // 策略跟踪内容
      return _buildTrackingList(controller);
    } else {
      // 打赏内容
      return _buildRewardList(controller);
    }
  }

  Widget _buildTrackingList(StrategyDetailLogic controller) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: controller.state.trackingList.length,
      itemBuilder: (context, index) {
        final comment = controller.state.trackingList[index];
        return _buildCommentItem(comment, controller);
      },
    );
  }

  Widget _buildRewardList(StrategyDetailLogic controller) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: controller.state.rewardList.length,
      itemBuilder: (context, index) {
        final comment = controller.state.rewardList[index];
        return _buildRewardCommentItem(comment, controller);
      },
    );
  }

  Widget _buildCommentItem(dynamic comment, StrategyDetailLogic controller) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 用户头像
          CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(comment.userAvatar),
          ),
          
          const SizedBox(width: 12),
          
          // 评论内容
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 用户名和等级
                Row(
                  children: [
                    Text(
                      comment.userName,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        comment.userLevel,
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                  ],
                ),
                
                const SizedBox(height: 4),
                
                // 时间
                Text(
                  comment.time,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[500],
                  ),
                ),
                
                const SizedBox(height: 8),
                
                // 评论内容
                Text(
                  comment.content,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          
          // 回复按钮
          GestureDetector(
            onTap: () => controller.replyToComment(comment.userName),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Icon(
                Icons.chat_bubble_outline,
                size: 18,
                color: Colors.grey[400],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRewardCommentItem(dynamic comment, StrategyDetailLogic controller) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 用户头像
          CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(comment.userAvatar),
          ),
          
          const SizedBox(width: 12),
          
          // 评论内容
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 用户名和等级
                Row(
                  children: [
                    Text(
                      comment.userName,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        comment.userLevel,
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                    const Spacer(),
                    // 打赏金额
                    Text(
                      '¥${comment.rewardAmount}',
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
                
                const SizedBox(height: 4),
                
                // 时间
                Text(
                  comment.time,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[500],
                  ),
                ),
                
                const SizedBox(height: 8),
                
                // 评论内容
                Text(
                  comment.content,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomButtons(StrategyDetailLogic controller) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      child: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: _buildBottomButton(
                '撤单',
                Colors.grey[100]!,
                Colors.grey[700]!,
                controller.cancelOrder,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: _buildBottomButton(
                '止损',
                Colors.grey[100]!,
                Colors.grey[700]!,
                controller.stopLoss,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: _buildBottomButton(
                '盈利',
                Colors.grey[100]!,
                Colors.grey[700]!,
                controller.takeProfit,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: _buildBottomButton(
                '追加',
                const Color(0xFF9E13F7),
                Colors.white,
                controller.addPosition,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomButton(
    String title,
    Color backgroundColor,
    Color textColor,
    VoidCallback onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 14,
              color: textColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
