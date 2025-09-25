import 'package:flutter/material.dart';

// 用户信息模型
class UserInfo {
  final String id;
  final String username;
  final String avatar;
  final bool isFollowing;
  final String userType; // 'user' 或 'trader'

  UserInfo({
    required this.id,
    required this.username,
    required this.avatar,
    required this.isFollowing,
    required this.userType,
  });

  UserInfo copyWith({
    String? id,
    String? username,
    String? avatar,
    bool? isFollowing,
    String? userType,
  }) {
    return UserInfo(
      id: id ?? this.id,
      username: username ?? this.username,
      avatar: avatar ?? this.avatar,
      isFollowing: isFollowing ?? this.isFollowing,
      userType: userType ?? this.userType,
    );
  }
}

// 页面状态枚举
enum FollowTabType {
  following, // 正在关注
  followers, // 关注者
}

enum UserType {
  user, // 用户
  trader, // 交易员
}

class StrategyMemberFollowState {
  // 当前选中的标签页
  FollowTabType currentTab = FollowTabType.following;
  
  // 当前选中的用户类型
  UserType currentUserType = UserType.user;
  
  // 用户列表
  List<UserInfo> userList = [];
  
  // 加载状态
  bool isLoading = false;
  
  // 错误信息
  String? errorMessage;
  
  // 当前用户信息（会长 David）
  String currentUserName = "會長 David";

  StrategyMemberFollowState() {
    ///Initialize variables
    _initMockData();
  }

  // 初始化模拟数据
  void _initMockData() {
    userList = [
      UserInfo(
        id: "1",
        username: "CG499",
        avatar: "https://via.placeholder.com/40",
        isFollowing: false,
        userType: "user",
      ),
      UserInfo(
        id: "2",
        username: "3mily",
        avatar: "https://via.placeholder.com/40",
        isFollowing: true,
        userType: "user",
      ),
      UserInfo(
        id: "3",
        username: "CG499",
        avatar: "https://via.placeholder.com/40",
        isFollowing: false,
        userType: "trader",
      ),
      UserInfo(
        id: "4",
        username: "3mily",
        avatar: "https://via.placeholder.com/40",
        isFollowing: false,
        userType: "trader",
      ),
      UserInfo(
        id: "5",
        username: "CG499",
        avatar: "https://via.placeholder.com/40",
        isFollowing: false,
        userType: "user",
      ),
      UserInfo(
        id: "6",
        username: "3mily",
        avatar: "https://via.placeholder.com/40",
        isFollowing: false,
        userType: "user",
      ),
    ];
  }
}
