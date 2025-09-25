import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'logic.dart';
import '../../../features/strategy/presentation/providers/my_strategies_provider.dart';

class StrategyMyPage extends ConsumerStatefulWidget {
  StrategyMyPage({Key? key}) : super(key: key);

  @override
  ConsumerState<StrategyMyPage> createState() => _StrategyMyPageState();
}

class _StrategyMyPageState extends ConsumerState<StrategyMyPage> {
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    // 在下一帧开始时初始化数据
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!_isInitialized) {
        _isInitialized = true;
        ref.read(myStrategiesNotifierProvider.notifier).fetchMyStrategies();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // 确保controller被注册
    final controller = Get.put(StrategyMyLogic());
    
    // 监听Provider状态变化并更新controller
    ref.listen(myStrategiesListProvider, (previous, next) {
      controller.updateStrategiesList(next);
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
          '我的策略',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh, color: Colors.black),
            onPressed: () async {
              await ref.read(myStrategiesNotifierProvider.notifier).refresh();
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // 顶部筛选器和Tab在一行
          _buildFilterAndTabSection(controller),
          
          // 策略列表
          Expanded(
            child: _buildStrategyList(ref, controller),
          ),
        ],
      ),
    );
  }

  Widget _buildFilterAndTabSection(StrategyMyLogic controller) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          // 全部交易对
          Expanded(
            flex: 4,
            child: GestureDetector(
              onTap: () {
                // TODO: 显示交易对选择器
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.grey[50],
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: Colors.grey[200]!),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Obx(() => Text(
                        controller.state.selectedTradingPair.value,
                        style: const TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                        ),
                        overflow: TextOverflow.ellipsis,
                      )),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.grey[400],
                      size: 14,
                    ),
                  ],
                ),
              ),
            ),
          ),
          
          const SizedBox(width: 2),
          
          // 全部时间
          Expanded(
            flex: 4,
            child: GestureDetector(
              onTap: () => controller.showTimeRangePicker(),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.grey[50],
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: Colors.grey[200]!),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Obx(() => Text(
                        controller.state.selectedTimeRange.value,
                        style: const TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                        ),
                        overflow: TextOverflow.ellipsis,
                      )),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.grey[400],
                      size: 14,
                    ),
                  ],
                ),
              ),
            ),
          ),
          
          // 减少中间间距给筛选器更多空间
          const Expanded(flex: 1, child: SizedBox()),
          
          // Tab切换 - 靠右
          Obx(() => Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildTabItem('当前策略', 0, controller),
              const SizedBox(width: 8),
              _buildTabItem('历史策略', 1, controller),
            ],
          )),
        ],
      ),
    );
  }

  Widget _buildTabItem(String title, int index, StrategyMyLogic controller) {
    final isSelected = controller.state.selectedTabIndex.value == index;
    return GestureDetector(
      onTap: () => controller.switchTab(index),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: isSelected ? Colors.grey[200] : Colors.transparent,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 14,
            color: isSelected ? Colors.black : Colors.grey,
            fontWeight: isSelected ? FontWeight.w500 : FontWeight.normal,
          ),
        ),
      ),
    );
  }

  Widget _buildStrategyList(WidgetRef ref, StrategyMyLogic controller) {
    // 监听Provider的加载状态
    final providerState = ref.watch(myStrategiesNotifierProvider);
    
    return Obx(() {
      // 如果正在加载，显示加载指示器
      if (providerState.isLoading) {
        return const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
              SizedBox(height: 16),
              Text(
                '加载中...',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        );
      }
      
      // 如果有错误，显示错误信息
      if (providerState.error != null) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.error_outline,
                size: 48,
                color: Colors.grey[400],
              ),
              const SizedBox(height: 16),
              Text(
                '加载失败',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 8),
              Text(
                providerState.error!,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[500],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () async {
                  await ref.read(myStrategiesNotifierProvider.notifier).fetchMyStrategies();
                },
                child: const Text('重试'),
              ),
            ],
          ),
        );
      }
      
      // 如果没有数据，显示空状态
      if (controller.state.strategyList.isEmpty) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.inbox_outlined,
                size: 64,
                color: Colors.grey[300],
              ),
              const SizedBox(height: 16),
              Text(
                '暂无策略',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[500],
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                '您还没有创建任何策略',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[400],
                ),
              ),
            ],
          ),
        );
      }
      
      // 显示策略列表
      return RefreshIndicator(
        onRefresh: () async {
          await ref.read(myStrategiesNotifierProvider.notifier).refresh();
        },
        child: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: controller.state.strategyList.length + 1, // +1 用于加载更多按钮
          itemBuilder: (context, index) {
            // 如果是最后一个item，显示加载更多按钮
            if (index == controller.state.strategyList.length) {
              return _buildLoadMoreButton(ref);
            }
            
            final strategy = controller.state.strategyList[index];
            return _buildStrategyItem(strategy, controller);
          },
        ),
      );
    });
  }

  Widget _buildStrategyItem(dynamic strategy, StrategyMyLogic controller) {
    return GestureDetector(
      onTap: () => controller.goToStrategyDetail(strategy),
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.all(16),
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
          // 顶部标签和币种
          Row(
            children: [
              // 合约标签
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: const Color(0xFF9E13F7),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Text(
                  '合约',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              // 多标签
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Text(
                  '多',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              // 币种符号
              Text(
                strategy.symbol,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          
          const SizedBox(height: 12),
          
          // ID和类型
          Row(
            children: [
              Text(
                'ID.${strategy.id}',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(width: 16),
              Text(
                strategy.type,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
          
          const SizedBox(height: 12),
          
          // 挂单状态和个人观点
          Row(
            children: [
              Text(
                '${strategy.followCount}人已挂单',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
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
          Column(
            children: [
              _buildPriceRow('价格', strategy.priceRange),
              const SizedBox(height: 8),
              _buildPriceRow('止盈价', strategy.stopLossRange),
              const SizedBox(height: 8),
              _buildPriceRow('止损价', strategy.stopProfitRange),
            ],
          ),
          
          const SizedBox(height: 16),
          
          // 操作按钮
          Row(
            children: [
              Expanded(child: _buildActionButton('撤单', () => controller.cancelOrder(strategy.id))),
              const SizedBox(width: 12),
              Expanded(child: _buildActionButton('止损', () => controller.stopLoss(strategy.id))),
              const SizedBox(width: 12),
              Expanded(child: _buildActionButton('盈利', () => controller.takeProfit(strategy.id))),
              const SizedBox(width: 12),
              Expanded(child: _buildActionButton('跟踪', () => controller.track(strategy.id))),
            ],
          ),
          
          const SizedBox(height: 12),
          
          // 分割线
          Container(
            height: 1,
            color: Colors.grey[200],
          ),
          
          const SizedBox(height: 12),
          
          // 底部统计
          Row(
            children: [
              Text(
                '刚刚',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[500],
                ),
              ),
              const SizedBox(width: 16),
              Text(
                '${strategy.viewCount} 次查看',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[500],
                ),
              ),
              const SizedBox(width: 8),
              Text(
                '|',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[300],
                ),
              ),
              const SizedBox(width: 8),
              Text(
                '策略跟踪 ${strategy.trackedCount} 条',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[500],
                ),
              ),
              const Spacer(),
              Icon(
                Icons.keyboard_arrow_right,
                size: 16,
                color: Colors.grey[400],
              ),
            ],
          ),
        ],
        ),
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

  Widget _buildActionButton(String title, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(6),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[700],
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }

  // 加载更多按钮
  Widget _buildLoadMoreButton(WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.only(top: 16, bottom: 16),
      child: ElevatedButton(
        onPressed: () async {
          await ref.read(myStrategiesNotifierProvider.notifier).loadMore();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey[100],
          foregroundColor: Colors.grey[700],
          elevation: 0,
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: const Text(
          '加载更多',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
