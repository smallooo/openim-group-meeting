import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../state.dart';
import '../logic.dart';

class UserListItem extends StatelessWidget {
  final UserInfo user;

  const UserListItem({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.find<StrategyMemberFollowLogic>();
    
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          // 用户头像
          _buildAvatar(),
          const SizedBox(width: 12),
          
          // 用户名
          Expanded(
            child: Text(
              user.username,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
          ),
          
          // 关注按钮
          _buildFollowButton(logic),
        ],
      ),
    );
  }

  Widget _buildAvatar() {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[300],
      ),
      child: ClipOval(
        child: user.avatar.isNotEmpty
            ? Image.network(
                user.avatar,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return _buildDefaultAvatar();
                },
              )
            : _buildDefaultAvatar(),
      ),
    );
  }

  Widget _buildDefaultAvatar() {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.purple[100],
      ),
      child: Icon(
        Icons.person,
        color: Colors.purple[400],
        size: 20,
      ),
    );
  }

  Widget _buildFollowButton(StrategyMemberFollowLogic logic) {
    return GestureDetector(
      onTap: () => logic.toggleFollowUser(user.id),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        decoration: BoxDecoration(
          color: user.isFollowing ? Colors.grey[300] : Colors.purple,
          borderRadius: BorderRadius.circular(16),
          border: user.isFollowing ? null : Border.all(color: Colors.purple),
        ),
        child: Text(
          user.isFollowing ? "已关注" : "+ 关注",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: user.isFollowing ? Colors.grey[600] : Colors.white,
          ),
        ),
      ),
    );
  }
}
