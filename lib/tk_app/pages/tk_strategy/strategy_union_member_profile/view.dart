import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';
import '../../../shared/models/strategy/trader_strategy_item.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/user_info_card.dart';
import 'widgets/strategy_notes_card.dart';
import 'widgets/stats_card.dart';
import 'widgets/tip_card.dart';
import 'widgets/custom_tab_bar.dart';
import 'widgets/latest_post_card.dart';
import 'widgets/subscribe_button.dart';

class StrategyUnionMemberProfilePage extends StatelessWidget {
  StrategyUnionMemberProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 注册Controller到GetX依赖注入容器
    final logic = Get.put(StrategyUnionMemberProfileLogic());
    final state = logic.state;
    
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: GetBuilder<StrategyUnionMemberProfileLogic>(
        builder: (controller) {
          // 显示加载状态
          if (state.isLoading) {
            return Stack(
              children: [
                // 背景图片区域
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: _buildBackgroundSection(),
                ),
                // 加载指示器
                Center(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircularProgressIndicator(),
                        SizedBox(height: 16),
                        Text(
                          '加载交易员详情中...',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // 返回按钮
                const Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: CustomAppBar(),
                ),
              ],
            );
          }
          
          // 显示错误状态
          if (state.error.isNotEmpty) {
            return Stack(
              children: [
                // 背景图片区域
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: _buildBackgroundSection(),
                ),
                // 错误信息
                Center(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.error_outline,
                          size: 48,
                          color: Colors.red[300],
                        ),
                        SizedBox(height: 16),
                        Text(
                          '加载失败',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.red[600],
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          state.error,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[600],
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () => logic.loadUserProfile(),
                          child: Text('重试'),
                        ),
                      ],
                    ),
                  ),
                ),
                // 返回按钮
                const Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: CustomAppBar(),
                ),
              ],
            );
          }
          
          // 正常显示内容
          return Stack(
            children: [
              // 背景图片区域 - 延伸到状态栏
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: _buildBackgroundSection(),
              ),
              // 主要内容区域
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: 0,
                child: CustomScrollView(
                  slivers: [
                    // 占位空间，让内容从背景下方开始
                    SliverToBoxAdapter(
                      child: SizedBox(height: 200 + MediaQuery.of(Get.context!).padding.top),
                    ),
                    // 白色内容区域
                    SliverToBoxAdapter(
                      child: _buildWhiteContentSection(),
                    ),
                  ],
                ),
              ),
              // 返回按钮 - 放在最上层，确保能够接收点击事件
              const Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: CustomAppBar(),
              ),
            ],
          );
        },
      ),
      // 底部订阅按钮
      bottomNavigationBar: const SubscribeButton(),
    );
  }

  // 构建背景图片区域（1）
  Widget _buildBackgroundSection() {
    return Container(
      height: 200 + MediaQuery.of(Get.context!).padding.top,
      decoration: BoxDecoration(
        // 这里可以添加背景图片
        // image: DecorationImage(
        //   image: AssetImage('assets/images/profile_bg.png'),
        //   fit: BoxFit.cover,
        // ),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.black87,
            Colors.black54,
          ],
        ),
      ),
      child: Stack(
        children: [
          // 背景纹理效果
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.grey[800]!.withOpacity(0.3),
                    Colors.transparent,
                    Colors.grey[600]!.withOpacity(0.2),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 构建白色内容区域（2-9）
  Widget _buildWhiteContentSection() {
    final logic = Get.find<StrategyUnionMemberProfileLogic>();
    final state = logic.state;
    
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        // borderRadius: BorderRadius.only(
        //   topLeft: Radius.circular(20),
        //   topRight: Radius.circular(20),
        // ),
      ),
      child: Column(
        children: [
          // 用户头像（3）- 叠加在白色背景上
          Transform.translate(
            offset: const Offset(0, -30),
            child: Column(
              children: [
                Row(
                  children: [
                    const SizedBox(width: 20),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey[300],
                      child: state.userAvatar.isEmpty
                          ? const Icon(Icons.person, size: 40, color: Colors.grey)
                          : ClipOval(
                              child: Image.network(
                                state.userAvatar,
                                width: 60,
                                height: 60,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return const Icon(Icons.person, size: 40, color: Colors.grey);
                                },
                              ),
                            ),
                    ),
                    const Spacer(),
                    const SizedBox(width: 20),
                  ],
                ),
              ],
            ),
          ),
          // 用户信息（5）- 在头像下面，左对齐
          Row(
            children: [
              const SizedBox(width: 20),
              Row(
                children: [
                  Text(
                    state.userName,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(width: 6),
                  if (state.isVerified)
                    const Icon(
                      Icons.verified,
                      color: Colors.green,
                      size: 20,
                    ),
                  const SizedBox(width: 6),
                  Text(
                    state.unionName,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.green,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              // 关注按钮（4）- 在白色区域里面
              Container(
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                    color: Colors.grey[300]!,
                    width: 1,
                  ),
                ),
                child: TextButton(
                  onPressed: logic.toggleFollow,
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    minimumSize: Size.zero,
                  ),
                  child: Text(
                    state.isFollowing ? '已关注' : '关注',
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20),
            ],
          ),
          // const SizedBox(height: 20),
          // Bio信息区域（6）
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 0),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.grey.withOpacity(0.1),
              //     spreadRadius: 1,
              //     blurRadius: 4,
              //     offset: const Offset(0, 2),
              //   ),
              // ],
            ),
            child: Text(
              state.strategyNotes.isNotEmpty ? state.strategyNotes : '暂无个人简介',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[700],
                height: 1.5,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          // const SizedBox(height: 12),
          // 链接和时间区域（7）
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 0),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.grey.withOpacity(0.1),
              //     spreadRadius: 1,
              //     blurRadius: 4,
              //     offset: const Offset(0, 2),
              //   ),
              // ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      // TODO: 打开链接
                    },
                    child: Text(
                      state.profileLink,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.blue,
                        // decoration: TextDecoration.underline,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Text(
                  state.joinDate,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          // 统计数据区域（8）
          Container(
            // margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.only(left: 0,bottom: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.grey.withOpacity(0.1),
              //     spreadRadius: 1,
              //     blurRadius: 4,
              //     offset: const Offset(0, 2),
              //   ),
              // ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildStatItem('${state.followingCount}', '正在关注', onTap: logic.navigateToFollowing),
                _buildStatItem('${state.followersCount}', '关注者', onTap: logic.navigateToFollowers),
                _buildStatItem('${state.subscribersCount}', '订阅者'),
                _buildStatItem(state.viewsCount, '浏览'),
              ],
            ),
          ),
          const SizedBox(height: 12),
          // 打赏区域（9）- 特殊背景色
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color(0xFFF6F7F9), // 特殊背景色
              borderRadius: BorderRadius.circular(12),
            ),
            child: GestureDetector(
              onTap: logic.tip,
              child: Row(
                children: [
                  const Icon(
                    Icons.attach_money,
                    color: Colors.orange,
                    size: 24,
                  ),
                  const SizedBox(width: 12),
                  const Text(
                    '打赏',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '${state.tipCount}人打赏',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                  const SizedBox(width: 8),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Colors.grey[400],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
          // 标签页
          const CustomTabBar(),
          const SizedBox(height: 12),
          // Tab 内容
          _buildTabContent(),
          const SizedBox(height: 100), // 底部留白
        ],
      ),
    );
  }

  // 统计项目
  Widget _buildStatItem(String count, String label, {VoidCallback? onTap}) {
    Widget content = Column(
      children: [
        Text(
          count,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey[600],
          ),
        ),
      ],
    );

    if (onTap != null) {
      return GestureDetector(
        onTap: onTap,
        child: content,
      );
    }

    return content;
  }

  // 构建Tab内容
  Widget _buildTabContent() {
    final logic = Get.find<StrategyUnionMemberProfileLogic>();
    final state = logic.state;
    
    switch (state.currentTabIndex) {
      case 0: // 观点
        return const LatestPostCard();
      case 1: // 策略
        return _buildStrategiesContent(logic);
      case 2: // 视频
      case 3: // 实盘  
      case 4: // 评价
      default:
        return _buildEmptyContent();
    }
  }

  // 构建策略列表内容
  Widget _buildStrategiesContent(StrategyUnionMemberProfileLogic logic) {
    final state = logic.state;
    
    // 如果正在加载且列表为空，显示加载指示器
    if (state.isLoadingStrategies && state.strategiesList.isEmpty) {
      return Container(
        padding: const EdgeInsets.all(40),
        child: const Center(
          child: Column(
            children: [
              CircularProgressIndicator(),
              SizedBox(height: 16),
              Text(
                '加载策略列表中...',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      );
    }
    
    // 如果有错误，显示错误信息
    if (state.strategiesError.isNotEmpty) {
      return Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Column(
            children: [
              Icon(
                Icons.error_outline,
                size: 48,
                color: Colors.red[300],
              ),
              const SizedBox(height: 16),
              Text(
                '加载失败',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[600],
                ),
              ),
              const SizedBox(height: 8),
              Text(
                state.strategiesError,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => logic.refreshTraderStrategies(),
                child: const Text('重试'),
              ),
            ],
          ),
        ),
      );
    }
    
    // 如果没有数据，显示空状态
    if (state.strategiesList.isEmpty) {
      return Container(
        padding: const EdgeInsets.all(40),
        margin: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Column(
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
                '该交易员还没有发布任何策略',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[400],
                ),
              ),
            ],
          ),
        ),
      );
    }
    
    // 显示策略列表
    return Column(
      children: [
        ...state.strategiesList.map((strategy) => _buildStrategyItem(strategy, logic)).toList(),
        // 加载更多按钮
        if (state.hasMoreStrategies) _buildLoadMoreButton(logic),
      ],
    );
  }

  // 构建策略列表项
  Widget _buildStrategyItem(TraderStrategyItem strategy, StrategyUnionMemberProfileLogic logic) {
    return GestureDetector(
      onTap: () => logic.goToStrategyDetail(strategy),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
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
                // 合约/现货标签
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: strategy.marketType == 'SPOT' ? Colors.blue : const Color(0xFF9E13F7),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    strategy.marketType == 'SPOT' ? '现货' : '合约',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                // 多/空标签 (合约才显示)
                if (strategy.marketType != 'SPOT')
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: strategy.strategyType == 2 ? Colors.green : Colors.red,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      strategy.strategyType == 2 ? '多' : '空',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                const SizedBox(width: 12),
                // 币种符号
                Text(
                  strategy.coinSymbol,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: 12),
            
            // 策略标题
            Text(
              strategy.title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            
            const SizedBox(height: 8),
            
            // 策略描述
            if (strategy.summary.isNotEmpty)
              Text(
                strategy.summary,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                  height: 1.4,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            
            const SizedBox(height: 12),
            
            // ID和跟单人数
            Row(
              children: [
                Flexible(
                  child: Text(
                    'ID.${strategy.id}',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(width: 12),
                Flexible(
                  child: Text(
                    '${strategy.followCount}人已跟单',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  '*仅供参考',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: 12),
            
            // 分割线
            Container(
              height: 1,
              color: Colors.grey[200],
            ),
            
            const SizedBox(height: 12),
            
            // 底部统计信息
            Row(
              children: [
                Text(
                  _formatTime(strategy.createdAt),
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
                if (strategy.avgRating > 0) ...[
                  const SizedBox(width: 8),
                  Text(
                    '|',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[300],
                    ),
                  ),
                  const SizedBox(width: 8),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 14,
                        color: Colors.orange[400],
                      ),
                      const SizedBox(width: 2),
                      Text(
                        strategy.avgRating.toStringAsFixed(1),
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[500],
                        ),
                      ),
                      Text(
                        ' (${strategy.ratingCount})',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ],
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

  // 构建加载更多按钮
  Widget _buildLoadMoreButton(StrategyUnionMemberProfileLogic logic) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: ElevatedButton(
        onPressed: logic.state.isLoadingStrategies ? null : () => logic.loadMoreStrategies(),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey[100],
          foregroundColor: Colors.grey[700],
          elevation: 0,
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: logic.state.isLoadingStrategies
            ? const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(strokeWidth: 2),
              )
            : const Text(
                '加载更多',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
      ),
    );
  }

  // 构建空内容
  Widget _buildEmptyContent() {
    return Container(
      padding: const EdgeInsets.all(40),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Column(
          children: [
            Icon(
              Icons.info_outline,
              size: 64,
              color: Colors.grey[300],
            ),
            const SizedBox(height: 16),
            Text(
              '暂无数据',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[500],
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 8),
            // Text(
            //   '该功能正在开发中',
            //   style: TextStyle(
            //     fontSize: 14,
            //     color: Colors.grey[400],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  // 格式化时间
  String _formatTime(String timeStr) {
    try {
      final dateTime = DateTime.parse(timeStr);
      final now = DateTime.now();
      final difference = now.difference(dateTime);
      
      if (difference.inDays > 0) {
        return '${difference.inDays}天前';
      } else if (difference.inHours > 0) {
        return '${difference.inHours}小时前';
      } else if (difference.inMinutes > 0) {
        return '${difference.inMinutes}分钟前';
      } else {
        return '刚刚';
      }
    } catch (e) {
      return timeStr;
    }
  }
}
