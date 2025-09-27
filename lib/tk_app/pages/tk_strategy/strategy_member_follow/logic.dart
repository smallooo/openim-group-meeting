import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'state.dart';

class StrategyMemberFollowLogic extends GetxController {
  final StrategyMemberFollowState state = StrategyMemberFollowState();

  @override
  void onInit() {
    super.onInit();
    // 初始化时加载数据
    loadUserList();
  }

  // 切换关注标签页
  void switchFollowTab(FollowTabType tabType) {
    state.currentTab.value = tabType;
    // 重新加载对应数据
    loadUserList();
  }

  // 切换用户类型筛选
  void switchUserType(UserType userType) {
    state.currentUserType.value = userType;
    // 重新加载对应数据
    loadUserList();
  }

  // 加载用户列表数据
  Future<void> loadUserList() async {
    try {
      state.isLoading.value = true;
      state.errorMessage.value = null;

      // TODO: 这里后续替换为真实的API调用
      await Future.delayed(const Duration(milliseconds: 500)); // 模拟网络延迟
      
      // 注意：这里不再需要手动过滤，因为 filteredUserList 会自动响应状态变化
      state.isLoading.value = false;
    } catch (e) {
      state.isLoading.value = false;
      state.errorMessage.value = e.toString();
    }
  }

  // 关注/取消关注用户
  Future<void> toggleFollowUser(String userId) async {
    try {
      // 找到对应的用户
      int userIndex = state.userList.indexWhere((user) => user.id == userId);
      if (userIndex == -1) return;

      // 更新用户关注状态
      UserInfo updatedUser = state.userList[userIndex].copyWith(
        isFollowing: !state.userList[userIndex].isFollowing,
      );
      
      state.userList[userIndex] = updatedUser;

      // TODO: 这里后续替换为真实的API调用
      await Future.delayed(const Duration(milliseconds: 300)); // 模拟网络延迟
      
      // 显示操作结果
      Get.snackbar(
        updatedUser.isFollowing ? "关注成功" : "取消关注成功",
        "已${updatedUser.isFollowing ? '关注' : '取消关注'} ${updatedUser.username}",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: updatedUser.isFollowing ? Colors.green : Colors.orange,
        colorText: Colors.white,
        duration: const Duration(seconds: 2),
      );
    } catch (e) {
      // 如果操作失败，恢复原状态
      int userIndex = state.userList.indexWhere((user) => user.id == userId);
      if (userIndex != -1) {
        UserInfo revertedUser = state.userList[userIndex].copyWith(
          isFollowing: !state.userList[userIndex].isFollowing,
        );
        state.userList[userIndex] = revertedUser;
      }
      
      Get.snackbar(
        "操作失败",
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
        duration: const Duration(seconds: 2),
      );
    }
  }

  // 刷新数据
  Future<void> refreshData() async {
    await loadUserList();
  }

  // 计算属性 - 获取当前筛选后的用户列表
  // 这个 getter 会自动响应 currentTab 和 currentUserType 的变化
  List<UserInfo> get filteredUserList {
    return state.userList.where((user) {
      // 根据用户类型筛选
      bool typeMatch = (state.currentUserType.value == UserType.user && user.userType == "user") ||
                      (state.currentUserType.value == UserType.trader && user.userType == "trader");
      
      // 根据关注状态筛选
      bool followMatch = (state.currentTab.value == FollowTabType.following && user.isFollowing) ||
                        (state.currentTab.value == FollowTabType.followers && !user.isFollowing);
      
      return typeMatch && followMatch;
    }).toList();
  }
}
