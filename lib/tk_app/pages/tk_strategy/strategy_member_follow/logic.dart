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
    state.currentTab = tabType;
    update();
    // 重新加载对应数据
    loadUserList();
  }

  // 切换用户类型筛选
  void switchUserType(UserType userType) {
    state.currentUserType = userType;
    update();
    // 重新加载对应数据
    loadUserList();
  }

  // 加载用户列表数据
  Future<void> loadUserList() async {
    try {
      state.isLoading = true;
      state.errorMessage = null;
      update();

      // TODO: 这里后续替换为真实的API调用
      await Future.delayed(const Duration(milliseconds: 500)); // 模拟网络延迟
      
      // 根据当前筛选条件过滤数据
      List<UserInfo> filteredList = state.userList.where((user) {
        // 根据用户类型筛选
        bool typeMatch = (state.currentUserType == UserType.user && user.userType == "user") ||
                        (state.currentUserType == UserType.trader && user.userType == "trader");
        
        // 根据关注状态筛选
        bool followMatch = (state.currentTab == FollowTabType.following && user.isFollowing) ||
                          (state.currentTab == FollowTabType.followers && !user.isFollowing);
        
        return typeMatch && followMatch;
      }).toList();

      state.userList = filteredList;
      state.isLoading = false;
      update();
    } catch (e) {
      state.isLoading = false;
      state.errorMessage = e.toString();
      update();
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
      update();

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
        update();
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

  // 获取当前筛选后的用户列表
  List<UserInfo> get filteredUserList {
    return state.userList.where((user) {
      bool typeMatch = (state.currentUserType == UserType.user && user.userType == "user") ||
                      (state.currentUserType == UserType.trader && user.userType == "trader");
      
      bool followMatch = (state.currentTab == FollowTabType.following && user.isFollowing) ||
                        (state.currentTab == FollowTabType.followers && !user.isFollowing);
      
      return typeMatch && followMatch;
    }).toList();
  }
}
