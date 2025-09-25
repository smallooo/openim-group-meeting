import 'package:flutter/material.dart';
import 'package:flutter_openim_sdk/flutter_openim_sdk.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:openim_common/openim_common.dart';

/// 群成员选择器，用于@人功能
class GroupMemberSelector extends StatefulWidget {
  final List<GroupMembersInfo> groupMembers;
  final Function(GroupMembersInfo) onMemberSelected;
  final VoidCallback? onCancel;
  final String? searchHint;

  const GroupMemberSelector({
    Key? key,
    required this.groupMembers,
    required this.onMemberSelected,
    this.onCancel,
    this.searchHint,
  }) : super(key: key);

  @override
  State<GroupMemberSelector> createState() => _GroupMemberSelectorState();
}

class _GroupMemberSelectorState extends State<GroupMemberSelector> {
  final TextEditingController _searchController = TextEditingController();
  List<GroupMembersInfo> _filteredMembers = [];

  @override
  void initState() {
    super.initState();
    _filteredMembers = widget.groupMembers;
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchController.removeListener(_onSearchChanged);
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      if (query.isEmpty) {
        _filteredMembers = widget.groupMembers;
      } else {
        _filteredMembers = widget.groupMembers.where((member) {
          final nickname = member.nickname?.toLowerCase() ?? '';
          final userID = member.userID?.toLowerCase() ?? '';
          return nickname.contains(query) || userID.contains(query);
        }).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: 300.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(12.r)),
        ),
        child: Column(
          children: [
            // 顶部标题栏
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Styles.c_E8EAEF,
                    width: 1.h,
                  ),
                ),
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: widget.onCancel,
                    child: Text(
                      StrRes.cancel,
                      style: Styles.ts_8E9AB0_16sp,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      '选择要@的人',
                      style: Styles.ts_0C1C33_17sp.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(width: 60.w), // 平衡左侧取消按钮
                ],
              ),
            ),
            
            // 搜索框
            Container(
              margin: EdgeInsets.all(12.w),
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
              decoration: BoxDecoration(
                color: Styles.c_F2F8FF,
                borderRadius: BorderRadius.circular(6.r),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Styles.c_8E9AB0,
                    size: 20.r,
                  ),
                  8.horizontalSpace,
                  Expanded(
                    child: TextField(
                      controller: _searchController,
                      decoration: InputDecoration(
                        hintText: widget.searchHint ?? '搜索成员',
                        hintStyle: Styles.ts_8E9AB0_14sp,
                        border: InputBorder.none,
                        isDense: true,
                        contentPadding: EdgeInsets.zero,
                      ),
                      style: Styles.ts_0C1C33_14sp,
                    ),
                  ),
                ],
              ),
            ),
            
            // 成员列表
            Expanded(
              child: _filteredMembers.isEmpty
                  ? _buildEmptyView()
                  : ListView.builder(
                      itemCount: _filteredMembers.length,
                      itemBuilder: (context, index) {
                        final member = _filteredMembers[index];
                        return _buildMemberItem(member);
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmptyView() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.person_search,
            size: 48.r,
            color: Styles.c_8E9AB0,
          ),
          8.verticalSpace,
          Text(
            '没有找到相关成员',
            style: Styles.ts_8E9AB0_14sp,
          ),
        ],
      ),
    );
  }

  Widget _buildMemberItem(GroupMembersInfo member) {
    return GestureDetector(
      onTap: () => widget.onMemberSelected(member),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            bottom: BorderSide(
              color: Styles.c_F2F8FF,
              width: 1.h,
            ),
          ),
        ),
        child: Row(
          children: [
            // 头像
            AvatarView(
              url: member.faceURL,
              text: member.nickname,
              width: 40.w,
              height: 40.h,
            ),
            12.horizontalSpace,
            
            // 用户信息
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    member.nickname ?? member.userID ?? '',
                    style: Styles.ts_0C1C33_10sp,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  if (member.nickname != null && member.userID != null)
                    4.verticalSpace,
                  if (member.nickname != null && member.userID != null)
                    Text(
                      'ID: ${member.userID}',
                      style: Styles.ts_8E9AB0_12sp,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                ],
              ),
            ),
            
            // 角色标识
            if (member.roleLevel == GroupRoleLevel.owner)
              Container(
                padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
                decoration: BoxDecoration(
                  color: Styles.c_FFB300,
                  borderRadius: BorderRadius.circular(2.r),
                ),
                child: Text(
                  '群主',
                  style: Styles.ts_FFFFFF_10sp,
                ),
              )
            else if (member.roleLevel == GroupRoleLevel.admin)
              Container(
                padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
                decoration: BoxDecoration(
                  color: Styles.c_1B72EC,
                  borderRadius: BorderRadius.circular(2.r),
                ),
                child: Text(
                  '管理员',
                  style: Styles.ts_FFFFFF_10sp,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

/// 显示群成员选择器的辅助方法
class AtMemberHelper {
  /// 显示群成员选择器底部弹窗
  static Future<GroupMembersInfo?> showMemberSelector(
    BuildContext context, {
    required List<GroupMembersInfo> groupMembers,
    String? searchHint,
  }) async {
    return await showModalBottomSheet<GroupMembersInfo>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => GroupMemberSelector(
        groupMembers: groupMembers,
        searchHint: searchHint,
        onMemberSelected: (member) {
          Navigator.of(context).pop(member);
        },
        onCancel: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
