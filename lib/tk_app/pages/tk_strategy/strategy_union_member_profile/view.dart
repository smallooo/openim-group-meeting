import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';
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
    Get.put(StrategyUnionMemberProfileLogic());
    
    final logic = Get.find<StrategyUnionMemberProfileLogic>();
    final state = logic.state;
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: CustomScrollView(
        slivers: [
          // 自定义AppBar
          const CustomAppBar(),
          // 背景图片区域（可拉伸）
          SliverToBoxAdapter(
            child: _buildBackgroundSection(),
          ),
          // 白色背景区域（包含4-9所有内容）
          SliverToBoxAdapter(
            child: _buildWhiteContentSection(),
          ),
        ],
      ),
      // 底部订阅按钮
      bottomNavigationBar: const SubscribeButton(),
    );
  }

  // 构建背景图片区域（1）
  Widget _buildBackgroundSection() {
    return Container(
      height: 200,
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
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
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
          // 策略注意事项（6）
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '策略注意事项:',
                  style: TextStyle(
                    fontSize: 14,
                    // fontWeight: FontWeight.bold,
                    color: Colors.grey[700],
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  state.strategyNotes,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[700],
                    height: 1.5,
                  ),
                ),
              ],
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
                GestureDetector(
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
                _buildStatItem('${state.followingCount}', '正在关注'),
                _buildStatItem('${state.followersCount}', '关注者'),
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
          // 最新动态
          const LatestPostCard(),
          const SizedBox(height: 100), // 底部留白
        ],
      ),
    );
  }

  // 统计项目
  Widget _buildStatItem(String count, String label) {
    return Column(
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
  }
}
