import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'state.dart';
import '../strategy_detail/view.dart';
import '../../../shared/models/strategy/strategy_item.dart' as api_models;

class StrategyMyLogic extends GetxController {
  final StrategyMyState state = StrategyMyState();
  
  // 切换Tab
  void switchTab(int index) {
    state.selectedTabIndex.value = index;
    // 根据tab重新加载数据
    _loadStrategyData();
  }
  
  // 选择交易对
  void selectTradingPair(String pair) {
    state.selectedTradingPair.value = pair;
    _loadStrategyData();
  }
  
  // 显示时间选择器
  void showTimeRangePicker() {
    Get.bottomSheet(
      _buildTimeRangeBottomSheet(),
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
    );
  }
  
  // 选择时间范围
  void selectTimeRange(String timeRange) {
    state.selectedTimeRange.value = timeRange;
    Get.back(); // 关闭底部弹窗
    _loadStrategyData();
  }
  
  // 策略操作
  void cancelOrder(String strategyId) {
    Get.snackbar('提示', '撤单操作');
  }
  
  void stopLoss(String strategyId) {
    Get.snackbar('提示', '止损操作');
  }
  
  void takeProfit(String strategyId) {
    Get.snackbar('提示', '盈利操作');
  }
  
  void track(String strategyId) {
    Get.snackbar('提示', '跟踪操作');
  }
  
  // 跳转到策略详情页面
  void goToStrategyDetail(dynamic strategy) {
    // 传递策略ID到详情页面
    Get.to(() => StrategyDetailPage(strategyId: strategy.id));
  }
  
  @override
  void onInit() {
    super.onInit();
    _loadStrategyData();
  }

  // 加载策略数据
  void _loadStrategyData() {
    _fetchMyStrategies();
  }

  // 获取我的策略列表 - 现在直接从view中调用Provider
  Future<void> _fetchMyStrategies() async {
    print('开始获取策略列表...(现在需要在view中调用Provider)'); // 调试信息
  }

  // 刷新策略列表 - 现在直接从view中调用Provider
  Future<void> refreshStrategies() async {
    print('刷新策略列表...(现在需要在view中调用Provider)'); // 调试信息
  }

  // 加载更多策略 - 现在直接从view中调用Provider
  Future<void> loadMoreStrategies() async {
    print('加载更多策略...(现在需要在view中调用Provider)'); // 调试信息
  }

  // 手动更新策略列表 - 供view调用
  void updateStrategiesList(List<api_models.StrategyItem> apiStrategies) {
    print('手动更新策略列表: 获取到 ${apiStrategies.length} 条策略数据'); // 调试信息
    
    for (int i = 0; i < apiStrategies.length; i++) {
      print('策略 $i: ${apiStrategies[i].id} - ${apiStrategies[i].title}'); // 调试信息
    }
    
    final localStrategies = apiStrategies.map((apiStrategy) {
      return StrategyItem(
        id: apiStrategy.id,
        type: _getStrategyTypeText(apiStrategy.strategyType),
        symbol: apiStrategy.coinSymbol, // 直接使用原始的coinSymbol
        isContract: true, // 根据实际业务逻辑判断
        isMultiple: apiStrategy.priceType == 0, // 根据实际业务逻辑判断
        followCount: apiStrategy.followCount,
        priceRange: '${apiStrategy.targetPrice.toStringAsFixed(2)}',
        stopLossRange: '${apiStrategy.stopLossPrice.toStringAsFixed(2)}',
        stopProfitRange: '${apiStrategy.takeProfitPrice.toStringAsFixed(2)}',
        viewCount: int.tryParse(apiStrategy.viewCount) ?? 0,
        trackedCount: apiStrategy.ratingCount,
      );
    }).toList();
    
    print('转换后本地策略数量: ${localStrategies.length}'); // 调试信息
    state.strategyList.value = localStrategies;
    print('更新后的state.strategyList长度: ${state.strategyList.length}'); // 调试信息
  }

  // 获取策略类型文本
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
  
  Widget _buildTimeRangeBottomSheet() {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // 标题
            Container(
              padding: const EdgeInsets.all(20),
              child: const Text(
                '全部时间',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.green,
                ),
              ),
            ),
            
            // 选项列表
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: state.timeRangeOptions.length,
              itemBuilder: (context, index) {
                final option = state.timeRangeOptions[index];
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                  child: ListTile(
                    title: Text(
                      option,
                      style: const TextStyle(fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                    onTap: () => selectTimeRange(option),
                  ),
                );
              },
            ),
            
            // 取消按钮
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: () => Get.back(),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[100],
                  foregroundColor: Colors.grey[600],
                  elevation: 0,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  '取消',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
