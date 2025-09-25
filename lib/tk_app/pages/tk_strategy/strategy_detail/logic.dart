import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'state.dart';
import '../../../shared/models/strategy/strategy_detail_data.dart';

class StrategyDetailLogic extends GetxController {
  final StrategyDetailState state = StrategyDetailState();
  final String strategyId;
  late final WidgetRef ref;
  
  StrategyDetailLogic({required this.strategyId});
  
  /// 设置WidgetRef引用
  void setRef(WidgetRef widgetRef) {
    ref = widgetRef;
  }
  
  /// 更新策略详情数据
  void updateStrategyDetail(StrategyDetailData? data) {
    if (data == null) return;
    
    print('StrategyDetailLogic: 更新策略详情数据'); // 调试信息
    print('StrategyDetailLogic: targetPrice = ${data.targetPrice}'); // 调试信息
    print('StrategyDetailLogic: takeProfitPrice = ${data.takeProfitPrice}'); // 调试信息
    print('StrategyDetailLogic: stopLossPrice = ${data.stopLossPrice}'); // 调试信息
    
    // 更新用户信息（这里需要根据实际业务逻辑获取用户信息）
    state.userAvatar.value = 'https://img11.360buyimg.com/img/jfs/t1/275721/2/1900/17609/67d15ec5Fbfdce671/4f23c5ca45c211c7.png'; // 临时占位符
    // state.userName.value = 'CG24822260'; // 临时占位符
    state.userName.value = data.traderId; // 临时占位符
    state.userBadge.value = 'LTT工会'; // 临时占位符
    
    // 更新策略信息
    state.strategyId.value = data.id;
    state.strategyType.value = _getStrategyTypeText(data.strategyType);
    state.symbol.value = '\$${data.coinSymbol}';
    state.isContract.value = true; // 根据实际业务逻辑判断
    // 根据价格关系判断多空：如果止盈价 > 目标价格，则为多头；如果止盈价 < 目标价格，则为空头
    state.isLong.value = data.takeProfitPrice > data.targetPrice;
    state.followCount.value = data.followCount;
    state.priceRange.value = data.targetPrice.toStringAsFixed(2);
    state.stopProfitRange.value = data.takeProfitPrice.toStringAsFixed(2);
    state.stopLossRange.value = data.stopLossPrice.toStringAsFixed(2);
    state.viewCount.value = int.tryParse(data.viewCount) ?? 0;
    state.lastUpdateTime.value = _formatTime(data.updatedAt);
    
    print('StrategyDetailLogic: 更新后的价格数据'); // 调试信息
    print('StrategyDetailLogic: priceRange = ${state.priceRange.value}'); // 调试信息
    print('StrategyDetailLogic: stopProfitRange = ${state.stopProfitRange.value}'); // 调试信息
    print('StrategyDetailLogic: stopLossRange = ${state.stopLossRange.value}'); // 调试信息
  }
  
  /// 获取策略类型文本
  String _getStrategyTypeText(int strategyType) {
    switch (strategyType) {
      case 0:
      case 1:
        return '短线';
      case 2:
        return '中线';
      case 3:
        return '长线';
      default:
        return '未知';
    }
  }
  
  /// 格式化时间
  String _formatTime(String timeStr) {
    try {
      final dateTime = DateTime.parse(timeStr);
      final now = DateTime.now();
      final difference = now.difference(dateTime);
      
      if (difference.inMinutes < 1) {
        return '刚刚';
      } else if (difference.inMinutes < 60) {
        return '${difference.inMinutes}分钟前';
      } else if (difference.inHours < 24) {
        return '${difference.inHours}小时前';
      } else {
        return '${difference.inDays}天前';
      }
    } catch (e) {
      return '刚刚';
    }
  }
  
  // 切换Tab
  void switchTab(int index) {
    state.selectedTabIndex.value = index;
  }
  
  // 底部按钮操作
  void cancelOrder() {
    Get.snackbar('操作', '撤单操作');
  }
  
  void stopLoss() {
    Get.snackbar('操作', '止损操作');
  }
  
  void takeProfit() {
    Get.snackbar('操作', '盈利操作');
  }
  
  void addPosition() {
    // Get.snackbar('操作', '追加操作');
  }
  
  // 评论操作
  void replyToComment(String commentId) {
    Get.snackbar('操作', '回复评论');
  }
  
  // 打赏操作
  void showRewardDialog() {
    Get.dialog(
      AlertDialog(
        title: const Text('打赏'),
        content: const Text('选择打赏金额'),
        actions: [
          TextButton(
            onPressed: () => Get.back(),
            child: const Text('取消'),
          ),
          TextButton(
            onPressed: () {
              Get.back();
              Get.snackbar('操作', '打赏成功');
            },
            child: const Text('确定'),
          ),
        ],
      ),
    );
  }
  
  // 跟踪策略
  void trackStrategy() {
    Get.snackbar('操作', '开始跟踪策略');
  }
}
