import 'dart:ui';

import 'package:flutter_openim_sdk/flutter_openim_sdk.dart';
import 'package:get/get.dart';


class SelectContactsFromGroupMemberLogic extends GetxController {

  final allList = <GroupMembersInfo>[].obs;

  // 已选成员 userID 列表
  final RxSet<String> checkedSet = <String>{}.obs;

  // 默认选中的成员 userID 列表SelectContactsLogic
  final Set<String> defaultCheckedSet = <String>{};

  @override
  void onReady() {

    var groupId = Get.arguments['groupID'];
    _getGroupMembers(groupId);
    super.onReady();
  }

  void _getGroupMembers(String groupId) async {
    final list = await OpenIM.iMManager.groupManager.getGroupMemberList(groupID: groupId, count: 1000,offset: 0,filter:  0);
    allList.addAll(list);

    // 默认选中自己
    defaultCheckedSet.add(OpenIM.iMManager.userID);
    checkedSet.add(OpenIM.iMManager.userID);
  }

  // Iterable<GroupMembersInfo> get operableList => allList.where(_remove);

  // bool _remove(GroupMembersInfo info) => !selectContactsLogic.isDefaultChecked(info);


  // 判断成员是否已选中
  bool isChecked(GroupMembersInfo info) {
    final userID = info.userID ?? '';
    return checkedSet.contains(userID) || isDefaultChecked(info);
  }

  // 判断成员是否为默认选中
  bool isDefaultChecked(GroupMembersInfo info) {
    final userID = info.userID ?? '';
    return defaultCheckedSet.contains(userID);
  }

  /// 移除已选成员
  void removeItem(GroupMembersInfo info) {
    final userID = info.userID ?? '';
    if (!isDefaultChecked(info)) {
      checkedSet.remove(userID);
    }
  }

  /// 切换成员选中状态
  void toggleChecked(GroupMembersInfo info) {
    final userID = info.userID ?? '';
    if (isDefaultChecked(info)) return; // 默认选中不可操作
    if (checkedSet.contains(userID)) {
      checkedSet.remove(userID);
    } else {
      checkedSet.add(userID);
    }
  }

  bool get isSelectAll {
    if (checkedSet.isEmpty) {
      return false;
    } else if (allList
        .every((item) => isChecked(item))) {
      return true;
    } else {
      return false;
    }
  }

  selectAll() {
    if (isSelectAll) {
      for (var info in allList) {
        removeItem(info);
      }
    } else {
      for (var info in allList) {
        final isCheckedResult = isChecked(info);
        if (!isCheckedResult) {
          toggleChecked(info);
        }
      }
    }
  }

  // 点击成员时的处理
  VoidCallback onTap(GroupMembersInfo info) {
    return () {
      final userID = info.userID ?? '';
      if (isDefaultChecked(info)) return; // 默认选中不可操作
      if (isChecked(info)) {
        checkedSet.remove(userID);
      } else {
        checkedSet.add(userID);
      }
    };
  }

  // 确认按钮是否可用
  bool get enabledConfirmButton => checkedSet.isNotEmpty;

  // 确认选择，返回已选成员信息
  void confirmSelectedList() {
    // 根据 checkedSet 过滤出已选成员信息
    final selectedMembers = allList.where((m) => checkedSet.contains(m.userID)).toList();
    Get.back(result: selectedMembers);
  }




}
