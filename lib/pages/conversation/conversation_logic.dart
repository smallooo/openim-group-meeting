import 'dart:convert';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_openim_sdk/flutter_openim_sdk.dart';
import 'package:get/get.dart';
import 'package:openim_common/openim_common.dart';
import 'package:pull_to_refresh_new/pull_to_refresh.dart';

import '../../core/controller/app_controller.dart';
import '../../core/controller/im_controller.dart';
import '../../core/im_callback.dart';
import '../../routes/app_navigator.dart';
import '../contacts/add_by_search/add_by_search_logic.dart';
import '../home/home_logic.dart';

class ConversationLogic extends GetxController {
  final popCtrl = CustomPopupMenuController();
  final list = <ConversationInfo>[].obs;
  final imLogic = Get.find<IMController>();
  final homeLogic = Get.find<HomeLogic>();
  final appLogic = Get.find<AppController>();
  final refreshController = RefreshController();
  final tempDraftText = <String, String>{};
  final pageSize = 400;

  final imStatus = IMSdkStatus.connectionSucceeded.obs;
  bool reInstall = false;

  final onChangeConversations = <ConversationInfo>[];
  
  // 用户在线状态映射
  final userOnlineStatusMap = <String, bool>{}.obs;

  @override
  void onInit() {
    getFirstPage();
    imLogic.conversationAddedSubject.listen(onChanged);
    imLogic.conversationChangedSubject.listen(onChanged);
    
    // 监听用户状态变化
    imLogic.userStatusChangedSubject.listen((UserStatusInfo statusInfo) {
      // 打印状态信息用于调试
      Logger.print('用户状态变化: userID=${statusInfo.userID}, status=${statusInfo.status}, platformIDs=${statusInfo.platformIDs}');
      
      // 根据实际的属性判断在线状态
      // status: 1=在线, 0=离线
      // platformIDs: 非空数组表示在线的平台
      bool isOnline = statusInfo.status == 1 && (statusInfo.platformIDs?.isNotEmpty == true);
      
      // 获取之前的状态
      bool previousStatus = userOnlineStatusMap[statusInfo.userID!] ?? false;
      
      Logger.print('用户 ${statusInfo.userID} 状态更新: $previousStatus -> $isOnline');
      
      // 更新状态
      userOnlineStatusMap[statusInfo.userID!] = isOnline;
      
        // 强制刷新UI以确保状态变化能立即显示
        userOnlineStatusMap.refresh();
        
        // 强制刷新整个列表
        list.refresh();

        Logger.print('状态映射更新完成，当前在线用户: ${userOnlineStatusMap.entries.where((e) => e.value).map((e) => e.key).toList()}');
        Logger.print('强制刷新UI完成');
    });
    imLogic.imSdkStatusSubject.listen((value) async {
      final status = value.status;
      final appReInstall = value.reInstall;
      final progress = value.progress;
      imStatus.value = status;

      if (status == IMSdkStatus.syncStart) {
        reInstall = appReInstall;
        if (reInstall) {
          EasyLoading.showProgress(0, status: StrRes.synchronizing);
        }
      }

      Logger.print('IM SDK Status: $status, reinstall: $reInstall, progress: $progress');

      if (status == IMSdkStatus.syncProgress && reInstall) {
        final p = (progress!).toDouble() / 100.0;

        EasyLoading.showProgress(p, status: '${StrRes.synchronizing}(${(p * 100.0).truncate()}%)');
      } else if (status == IMSdkStatus.syncEnded || status == IMSdkStatus.syncFailed) {
        EasyLoading.dismiss();
        if (reInstall) {
          onRefresh();
          reInstall = false;
        }
      }
    });
    super.onInit();
  }

  @override
  void onClose() {
    list.clear();
    reInstall = false;
    userOnlineStatusMap.clear(); // 清理用户在线状态
    super.onClose();
  }

  void onChanged(List<ConversationInfo> newList) {
    if (reInstall) {
      onChangeConversations.addAll(newList);
    }
    for (var newValue in newList) {
      Logger.print('======== conversation changed: ${newValue.toJson()} ========');
      list.removeWhere((e) => e.conversationID == newValue.conversationID);
    }

    if (newList.length > pageSize) {
      final tempList = newList;

      while (true) {
        final temp = tempList.sublist(0, pageSize);
        list.insertAll(0, temp);
        _sortConversationList();

        if (tempList.length <= pageSize) {
          break;
        }

        tempList.removeRange(0, pageSize);
      }
    } else {
      list.insertAll(0, newList);
      _sortConversationList();
      Logger.print(
          '======== conversation sort result: ${list.where((e) => e.unreadCount > 0).toList().map((e) => '${e.showName} [${e.conversationID}]: ${e.unreadCount}')} ========');
    }
  }

  void promptSoundOrNotification(ConversationInfo info) {
    if (imLogic.userInfo.value.globalRecvMsgOpt == 0 &&
        info.recvMsgOpt == 0 &&
        info.unreadCount > 0 &&
        info.latestMsg?.sendID != OpenIM.iMManager.userID) {
      appLogic.promptSoundOrNotification(info.latestMsg!);
    }
  }

  String getConversationID(ConversationInfo info) {
    return info.conversationID;
  }

  String? getPrefixTag(ConversationInfo info) {
    if (info.groupAtType == GroupAtType.groupNotification) {
      return '[${StrRes.groupAc}]';
    }

    return null;
  }

  String getContent(ConversationInfo info) {
    try {
      if (null != info.draftText && '' != info.draftText) {
        var map = json.decode(info.draftText!);
        String text = map['text'];
        if (text.isNotEmpty) {
          return text;
        }
      }

      if (null == info.latestMsg) return "";

      Logger.print('getContent - 消息类型: ${info.latestMsg!.contentType}');
      
      final text = IMUtils.parseNtf(info.latestMsg!, isConversation: true);
      if (text != null) return text;
      
      String result;
      if (info.isSingleChat || info.latestMsg!.sendID == OpenIM.iMManager.userID) {
        result = IMUtils.parseMsg(info.latestMsg!, isConversation: true);
      } else {
        result = "${info.latestMsg!.senderNickname}: ${IMUtils.parseMsg(info.latestMsg!, isConversation: true)} ";
      }
      
      Logger.print('getContent - 最终结果: $result');
      return result;
    } catch (e, s) {
      Logger.print('getContent error: $e, $s');
    }
    return '[${StrRes.unsupportedMessage}]';
  }

  // 获取消息类型（用于显示图标）
  String? getMessageType(ConversationInfo info) {
    try {
      if (null == info.latestMsg) return null;
      
      Logger.print('检查消息类型: contentType=${info.latestMsg!.contentType}');
      
      // 检查是否是自定义消息类型（通话记录）
      Logger.print('getMessageType - 检查消息: contentType=${info.latestMsg!.contentType}');
      if (info.latestMsg!.contentType == MessageType.custom || info.latestMsg!.contentType == 110) {
        var data = info.latestMsg!.customElem?.data;
        Logger.print('自定义消息数据: $data');
        if (data != null) {
          var map = json.decode(data);
          Logger.print('解析后的数据: $map');
          if (map['customType'] == 901 && map['data'] != null) {
            var callData = map['data'];
            if (callData['type'] == 'audio' || callData['type'] == 'video') {
              Logger.print('找到通话记录消息: ${callData['type']}');
              return callData['type']; // 返回 'audio' 或 'video'
            }
          }
        }
      }
    } catch (e) {
      Logger.print('getMessageType error: $e');
    }
    return null;
  }

  // 获取通话内容文本
  String? getCallDuration(ConversationInfo info) {
    try {
      if (null == info.latestMsg) return null;
      
      if (info.latestMsg!.contentType == MessageType.custom || info.latestMsg!.contentType == 110) {
        var data = info.latestMsg!.customElem?.data;
        if (data != null) {
          var map = json.decode(data);
          if (map['customType'] == 901 && map['data'] != null) {
            var callData = map['data'];
            if (callData['type'] == 'audio' || callData['type'] == 'video') {
              // 尝试多个可能的 content 位置
              String content = callData['content']?.toString() ?? 
                              map['content']?.toString() ?? 
                              '通话记录';
              Logger.print('找到通话内容: $content');
              return content;
            }
          }
        }
      }
    } catch (e) {
      Logger.print('getCallDuration error: $e');
    }
    return null;
  }

  String? getAvatar(ConversationInfo info) {
    return info.faceURL;
  }

  bool isGroupChat(ConversationInfo info) {
    return info.isGroupChat;
  }

  String getShowName(ConversationInfo info) {
    if (info.showName == null || info.showName.isBlank!) {
      return info.userID!;
    }
    return info.showName!;
  }

  String getTime(ConversationInfo info) {
    return IMUtils.getChatTimeline(info.latestMsgSendTime!);
  }

  int getUnreadCount(ConversationInfo info) {
    return info.unreadCount;
  }

  bool existUnreadMsg(ConversationInfo info) {
    return getUnreadCount(info) > 0;
  }

  bool isUserGroup(int index) => list.elementAt(index).isGroupChat;

  String? get imSdkStatus {
    switch (imStatus.value) {
      case IMSdkStatus.syncStart:
      case IMSdkStatus.synchronizing:
      case IMSdkStatus.syncProgress:
        return StrRes.synchronizing;
      case IMSdkStatus.syncFailed:
        return StrRes.syncFailed;
      case IMSdkStatus.connecting:
        return StrRes.connecting;
      case IMSdkStatus.connectionFailed:
        return StrRes.connectionFailed;
      case IMSdkStatus.connectionSucceeded:
      case IMSdkStatus.syncEnded:
        return null;
    }
  }

  bool get isFailedSdkStatus =>
      imStatus.value == IMSdkStatus.connectionFailed || imStatus.value == IMSdkStatus.syncFailed;

  void _sortConversationList() => OpenIM.iMManager.conversationManager.simpleSort(list);

  void onRefresh() async {
    late List<ConversationInfo> list;
    try {
      list = await _request();
      this.list.assignAll(list);

      if (list.isEmpty || list.length < pageSize) {
        refreshController.loadNoData();
      } else {
        refreshController.loadComplete();
      }
    } finally {
      refreshController.refreshCompleted();
    }
  }

  static Future<List<ConversationInfo>> getConversationFirstPage() async {
    final result = await OpenIM.iMManager.conversationManager.getConversationListSplit(offset: 0, count: 400);

    return result;
  }

  void getFirstPage() async {
    final result = homeLogic.conversationsAtFirstPage;

    list.assignAll(result);
    _sortConversationList();
    
    // 初始化用户在线状态
    _initUserOnlineStatus();
  }
  
  // 获取用户是否在线
  bool isUserOnline(ConversationInfo info) {
    if (info.userID == null || info.userID!.isEmpty) return false;
    bool isOnline = userOnlineStatusMap[info.userID] ?? false;
    return isOnline;
  }
  
  // 初始化用户在线状态
  void _initUserOnlineStatus() async {
    final userIDs = list
        .where((conv) => conv.userID != null && conv.userID!.isNotEmpty)
        .map((conv) => conv.userID!)
        .toList();
    
    if (userIDs.isNotEmpty) {
      try {
        // 获取真实的用户在线状态
        final statusList = await OpenIM.iMManager.userManager.getUserStatus(userIDs);
        Logger.print('获取到用户状态列表: ${statusList.length}');
        
        for (var status in statusList) {
          Logger.print('初始化用户状态: userID=${status.userID}, status=${status.status}, platformIDs=${status.platformIDs}');
          
          // 根据实际的属性判断在线状态
          // status: 1=在线, 0=离线
          // platformIDs: 非空数组表示在线的平台
          bool isOnline = status.status == 1 && (status.platformIDs?.isNotEmpty == true);
          
          userOnlineStatusMap[status.userID!] = isOnline;
        }
      } catch (e) {
        Logger.print('获取用户在线状态失败: $e');
        // 如果获取失败，所有用户默认为离线状态
        for (var userID in userIDs) {
          userOnlineStatusMap[userID] = false;
        }
      }
    }
  }

  void clearConversations() {
    list.clear();
  }

  _request() async {
    final temp = <ConversationInfo>[];

    while (true) {
      var result = await OpenIM.iMManager.conversationManager.getConversationListSplit(
        offset: temp.length,
        count: pageSize,
      );
      if (onChangeConversations.isNotEmpty) {
        final bSet = Set.from(onChangeConversations);

        Logger.print('replace conversation: [${onChangeConversations.length}], $bSet');

        for (int i = 0; i < result.length; i++) {
          final info = result[i];

          if (bSet.contains(info)) {
            result[i] = onChangeConversations[onChangeConversations.indexOf(info)];
          }
        }
      }
      temp.addAll(result);

      if (result.length < pageSize) {
        break;
      }
    }
    onChangeConversations.clear();

    return temp;
  }

  bool isValidConversation(ConversationInfo info) {
    return info.isValid;
  }

  static Future<ConversationInfo> _createConversation({
    required String sourceID,
    required int sessionType,
  }) =>
      LoadingView.singleton.wrap(
          asyncFunction: () => OpenIM.iMManager.conversationManager.getOneConversation(
                sourceID: sourceID,
                sessionType: sessionType,
              ));

  Future<bool> _jumpOANtf(ConversationInfo info) async {
    if (info.conversationType == ConversationType.notification) {
      return true;
    }
    return false;
  }

  void toChat({
    bool offUntilHome = true,
    String? userID,
    String? groupID,
    String? nickname,
    String? faceURL,
    int? sessionType,
    ConversationInfo? conversationInfo,
    Message? searchMessage,
  }) async {
    conversationInfo ??= await _createConversation(
      sourceID: userID ?? groupID!,
      sessionType: userID == null ? sessionType! : ConversationType.single,
    );

    if (await _jumpOANtf(conversationInfo)) return;

    await AppNavigator.startChat(
      offUntilHome: offUntilHome,
      draftText: conversationInfo.draftText,
      conversationInfo: conversationInfo,
      searchMessage: searchMessage,
    );

    bool equal(e) => e.conversationID == conversationInfo?.conversationID;

    var groupAtType = list.firstWhereOrNull(equal)?.groupAtType;
    if (groupAtType != GroupAtType.atNormal) {
      OpenIM.iMManager.conversationManager.resetConversationGroupAtType(
        conversationID: conversationInfo.conversationID,
      );
    }
  }

  addFriend() => AppNavigator.startAddContactsBySearch(searchType: SearchType.user);

  createGroup() => AppNavigator.startCreateGroup(defaultCheckedList: [OpenIM.iMManager.userInfo]);

  addGroup() => AppNavigator.startAddContactsBySearch(searchType: SearchType.group);

  void globalSearch() => AppNavigator.startGlobalSearch();
}
