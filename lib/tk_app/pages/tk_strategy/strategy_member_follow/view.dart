import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toklink/tk_app/pages/tk_strategy/strategy_member_follow/state.dart';

import 'logic.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/user_list.dart';

class StrategyMemberFollowPage extends StatelessWidget {
  StrategyMemberFollowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 获取传递的参数，默认为正在关注
    final FollowTabType? initialTab = Get.arguments as FollowTabType?;
    
    return GetBuilder<StrategyMemberFollowLogic>(
      init: StrategyMemberFollowLogic(),
      builder: (logic) {
        // 如果有传递参数，设置初始tab
        if (initialTab != null) {
          logic.state.currentTab.value = initialTab;
        }
        return Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              // 顶部导航栏和筛选器
              const CustomAppBar(),
              
              // 用户列表 - 使用 Obx 监听响应式变化
              Expanded(
                child: Obx(() {
                  if (logic.state.isLoading.value) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  
                  if (logic.state.errorMessage.value != null) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '加载失败: ${logic.state.errorMessage.value}',
                            style: const TextStyle(color: Colors.red),
                          ),
                          const SizedBox(height: 16),
                          ElevatedButton(
                            onPressed: () => logic.refreshData(),
                            child: const Text('重试'),
                          ),
                        ],
                      ),
                    );
                  }
                  
                  return const UserList();
                }),
              ),
            ],
          ),
        );
      },
    );
  }
}
