import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../state.dart';
import '../logic.dart';
import 'custom_segmented_control.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.find<StrategyMemberFollowLogic>();
    final state = logic.state;

    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 16,
        right: 16,
        bottom: 16,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 1),
            blurRadius: 4,
          ),
        ],
      ),
      child: Column(
        children: [
          // 顶部导航栏
          Row(
            children: [
              // 返回按钮
              GestureDetector(
                onTap: () => Get.back(),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                    color: Colors.black87,
                  ),
                ),
              ),
              
              // 标题
              Expanded(
                child: Text(
                  state.currentUserName,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
              ),
              
              // 占位空间，保持标题居中
              const SizedBox(width: 36),
            ],
          ),
          
          const SizedBox(height: 16),
          
          // 关注标签页 - 使用 Obx 监听响应式变化
          Obx(() => Row(
            children: [
              Expanded(
                child: _buildTabButton(
                  "正在关注",
                  FollowTabType.following,
                  state.currentTab.value == FollowTabType.following,
                  () => logic.switchFollowTab(FollowTabType.following),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _buildTabButton(
                  "关注者",
                  FollowTabType.followers,
                  state.currentTab.value == FollowTabType.followers,
                  () => logic.switchFollowTab(FollowTabType.followers),
                ),
              ),
            ],
          )),
          
          const SizedBox(height: 16),
          
          // 用户类型筛选器 - 使用 Obx 监听响应式变化
          Obx(() => CustomSegmentedControl<UserType>(
            items: const [UserType.user, UserType.trader],
            selectedItem: state.currentUserType.value,
            onChanged: (userType) => logic.switchUserType(userType),
            itemBuilder: (userType) => userType == UserType.user ? "用户" : "交易员",
          )),
        ],
      ),
    );
  }

  Widget _buildTabButton(
    String text,
    FollowTabType tabType,
    bool isSelected,
    VoidCallback onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: isSelected ? Colors.purple : Colors.transparent,
              width: 2,
            ),
          ),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: isSelected ? Colors.black87 : Colors.grey[600],
          ),
        ),
      ),
    );
  }
}
