import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:common_utils/common_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_openim_sdk/flutter_openim_sdk.dart';
import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'package:openim_common/openim_common.dart';
import 'package:pull_to_refresh_new/pull_to_refresh.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sprintf/sprintf.dart';
import 'package:toklink/pages/chat/chat_webview_map.dart';
import 'package:toklink/tk_app/core/utils/access_token_helper.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';
import 'package:wechat_camera_picker/wechat_camera_picker.dart';
import 'package:openim_live/openim_live.dart';

import '../../core/controller/app_controller.dart';
import '../../core/controller/im_controller.dart';
import '../../core/im_callback.dart';
import '../../routes/app_navigator.dart';
import '../../routes/app_pages.dart';
import '../../tk_app/core/utils/openim_helper.dart';
import '../../tk_app/pages/tk_guarantee/tk_guarantee_create_order/model/order_models.dart';
import '../contacts/select_contacts/select_contacts_logic.dart';
import '../conversation/conversation_logic.dart';
import 'group_setup/group_member_list/group_member_list_logic.dart';

class ChatLogic extends SuperController {
  final imLogic = Get.find<IMController>();
  final appLogic = Get.find<AppController>();
  final conversationLogic = Get.find<ConversationLogic>();
  final cacheLogic = Get.find<CacheController>();

  final inputCtrl = TextEditingController();
  final focusNode = FocusNode();
  final scrollController = ScrollController();
  final refreshController = RefreshController();
  bool playOnce = false;

  final forceCloseToolbox = PublishSubject<bool>();
  final sendStatusSub = PublishSubject<MsgStreamEv<bool>>();

  late ConversationInfo conversationInfo;
  Message? searchMessage;
  final nickname = ''.obs;
  final faceUrl = ''.obs;
  Timer? _debounce;
  final messageList = <Message>[].obs;
  final tempMessages = <Message>[];
  final scaleFactor = Config.textScaleFactor.obs;
  final background = "".obs;
  final memberUpdateInfoMap = <String, GroupMembersInfo>{};
  final groupMessageReadMembers = <String, List<String>>{};
  final groupMemberRoleLevel = 1.obs;
  GroupInfo? groupInfo;
  GroupMembersInfo? groupMembersInfo;
  List<GroupMembersInfo> ownerAndAdmin = [];

  final isInGroup = true.obs;
  final memberCount = 0.obs;
  final privateMessageList = <Message>[];
  final isInBlacklist = false.obs;


  final _audioPlayer = AudioPlayer();
  final _currentPlayClientMsgID = ''.obs;

  final scrollingCacheMessageList = <Message>[];
  final announcement = ''.obs;
  late StreamSubscription conversationSub;
  late StreamSubscription memberAddSub;
  late StreamSubscription memberDelSub;
  late StreamSubscription joinedGroupAddedSub;
  late StreamSubscription joinedGroupDeletedSub;
  late StreamSubscription memberInfoChangedSub;
  late StreamSubscription groupInfoUpdatedSub;
  late StreamSubscription friendInfoChangedSub;
  StreamSubscription? userStatusChangedSub;
  StreamSubscription? selfInfoUpdatedSub;

  late StreamSubscription connectionSub;
  final syncStatus = IMSdkStatus.syncEnded.obs;
  int? lastMinSeq;

  final showCallingMember = false.obs;

  bool _isReceivedMessageWhenSyncing = false;
  bool _isStartSyncing = false;
  bool _isFirstLoad = true;

  final copyTextMap = <String?, String?>{};
  final revokedTextMessage = <String, String>{};

  String? groupOwnerID;

  final Rxn<Message> quoteMessage = Rxn<Message>();
  
  // @功能相关
  final atUserMap = <String, String>{}.obs; // userID -> nickname 映射
  List<GroupMembersInfo> groupMembersList = [];

  final _pageSize = 40;

  RTCBridge? get rtcBridge => PackageBridge.rtcBridge;

  bool get rtcIsBusy => rtcBridge?.hasConnection == true;

  String? get userID => conversationInfo.userID;

  String? get groupID => conversationInfo.groupID;

  bool get isSingleChat => null != userID && userID!.trim().isNotEmpty;

  bool get isGroupChat => null != groupID && groupID!.trim().isNotEmpty;

  String get memberStr => isSingleChat ? "" : "($memberCount)";

  String? get senderName => isSingleChat ? OpenIM.iMManager.userInfo.nickname : groupMembersInfo?.nickname;

  bool get isAdminOrOwner =>
      groupMemberRoleLevel.value == GroupRoleLevel.admin || groupMemberRoleLevel.value == GroupRoleLevel.owner;

  final directionalUsers = <GroupMembersInfo>[].obs;

  bool isCurrentChat(Message message) {
    var senderId = message.sendID;
    var receiverId = message.recvID;
    var groupId = message.groupID;

    var isCurSingleChat = message.isSingleChat &&
        isSingleChat &&
        (senderId == userID || senderId == OpenIM.iMManager.userID && receiverId == userID);
    var isCurGroupChat = message.isGroupChat && isGroupChat && groupID == groupId;
    return isCurSingleChat || isCurGroupChat;
  }

  void scrollBottom() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      scrollController.jumpTo(0);
    });
  }

  Future<List<Message>> searchMediaMessage() async {
    final messageList = await OpenIM.iMManager.messageManager.searchLocalMessages(
        conversationID: conversationInfo.conversationID,
        messageTypeList: [MessageType.picture, MessageType.video],
        count: 500);
    return messageList.searchResultItems?.first.messageList?.reversed.toList() ?? [];
  }

  @override
  void onReady() {
    _resetGroupAtType();
    _clearUnreadCount();

    scrollController.addListener(() {
      focusNode.unfocus();
    });
    super.onReady();
  }

  @override
  void onInit() {
    var arguments = Get.arguments;
    conversationInfo = arguments['conversationInfo'];
    searchMessage = arguments['searchMessage'];
    nickname.value = conversationInfo.showName ?? '';
    faceUrl.value = conversationInfo.faceURL ?? '';
    _initChatConfig();
    _initPlayListener();
    _setSdkSyncDataListener();

    conversationSub = imLogic.conversationChangedSubject.listen((value) {
      final obj = value.firstWhereOrNull((e) => e.conversationID == conversationInfo.conversationID);

      if (obj != null) {
        conversationInfo = obj;
      }
    });

    imLogic.onRecvNewMessage = (Message message) async {
      if (isCurrentChat(message)) {
        if (message.contentType == MessageType.typing) {
        } else {
          if (!messageList.contains(message) && !scrollingCacheMessageList.contains(message)) {
            _isReceivedMessageWhenSyncing = true;
            if (scrollController.offset != 0) {
              scrollingCacheMessageList.add(message);
            } else {
              messageList.add(message);
              scrollBottom();
            }
          }
        }
      }
    };

    imLogic.onRecvC2CReadReceipt = (List<ReadReceiptInfo> list) {
      try {
        for (var readInfo in list) {
          if (readInfo.userID == userID) {
            for (var e in messageList) {
              if (readInfo.msgIDList?.contains(e.clientMsgID) == true) {
                e.isRead = true;
                e.hasReadTime = _timestamp;
              }
            }
          }
        }
        messageList.refresh();
      } catch (e) {}
    };

    joinedGroupAddedSub = imLogic.joinedGroupAddedSubject.listen((event) {
      if (event.groupID == groupID) {
        isInGroup.value = true;
        _queryGroupInfo();
      }
    });

    joinedGroupDeletedSub = imLogic.joinedGroupDeletedSubject.listen((event) {
      if (event.groupID == groupID) {
        isInGroup.value = false;
        inputCtrl.clear();
      }
    });

    memberAddSub = imLogic.memberAddedSubject.listen((info) {
      var groupId = info.groupID;
      if (groupId == groupID) {
        _putMemberInfo([info]);
      }
    });

    memberDelSub = imLogic.memberDeletedSubject.listen((info) {
      if (info.groupID == groupID && info.userID == OpenIM.iMManager.userID) {
        isInGroup.value = false;
        inputCtrl.clear();
      }
    });

    memberInfoChangedSub = imLogic.memberInfoChangedSubject.listen((info) {
      if (info.groupID == groupID) {
        if (info.userID == OpenIM.iMManager.userID) {
          groupMemberRoleLevel.value = info.roleLevel ?? GroupRoleLevel.member;
          groupMembersInfo = info;
          ();
        }
        _putMemberInfo([info]);

        final index = ownerAndAdmin.indexWhere((element) => element.userID == info.userID);
        if (info.roleLevel == GroupRoleLevel.member) {
          if (index > -1) {
            ownerAndAdmin.removeAt(index);
          }
        } else if (info.roleLevel == GroupRoleLevel.admin || info.roleLevel == GroupRoleLevel.owner) {
          if (index == -1) {
            ownerAndAdmin.add(info);
          } else {
            ownerAndAdmin[index] = info;
          }
        }

        for (var msg in messageList) {
          if (msg.sendID == info.userID) {
            if (msg.isNotificationType) {
              final map = json.decode(msg.notificationElem!.detail!);
              final ntf = GroupNotification.fromJson(map);
              ntf.opUser?.nickname = info.nickname;
              ntf.opUser?.faceURL = info.faceURL;
              msg.notificationElem?.detail = jsonEncode(ntf);
            } else {
              msg.senderFaceUrl = info.faceURL;
              msg.senderNickname = info.nickname;
            }
          }
        }

        messageList.refresh();
      }
    });

    groupInfoUpdatedSub = imLogic.groupInfoUpdatedSubject.listen((value) {
      if (groupID == value.groupID) {
        groupInfo = value;
        nickname.value = value.groupName ?? '';
        faceUrl.value = value.faceURL ?? '';
        memberCount.value = value.memberCount ?? 0;
      }
    });

    friendInfoChangedSub = imLogic.friendInfoChangedSubject.listen((value) {
      if (userID == value.userID) {
        nickname.value = value.getShowName();
        faceUrl.value = value.faceURL ?? '';

        for (var msg in messageList) {
          if (msg.sendID == value.userID) {
            msg.senderFaceUrl = value.faceURL;
            msg.senderNickname = value.nickname;
          }
        }

        messageList.refresh();
      }
    });

    selfInfoUpdatedSub = imLogic.selfInfoUpdatedSubject.listen((value) {
      for (var msg in messageList) {
        if (msg.sendID == value.userID) {
          msg.senderFaceUrl = value.faceURL;
          msg.senderNickname = value.nickname;
        }
      }

      messageList.refresh();
    });

    inputCtrl.addListener(() {
      sendTypingMsg(focus: true);
      if (_debounce?.isActive ?? false) _debounce?.cancel();

      _debounce = Timer(1.seconds, () {
        sendTypingMsg(focus: false);
      });
    });

    focusNode.addListener(() {
      focusNodeChanged(focusNode.hasFocus);
    });

    imLogic.onSignalingMessage = (value) {
      if (value.userID == userID) {
        messageList.add(value.message);
        scrollBottom();
      }
    };

    super.onInit();
  }

  Future chatSetup() => isSingleChat
      ? AppNavigator.startChatSetup(conversationInfo: conversationInfo)
      : AppNavigator.startGroupChatSetup(conversationInfo: conversationInfo);

  void createOrder() {
    AppNavigator.startTkGuaranteeCreateOrder();
  }

  void _putMemberInfo(List<GroupMembersInfo>? list) {
    list?.forEach((member) {
      memberUpdateInfoMap[member.userID!] = member;
    });

    messageList.refresh();
  }

  void sendTextMsg() async {
    var content = IMUtils.safeTrim(inputCtrl.text);
    if (content.isEmpty) return;
    Message message = await OpenIM.iMManager.messageManager.createTextMessage(
      text: content,
    );

    if(quoteMessage.value != null){
      message = await OpenIM.iMManager.messageManager.createQuoteMessage(
        text: content,
        quoteMsg: quoteMessage.value!,
      );
      quoteMessage.value = null;
    } 


    
    
    _sendMessage(message);
  }

  Future sendPicture({required String path, bool sendNow = true}) async {
    final file = await IMUtils.compressImageAndGetFile(File(path));

    var message = await OpenIM.iMManager.messageManager.createImageMessageFromFullPath(
      imagePath: file!.path,
    );

    if (sendNow) {
      return _sendMessage(message);
    } else {
      messageList.add(message);
      tempMessages.add(message);
    }
  }

  sendForwardRemarkMsg(
    String content, {
    String? userId,
    String? groupId,
  }) async {
    final message = await OpenIM.iMManager.messageManager.createTextMessage(
      text: content,
    );
    _sendMessage(message, userId: userId, groupId: groupId);
  }

  sendForwardMsg(
    Message originalMessage, {
    String? userId,
    String? groupId,
  }) async {
    var message = await OpenIM.iMManager.messageManager.createForwardMessage(
      message: originalMessage,
    );
    _sendMessage(message, userId: userId, groupId: groupId);
  }

  void sendTypingMsg({bool focus = false}) async {
    if (isSingleChat) {
      OpenIM.iMManager.conversationManager
          .changeInputStates(conversationID: conversationInfo.conversationID, focus: focus);
    }
  }

  void sendCarte({
    required String userID,
    String? nickname,
    String? faceURL,
  }) async {
    var message = await OpenIM.iMManager.messageManager.createCardMessage(
      userID: userID,
      nickname: nickname!,
      faceURL: faceURL,
    );
    _sendMessage(message);
  }

  void sendCustomMsg({
    required String data,
    required String extension,
    required String description,
  }) async {
    var message = await OpenIM.iMManager.messageManager.createCustomMessage(
      data: data,
      extension: extension,
      description: description,
    );
    _sendMessage(message);
  }

  Future _sendMessage(
    Message message, {
    String? userId,
    String? groupId,
    bool addToUI = true,
  }) {
    log('send : ${json.encode(message)}');
    userId = IMUtils.emptyStrToNull(userId);
    groupId = IMUtils.emptyStrToNull(groupId);
    if (null == userId && null == groupId ||
        userId == userID && userId != null ||
        groupId == groupID && groupId != null) {
      if (addToUI) {
        messageList.add(message);
        scrollBottom();
      }
    }
    Logger.print('uid:$userID userId:$userId gid:$groupID groupId:$groupId');
    _reset(message);
    bool useOuterValue = null != userId || null != groupId;

    final recvUserID = useOuterValue ? userId : userID;
    message.recvID = recvUserID;

    return OpenIM.iMManager.messageManager
        .sendMessage(
          message: message,
          userID: recvUserID,
          groupID: useOuterValue ? groupId : groupID,
          offlinePushInfo: Config.offlinePushInfo,
        )
        .then((value) => _sendSucceeded(message, value))
        .catchError((error, _) => _senFailed(message, groupId, userId, error, _))
        .whenComplete(() => _completed());
  }


  void clearQuote() {
    // 清除引用内容的逻辑
    quoteMessage.value = null;


  }

  /// 发送引用（回复）消息
  Future<void> _sendQuoteMessage(
    Message replyMsg,
    {
      required Message originMsg,
      String? userId,
      String? groupId,
      bool addToUI = true,
    }) async {
    // var content = IMUtils.safeTrim(inputCtrl.text);
    // if (content.isEmpty) return;
     log('send : ${json.encode(replyMsg)}');
      userId = IMUtils.emptyStrToNull(userId);
      groupId = IMUtils.emptyStrToNull(groupId);
      if (null == userId && null == groupId ||
          userId == userID && userId != null ||
          groupId == groupID && groupId != null) {
        if (addToUI) {
          messageList.add(originMsg);
          scrollBottom();
        }
      }
      Logger.print('uid:$userID userId:$userId gid:$groupID groupId:$groupId');
      _reset(replyMsg);
      bool useOuterValue = null != userId || null != groupId;

      final recvUserID = useOuterValue ? userId : userID;
      replyMsg.recvID = recvUserID;

    // // 创建引用消息（回复消息）
    // final replyMsg = await OpenIM.iMManager.messageManager.createQuoteMessage(
    //   text: "这是回复内容",
    //   quoteMsg: originMsg,
    // );
    // 发送引用消息
    await _sendMessage(
      replyMsg,
      userId: userId,
      groupId: groupId,
      addToUI: addToUI,
    );
  }



  void _sendSucceeded(Message oldMsg, Message newMsg) {
    Logger.print('message send success----');
    oldMsg.update(newMsg);
    sendStatusSub.addSafely(MsgStreamEv<bool>(
      id: oldMsg.clientMsgID!,
      value: true,
    ));
  }

  void _senFailed(Message message, String? groupId, String? userId, error, stack) async {
    Logger.print('message send failed userID: $userId groupId:$groupId, catch error :$error  $stack');
    message.status = MessageStatus.failed;
    sendStatusSub.addSafely(MsgStreamEv<bool>(
      id: message.clientMsgID!,
      value: false,
    ));
    if (error is PlatformException) {
      int code = int.tryParse(error.code) ?? 0;
      if (isSingleChat) {
        int? customType;
        if (code == SDKErrorCode.hasBeenBlocked) {
          customType = CustomMessageType.blockedByFriend;
        } else if (code == SDKErrorCode.notFriend) {
          customType = CustomMessageType.deletedByFriend;
        }
        if (null != customType) {
          final hintMessage = (await OpenIM.iMManager.messageManager.createFailedHintMessage(type: customType))
            ..status = 2
            ..isRead = true;
          if (userId != null) {
            if (userId == userID) {
              messageList.add(hintMessage);
            }
          } else {
            messageList.add(hintMessage);
          }
          OpenIM.iMManager.messageManager.insertSingleMessageToLocalStorage(
            message: hintMessage,
            receiverID: userId ?? userID,
            senderID: OpenIM.iMManager.userID,
          );
        }
      } else {
        if ((code == SDKErrorCode.userIsNotInGroup || code == SDKErrorCode.groupDisbanded) && null == groupId) {
          final status = groupInfo?.status;
          final hintMessage = (await OpenIM.iMManager.messageManager.createFailedHintMessage(
              type: status == 2 ? CustomMessageType.groupDisbanded : CustomMessageType.removedFromGroup))
            ..status = 2
            ..isRead = true;
          messageList.add(hintMessage);
          OpenIM.iMManager.messageManager.insertGroupMessageToLocalStorage(
            message: hintMessage,
            groupID: groupID,
            senderID: OpenIM.iMManager.userID,
          );
        }
      }
    }
  }

  void _reset(Message message) {
    if (message.contentType == MessageType.text) {
      inputCtrl.clear();
    }
  }

  void _completed() {
    messageList.refresh();
  }

   void deleteMsg(Message message) async {
    LoadingView.singleton.wrap(asyncFunction: () => _deleteMessage(message));
  }

    _deleteMessage(Message message) async {
    try {
      await OpenIM.iMManager.messageManager
          .deleteMessageFromLocalAndSvr(
        conversationID: conversationInfo.conversationID,
        clientMsgID: message.clientMsgID!,
      )
          .then((value) => privateMessageList.remove(message))
          .then((value) => messageList.remove(message));
    } catch (e) {
      await OpenIM.iMManager.messageManager
          .deleteMessageFromLocalStorage(
        conversationID: conversationInfo.conversationID,
        clientMsgID: message.clientMsgID!,
      )
          .then((value) => privateMessageList.remove(message))
          .then((value) => messageList.remove(message));
    }
  }

    void forward(Message? message) async {
    final result = await AppNavigator.startSelectContacts(
      action: SelAction.forward,
      ex: null != message ? IMUtils.parseMsg(message) : null,
    );
    if (null != result) {
      final checkedList = result['checkedList'];
      for (var info in checkedList) {
        final userID = IMUtils.convertCheckedToUserID(info);
        final groupID = IMUtils.convertCheckedToGroupID(info);

        if (null != message) {
          sendForwardMsg(message, userId: userID, groupId: groupID);
        }
      }
    }
  }

  void markMessageAsRead(Message message, bool visible) async {
    Logger.print('markMessageAsRead: ${message.textElem?.content}, $visible');
    if (visible && message.contentType! < 1000 && message.contentType! != MessageType.voice) {
      var data = IMUtils.parseCustomMessage(message);
      if (null != data && data['viewType'] == CustomMessageType.call) {
        Logger.print('markMessageAsRead: call message $data');
        return;
      }
      _markMessageAsRead(message);
    }
  }

  _markMessageAsRead(Message message) async {
    if (!message.isRead! && message.sendID != OpenIM.iMManager.userID) {
      try {
        Logger.print('mark conversation message as read：${message.clientMsgID!} ${message.isRead}');
        await OpenIM.iMManager.conversationManager
            .markConversationMessageAsRead(conversationID: conversationInfo.conversationID);
      } catch (e) {
        Logger.print('failed to send group message read receipt： ${message.clientMsgID} ${message.isRead}');
      } finally {
        message.isRead = true;
        message.hasReadTime = _timestamp;
        messageList.refresh();
      }
    }
  }

  _clearUnreadCount() {
    if (conversationInfo.unreadCount > 0) {
      OpenIM.iMManager.conversationManager
          .markConversationMessageAsRead(conversationID: conversationInfo.conversationID);
    }
  }

  void closeToolbox() {
    forceCloseToolbox.addSafely(true);
  }

  void onTapAlbum() async {
    final List<AssetEntity>? assets = await AssetPicker.pickAssets(Get.context!,
        pickerConfig: AssetPickerConfig(
            sortPathsByModifiedDate: true,
            filterOptions: PMFilter.defaultValue(containsPathModified: true),
            selectPredicate: (_, entity, isSelected) async {
              if (entity.type == AssetType.image) {
                if (await allowSendImageType(entity)) {
                  return true;
                }

                IMViews.showToast(StrRes.supportsTypeHint);

                return false;
              }

              if (entity.videoDuration > const Duration(seconds: 5 * 60)) {
                IMViews.showToast(
                    sprintf(StrRes.selectVideoLimit, [5]) + StrRes.minute);
                return false;
              }
              return true;
            }));
    if (null != assets) {
      for (var asset in assets) {
        await _handleAssets(asset, sendNow: false);
      }

      for (var msg in tempMessages) {
        await _sendMessage(msg, addToUI: false);
      }

      tempMessages.clear();
    }
  }

  void onTapCamera() async {
    final AssetEntity? entity = await CameraPicker.pickFromCamera(
      Get.context!,
      locale: Get.locale,
      pickerConfig: CameraPickerConfig(
        enableRecording: true,
        maximumRecordingDuration: 60.seconds,
        onMinimumRecordDurationNotMet: () {
          IMViews.showToast(StrRes.tapTooShort);
        },
      ),
    );
    _handleAssets(entity);
  }

  void onTapLocation() async {
    final location = await Get.to(
      const ChatWebViewMap(host: Config.locationHost, webKey: Config.webKey, webServerKey: Config.webServerKey),
      transition: Transition.cupertino,
      popGesture: true,
    );
    if (null != location) {
      Logger.print(location);
      sendLocation(location: location);
    }
  }

  void onTapRedPacket() {
    AppNavigator.startRedPacket();
  }

 

  void sendLocation({
    required dynamic location,
  }) async {
    final message = await OpenIM.iMManager.messageManager.createLocationMessage(
      latitude: location['latitude'],
      longitude: location['longitude'],
      description: location['description'],
    );
    _sendMessage(message);
  }

  void sendVoice(int duration, String path) async {
    var message = await OpenIM.iMManager.messageManager.createSoundMessageFromFullPath(
      soundPath: path,
      duration: duration,
    );
    _sendMessage(message);
  }

  void favoriteManage() => AppNavigator.favoriteManage();

  void sendFavoritePic(int index, String url) async {
    final emoji = cacheLogic.favoriteList.elementAt(index);
    final message = await OpenIM.iMManager.messageManager.createFaceMessage(
      data: json.encode({'url': emoji.url, 'width': emoji.width, 'height': emoji.height}),
    );
    _sendMessage(message);
  }

  Future<bool> allowSendImageType(AssetEntity entity) async {
    final mimeType = await entity.mimeTypeAsync;

    return IMUtils.allowImageType(mimeType);
  }

  Future _handleAssets(AssetEntity? asset, {bool sendNow = true}) async {
    if (null != asset) {
      Logger.print('--------assets type-----${asset.type} create time: ${asset.createDateTime}');
      final originalFile = await asset.file;
      final originalPath = originalFile!.path;
      var path = originalPath.toLowerCase().endsWith('.gif') ? originalPath : originalFile.path;
      Logger.print('--------assets path-----$path');
      switch (asset.type) {
        case AssetType.image:
          await sendPicture(path: path, sendNow: sendNow);
          break;
        default:
          break;
      }
      if (Platform.isIOS) {
        originalFile.deleteSync();
      }
    }
  }

  void onTapDirectionalMessage() async {
    if (null != groupInfo) {
      final list = await AppNavigator.startGroupMemberList(
        groupInfo: groupInfo!,
        opType: GroupMemberOpType.call,
      );
      if (list is List<GroupMembersInfo>) {
        directionalUsers.assignAll(list);
      }
    }
  }

  TextSpan? directionalText() {
    if (directionalUsers.isNotEmpty) {
      final temp = <TextSpan>[];

      for (var e in directionalUsers) {
        final r = TextSpan(
          text: '${e.nickname ?? ''} ${directionalUsers.last == e ? '' : ','} ',
          style: Styles.ts_0089FF_14sp,
        );

        temp.add(r);
      }

      return TextSpan(
        text: '${StrRes.directedTo}:',
        style: Styles.ts_8E9AB0_14sp,
        children: temp,
      );
    }

    return null;
  }

  void onClearDirectional() {
    directionalUsers.clear();
  }

  void parseClickEvent(Message msg) async {
    log('parseClickEvent:${jsonEncode(msg)}');
    if (msg.contentType == MessageType.custom) {
      var data = msg.customElem!.data;
      var map = json.decode(data!);
      var customType = map['customType'];
      if (CustomMessageType.call == customType && !isInBlacklist.value) {} 
      else if (CustomMessageType.tag == customType) {
        final data = map['data'];
        if (null != data['soundElem']) {
          final soundElem = SoundElem.fromJson(data['soundElem']);
          msg.soundElem = soundElem;
          _playVoiceMessage(msg);
        }
      }

      return;
    } 

     if (msg.contentType == MessageType.voice) {
      _playVoiceMessage(msg);
      // _markMessageAsRead(msg);
      return;
    }

    IMUtils.parseClickEvent(
      msg,
      onViewUserInfo: (userInfo) {
        viewUserInfo(userInfo, isCard: msg.isCardType);
      },
    );
  }

  void onTapVoiceInput() {
   
  }

  void onTapLeftAvatar(Message message) {
    viewUserInfo(UserInfo()
      ..userID = message.sendID
      ..nickname = message.senderNickname
      ..faceURL = message.senderFaceUrl);
  }

  /// 长按左侧头像，触发@某人功能
  void onLongPressLeftAvatar(Message message) {
    if (!isGroupChat) {
      // 单聊不支持@功能
      return;
    }
    
    // 获取发送者信息
    final senderID = message.sendID;
    final senderNickname = message.senderNickname;
    
    if (senderID == OpenIM.iMManager.userID) {
      // 不能@自己
      IMViews.showToast('不能@自己');
      return;
    }
    
    // 查找群成员信息
    final member = groupMembersList.firstWhereOrNull(
      (m) => m.userID == senderID,
    );
    
    if (member != null) {
      // 直接插入@文本
      _insertAtText(member);
      
      // 显示提示
      IMViews.showToast('已@${member.nickname ?? member.userID}');
    } else {
      // 如果找不到成员信息，尝试从消息中获取
      final userInfo = UserInfo(
        userID: senderID,
        nickname: senderNickname,
        faceURL: message.senderFaceUrl,
      );
      
      // 创建临时的群成员信息
      final tempMember = GroupMembersInfo(
        groupID: groupID,
        userID: senderID,
        nickname: senderNickname,
        faceURL: message.senderFaceUrl,
        roleLevel: GroupRoleLevel.member,
      );
      
      _insertAtText(tempMember);
      IMViews.showToast('已@${senderNickname ?? senderID}');
    }
  }

  void onTapRightAvatar() {
    viewUserInfo(OpenIM.iMManager.userInfo);
  }

  void viewUserInfo(UserInfo userInfo, {bool isCard = false}) {
    if (isGroupChat && !isAdminOrOwner && !isCard) {
      if (groupInfo!.lookMemberInfo != 1) {
        AppNavigator.startUserProfilePane(
          userID: userInfo.userID!,
          nickname: userInfo.nickname,
          faceURL: userInfo.faceURL,
          groupID: groupID,
          offAllWhenDelFriend: isSingleChat,
        );
      }
    } else {
      AppNavigator.startUserProfilePane(
        userID: userInfo.userID!,
        nickname: userInfo.nickname,
        faceURL: userInfo.faceURL,
        groupID: groupID,
        offAllWhenDelFriend: isSingleChat,
        forceCanAdd: isCard,
      );
    }
  }

  void clickLinkText(url, type) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  exit() async {
    Get.back();

    return true;
  }

  void focusNodeChanged(bool hasFocus) {
    if (hasFocus) {
      Logger.print('focus:$hasFocus');
      scrollBottom();
    }
  }

   void copy(Message message) {
    final content = copyTextMap[message.clientMsgID] ?? message.textElem?.content;

    if (null != content) {
      IMUtils.copy(text: content.replaceAll('\u200B', ''));
    }
  }

  Message indexOfMessage(int index, {bool calculate = true}) => IMUtils.calChatTimeInterval(
        messageList,
        calculate: calculate,
      ).reversed.elementAt(index);

  ValueKey itemKey(Message message) => ValueKey(message.clientMsgID!);

  @override
  void onClose() {
    sendTypingMsg();
    _clearUnreadCount();
    inputCtrl.dispose();
    focusNode.dispose();
    forceCloseToolbox.close();
    conversationSub.cancel();
    sendStatusSub.close();
    memberAddSub.cancel();
    memberDelSub.cancel();
    memberInfoChangedSub.cancel();
    groupInfoUpdatedSub.cancel();
    friendInfoChangedSub.cancel();
    userStatusChangedSub?.cancel();
    selfInfoUpdatedSub?.cancel();
    joinedGroupAddedSub.cancel();
    joinedGroupDeletedSub.cancel();
    connectionSub.cancel();

    _debounce?.cancel();
    super.onClose();
  }

  String? getShowTime(Message message) {
    if (message.exMap['showTime'] == true) {
      return IMUtils.getChatTimeline(message.sendTime!);
    }
    return null;
  }

  void clearAllMessage() {
    messageList.clear();
  }

  void _initChatConfig() async {
    scaleFactor.value = DataSp.getChatFontSizeFactor();
    var path = DataSp.getChatBackground(otherId) ?? '';
    if (path.isNotEmpty && (await File(path).exists())) {
      background.value = path;
    }
  }

  String get otherId => isSingleChat ? userID! : groupID!;

  void failedResend(Message message) {
    Logger.print('failedResend: ${message.clientMsgID}');
    if (message.status == MessageStatus.sending) {
      return;
    }
    sendStatusSub.addSafely(MsgStreamEv<bool>(
      id: message.clientMsgID!,
      value: true,
    ));

    Logger.print('failedResending: ${message.clientMsgID}');
    _sendMessage(message..status = MessageStatus.sending, addToUI: false);
  }

  static int get _timestamp => DateTime.now().millisecondsSinceEpoch;

  void destroyMsg() {
    for (var message in privateMessageList) {
      OpenIM.iMManager.messageManager.deleteMessageFromLocalAndSvr(
        conversationID: conversationInfo.conversationID,
        clientMsgID: message.clientMsgID!,
      );
    }
  }

  Future _queryMyGroupMemberInfo() async {
    if (!isGroupChat) {
      return;
    }
    var list = await OpenIM.iMManager.groupManager.getGroupMembersInfo(
      groupID: groupID!,
      userIDList: [OpenIM.iMManager.userID],
    );
    groupMembersInfo = list.firstOrNull;
    groupMemberRoleLevel.value = groupMembersInfo?.roleLevel ?? GroupRoleLevel.member;
    if (null != groupMembersInfo) {
      memberUpdateInfoMap[OpenIM.iMManager.userID] = groupMembersInfo!;
    }

    return;
  }

  Future _queryOwnerAndAdmin() async {
    if (isGroupChat) {
      ownerAndAdmin = await OpenIM.iMManager.groupManager.getGroupMemberList(groupID: groupID!, filter: 5, count: 20);
    }
    return;
  }

  void _isJoinedGroup() async {
    if (!isGroupChat) {
      return;
    }
    isInGroup.value = await OpenIM.iMManager.groupManager.isJoinedGroup(
      groupID: groupID!,
    );
    if (!isInGroup.value) {
      return;
    }
    _queryGroupInfo();
    _queryOwnerAndAdmin();
  }

  void _queryGroupInfo() async {
    if (!isGroupChat) {
      return;
    }
    var list = await OpenIM.iMManager.groupManager.getGroupsInfo(
      groupIDList: [groupID!],
    );
    groupInfo = list.firstOrNull;
    groupOwnerID = groupInfo?.ownerUserID;
    if (null != groupInfo?.memberCount) {
      memberCount.value = groupInfo!.memberCount!;
    }
    _queryMyGroupMemberInfo();
  }

  bool get havePermissionMute =>
      isGroupChat &&
      (groupInfo?.ownerUserID == OpenIM.iMManager.userID /*||
          groupMembersInfo?.roleLevel == 2*/
      );

  bool isNotificationType(Message message) => message.contentType! >= 1000;

  Map<String, String> getAtMapping(Message message) {
    // 返回当前群聊的用户映射，用于显示消息中的@文本
    return isGroupChat ? atUserMap : {};
  }

  void _checkInBlacklist() async {
    if (userID != null) {
      var list = await OpenIM.iMManager.friendshipManager.getBlacklist();
      var user = list.firstWhereOrNull((e) => e.userID == userID);
      isInBlacklist.value = user != null;
    }
  }

  bool isExceed24H(Message message) {
    int milliseconds = message.sendTime!;
    return !DateUtil.isToday(milliseconds);
  }

   bool isPlaySound(Message message) {
    return _currentPlayClientMsgID.value == message.clientMsgID!;
  }

    void _initPlayListener() {
    _audioPlayer.playerStateStream.listen((state) {
      switch (state.processingState) {
        case ProcessingState.idle:
        case ProcessingState.loading:
        case ProcessingState.buffering:
        case ProcessingState.ready:
          break;
        case ProcessingState.completed:
          _currentPlayClientMsgID.value = '';
          break;
      }
    });
  }

  void _playVoiceMessage(Message message) async {
    final isClickSame = _currentPlayClientMsgID.value == message.clientMsgID;
    if (_audioPlayer.playerState.playing) {
      _currentPlayClientMsgID.value = '';
      await _audioPlayer.stop();
    }
    if (!isClickSame) {
      final bool isValid = await _initVoiceSource(message);
      if (isValid) {
        _audioPlayer.setVolume(rtcIsBusy ? 0 : 1.0);
        await _audioPlayer.seek(Duration.zero);
        await _audioPlayer.play();
        _currentPlayClientMsgID.value = message.clientMsgID!;
      }
    }
  }

  void stopVoice() {
    if (_audioPlayer.playerState.playing) {
      _currentPlayClientMsgID.value = '';
      _audioPlayer.stop();
    }
  }

  Future<bool> _initVoiceSource(Message message) async {
    final bool isReceived = message.sendID != OpenIM.iMManager.userID;
    final String? path = message.soundElem?.soundPath;
    final String? url = message.soundElem?.sourceUrl;
    bool isExistSource = false;
    if (isReceived) {
      if (null != url && url.trim().isNotEmpty) {
        isExistSource = true;
        await _audioPlayer.setUrl(url);
      }
    } else {
      bool existFile = false;
      if (path != null && path.trim().isNotEmpty) {
        var file = File(path);
        existFile = await file.exists();
      }
      if (existFile) {
        isExistSource = true;
        await _audioPlayer.setFilePath(path!);
      } else if (null != url && url.trim().isNotEmpty) {
        isExistSource = true;
        await _audioPlayer.setUrl(url);
      }
    }
    return isExistSource;
  }

  String? getNewestNickname(Message message) {
    if (isSingleChat) null;

    return message.senderNickname;
  }

  String? getNewestFaceURL(Message message) {
    return message.senderFaceUrl;
  }

  bool get isInvalidGroup => !isInGroup.value && isGroupChat;

  void _resetGroupAtType() {
    if (conversationInfo.groupAtType != GroupAtType.atNormal) {
      OpenIM.iMManager.conversationManager.resetConversationGroupAtType(
        conversationID: conversationInfo.conversationID,
      );
    }
  }

  void revokeMsgV2(Message message) async {
    late bool canRevoke;
    if (isGroupChat) {
      if (message.sendID == OpenIM.iMManager.userID) {
        canRevoke = true;
      } else {
        final list = await LoadingView.singleton
            .wrap(asyncFunction: () => OpenIM.iMManager.groupManager.getGroupOwnerAndAdmin(groupID: groupID!));
        final sender = list.firstWhereOrNull((e) => e.userID == message.sendID);
        final revoker = list.firstWhereOrNull((e) => e.userID == OpenIM.iMManager.userID);

        if (revoker != null && sender == null) {
          canRevoke = true;
        } else if (revoker == null && sender != null) {
          canRevoke = false;
        } else if (revoker != null && sender != null) {
          if (revoker.roleLevel == sender.roleLevel) {
            canRevoke = false;
          } else if (revoker.roleLevel == GroupRoleLevel.owner) {
            canRevoke = true;
          } else {
            canRevoke = false;
          }
        } else {
          canRevoke = false;
        }
      }
    } else {
      if (message.sendID == OpenIM.iMManager.userID) {
        canRevoke = true;
      }
    }
    if (canRevoke) {
      try {
        await LoadingView.singleton.wrap(
          asyncFunction: () => OpenIM.iMManager.messageManager.revokeMessage(
            conversationID: conversationInfo.conversationID,
            clientMsgID: message.clientMsgID!,
          ),
        );
        message.contentType = MessageType.revokeMessageNotification;
        message.notificationElem = NotificationElem(detail: jsonEncode(_buildRevokeInfo(message)));
        messageList.refresh();
      } catch (e) {
        IMViews.showToast(e.toString());
      }
    } else {
      IMViews.showToast('no permission');
    }
  }

  Future<void> onQuoteMessage(
    Message originMsg,
  ) async {
    quoteMessage.value = originMsg;
    
      
    Logger.print('quoteMessage: ${jsonEncode(quoteMessage)}');
    
  }

  RevokedInfo _buildRevokeInfo(Message message) {
    return RevokedInfo.fromJson({
      'revokerID': OpenIM.iMManager.userInfo.userID,
      'revokerRole': 0,
      'revokerNickname': OpenIM.iMManager.userInfo.nickname,
      'clientMsgID': message.clientMsgID,
      'revokeTime': 0,
      'sourceMessageSendTime': 0,
      'sourceMessageSendID': message.sendID,
      'sourceMessageSenderNickname': message.senderNickname,
      'sessionType': message.sessionType,
    });
  }

  bool showCopyMenu(Message message) {
    return message.isTextType;
  }

  bool showDelMenu(Message message) {
    return true;
  }

  bool showForwardMenu(Message message) {
    if (message.status != MessageStatus.succeeded) {
      return false;
    }
    if (message.isNotificationType) {
      return false;
    }
    return true;
  }

  bool showReplyMenu(Message message) {
    if (message.status != MessageStatus.succeeded) {
      return false;
    }
    return message.isTextType ||
        message.isVideoType ||
        message.isPictureType ||
        message.isLocationType ||
        message.isFileType ||
        message.isCardType ||
        message.isCustomFaceType;
  }

  bool showRevokeMenu(Message message) {
    if (message.status != MessageStatus.succeeded ||
        message.isNotificationType ||
        isExceed24H(message) && isSingleChat) {
      return false;
    }
    if (isGroupChat) {
      if (groupMemberRoleLevel.value == GroupRoleLevel.owner ||
          (groupMemberRoleLevel.value == GroupRoleLevel.admin &&
              ownerAndAdmin.firstWhereOrNull((element) => element.userID == message.sendID) == null)) {
        return true;
      }
    }
    if (message.sendID == OpenIM.iMManager.userID) {
      if (DateTime.now().millisecondsSinceEpoch - (message.sendTime ??= 0) < (1000 * 60 * 5)) {
        return true;
      }
    }
    return false;
  }

  WillPopCallback? willPop() {
    return null;
  }

  void call() {
    if (rtcIsBusy) {
      IMViews.showToast(StrRes.callingBusy);
      return;
    }

    IMViews.openIMCallSheet(nickname.value, (index) {
      imLogic.call(
        callObj: CallObj.single,
        callType: index == 0 ? CallType.audio : CallType.video,
        inviteeUserIDList: [if (isSingleChat) userID!],
      );
    });
  }

  Future<List<String>> selectContactsFromGroupMember() async {
    final result = await AppNavigator.startSelectContactsFromGroupMember(groupInfo!.groupID);

    // result 可能是 List<GroupMembersInfo> 或 List<dynamic>
    final members = (result as List?)?.cast<GroupMembersInfo>() ?? [];

    final userIdList = members
        .map((m) => m.userID)
        .where((id) => id != null && id.isNotEmpty && id != OpenIM.iMManager.userID)
        .map((id) => id!)
        .toList();

    return userIdList;
  }

  Future<void> groupCall() async {
    if (rtcIsBusy) {
      IMViews.showToast(StrRes.callingBusy);
      return;
    }

    // get roomID
    String roomID = groupInfo!.groupID;

    // get inviterUserID
    String inviterUserID = OpenIM.iMManager.userID;

    //get groupID
    String groupID = groupInfo!.groupID;



    // _getGroupMembers().then((members) {
    //   groupMembersList = members;
    //   atUserMap.clear();
    //   final userIdList = groupMembersList
    //     .map((m) => m.userID)
    //     .where((id) => id != null && id.isNotEmpty && id != OpenIM.iMManager.userID )
    //     .toList();
    // });

    IMViews.openIMCallSheet(nickname.value, (index) async {
      // final selectedMembers = groupMembersList
      //   .where((element) => element.userID != OpenIM.iMManager.userID)
      //   .map((element) => element.userID!)
      //   .toList();


      final selectedMembers = await selectContactsFromGroupMember();

      if (selectedMembers.isEmpty) {
        IMViews.showToast(StrRes.pleaseSelectCallUser);
        return;
      }

      //创建SignalingInfo
      final signal = SignalingInfo(
        userID: inviterUserID,
        invitation: InvitationInfo(
          inviterUserID: inviterUserID,
          inviteeUserIDList: selectedMembers,
          roomID:  groupID,
          timeout: 30,
          mediaType: index == 0 ? 'audio' : 'video',
          sessionType: 3,
          platformID: IMUtils.getPlatform(),
          groupID: groupID,
        ),
      );


      // sendGroupNotification(
      //   groupID,
      //   "群通知",
      // );
      
      // 获取 SignalingCertificate? credentials,
      SignalingCertificate credentials = await imLogic.onDialGroupPartial(signal, selectedMembers);

      imLogic.call(
        callObj: CallObj.group,
        roomID: roomID,
        inviterUserID: inviterUserID,
        groupID: groupID,
        callType: index == 0 ? CallType.audio : CallType.video,
        inviteeUserIDList: selectedMembers,
        credentials: credentials,
        signal: signal,
        groupMembersList: groupMembersList,
      );
    });
  }


  // Future<void> sendGroupNotification(String groupID, String text) async {
  //   final message = await OpenIM.iMManager.messageManager.createCustomMessage(
  //     data: jsonEncode({
  //       'customType': 'groupNotification',
  //       'data': {'text': text},
  //     }),
  //     extension: '',
  //     description: '群通知',
  //   );
  //   await OpenIM.iMManager.messageManager.sendMessage(
  //     message: message,
  //     offlinePushInfo: OfflinePushInfo(),
  //     groupID: groupID,
  //     isOnlineOnly: true,
  //   );
  // }


  Future<List<GroupMembersInfo>> _getGroupMembers() {
    final result = OpenIM.iMManager.groupManager.getGroupMemberList(
      groupID: groupInfo!.groupID,
      count: 1000,
      offset: 0,
      filter:  0,
    );

    return result;
  }






  void onScrollToTop() {
    if (scrollingCacheMessageList.isNotEmpty) {
      messageList.addAll(scrollingCacheMessageList);
      scrollingCacheMessageList.clear();
    }
  }

  String get markText {
    String? phoneNumber = imLogic.userInfo.value.phoneNumber;
    if (phoneNumber != null) {
      int start = phoneNumber.length > 4 ? phoneNumber.length - 4 : 0;
      final sub = phoneNumber.substring(start);
      return "${OpenIM.iMManager.userInfo.nickname!}$sub";
    }
    return OpenIM.iMManager.userInfo.nickname ?? '';
  }

  bool isFailedHintMessage(Message message) {
    if (message.contentType == MessageType.custom) {
      var data = message.customElem!.data;
      var map = json.decode(data!);
      var customType = map['customType'];
      return customType == CustomMessageType.deletedByFriend || customType == CustomMessageType.blockedByFriend;
    }
    return false;
  }

  void sendFriendVerification() => AppNavigator.startSendVerificationApplication(userID: userID);

  void _setSdkSyncDataListener() {
    connectionSub = imLogic.imSdkStatusPublishSubject.listen((value) {
      syncStatus.value = value.status;
      if (value.status == IMSdkStatus.syncStart) {
        _isStartSyncing = true;
      } else if (value.status == IMSdkStatus.syncEnded) {
        if (/*_isReceivedMessageWhenSyncing &&*/ _isStartSyncing) {
          _isReceivedMessageWhenSyncing = false;
          _isStartSyncing = false;
          _isFirstLoad = true;
          _loadHistoryForSyncEnd();
        }
      } else if (value.status == IMSdkStatus.syncFailed) {
        _isReceivedMessageWhenSyncing = false;
        _isStartSyncing = false;
      }
    });
  }

  bool get isSyncFailed => syncStatus.value == IMSdkStatus.syncFailed;

  String? get syncStatusStr {
    switch (syncStatus.value) {
      case IMSdkStatus.syncStart:
      case IMSdkStatus.synchronizing:
        return StrRes.synchronizing;
      case IMSdkStatus.syncFailed:
        return StrRes.syncFailed;
      default:
        return null;
    }
  }

  bool showBubbleBg(Message message) {
    return !isNotificationType(message) && !isFailedHintMessage(message);
  }

    bool isRevokeMessage(Message message) {
    return message.contentType == MessageType.revokeMessageNotification;
  }

  void markRevokedMessage(Message message) {
    if (message.contentType == MessageType.text) {
      revokedTextMessage[message.clientMsgID!] = jsonEncode(message);
    }
  }

  Future<AdvancedMessage> _fetchHistoryMessages() {
    Logger.print(
        '_fetchHistoryMessages: is first load: $_isFirstLoad, last client id: ${_isFirstLoad ? null : messageList.firstOrNull?.clientMsgID}');
    return OpenIM.iMManager.messageManager.getAdvancedHistoryMessageList(
      conversationID: conversationInfo.conversationID,
      count: _pageSize,
      startMsg: _isFirstLoad ? null : messageList.firstOrNull,
    );
  }

  Future<bool> onScrollToBottomLoad() async {
    late List<Message> list;
    final result = await _fetchHistoryMessages();
    if (result.messageList == null || result.messageList!.isEmpty) {
      _getGroupInfoAfterLoadMessage();

      return false;
    }
    list = result.messageList!;
    if (_isFirstLoad) {
      _isFirstLoad = false;
      // remove the message that has been timed down
      messageList.assignAll(list);
      scrollBottom();

      _getGroupInfoAfterLoadMessage();
    } else {
      messageList.insertAll(0, list);
    }

    return result.isEnd != true;
  }

  Future<void> _loadHistoryForSyncEnd() async {
    final result = await OpenIM.iMManager.messageManager.getAdvancedHistoryMessageList(
      conversationID: conversationInfo.conversationID,
      count: messageList.length < _pageSize ? _pageSize : messageList.length,
      startMsg: null,
    );
    if (result.messageList == null || result.messageList!.isEmpty) return;
    final list = result.messageList!;

    final offset = scrollController.offset;
    messageList.assignAll(list);
    scrollController.jumpTo(offset);
  }

  void _getGroupInfoAfterLoadMessage() {
    if (isGroupChat && ownerAndAdmin.isEmpty) {
      _isJoinedGroup();
    } else {
      _checkInBlacklist();
    }
    // 加载群成员信息以支持@功能
    if (isGroupChat && groupMembersList.isEmpty) {
      _loadGroupMembers();
    }
  }

  recommendFriendCarte(UserInfo userInfo) async {
    final result = await AppNavigator.startSelectContacts(
      action: SelAction.recommend,
      ex: '[${StrRes.carte}]${userInfo.nickname}',
    );
    if (null != result) {
      final customEx = result['customEx'];
      final checkedList = result['checkedList'];
      for (var info in checkedList) {
        final userID = IMUtils.convertCheckedToUserID(info);
        final groupID = IMUtils.convertCheckedToGroupID(info);
        if (customEx is String && customEx.isNotEmpty) {
          _sendMessage(
            await OpenIM.iMManager.messageManager.createTextMessage(
              text: customEx,
            ),
            userId: userID,
            groupId: groupID,
          );
        }
        _sendMessage(
          await OpenIM.iMManager.messageManager.createCardMessage(
            userID: userInfo.userID!,
            nickname: userInfo.nickname!,
            faceURL: userInfo.faceURL,
          ),
          userId: userID,
          groupId: groupID,
        );
      }
    }
  }

  @override
  void onDetached() {}

  @override
  void onHidden() {}

  @override
  void onInactive() {}

  @override
  void onPaused() {}

  @override
  void onResumed() {
    _loadHistoryForSyncEnd();
  }

  /// 加载群成员列表
  Future<void> _loadGroupMembers() async {
    if (!isGroupChat) return;
    
    try {
      final members = await OpenIM.iMManager.groupManager.getGroupMemberList(
        groupID: groupID!,
        filter: 0,
        offset: 0,
        count: 1000, // 获取所有成员
      );
      
      groupMembersList = members;
      
      // 构建 userID -> nickname 映射
      final Map<String, String> userMap = {};
      for (final member in members) {
        if (member.userID != null) {
          userMap[member.userID!] = member.nickname ?? member.userID!;
        }
      }
      atUserMap.assignAll(userMap);
      
    } catch (e) {
      Logger.print('加载群成员失败: $e');
    }
  }

  /// 处理@输入
  Future<void> handleAtInput(String text) async {
    Logger.print('handleAtInput 被调用: text=$text, isGroupChat=$isGroupChat, groupMembersList.length=${groupMembersList.length}');
    
    if (!isGroupChat || groupMembersList.isEmpty) {
      Logger.print('无法处理@输入: isGroupChat=$isGroupChat, groupMembersList.isEmpty=${groupMembersList.isEmpty}');
      IMViews.showToast('暂无群成员信息');
      return;
    }

    // 显示群成员选择器
    final selectedMember = await AtMemberHelper.showMemberSelector(
      Get.context!,
      groupMembers: groupMembersList.where((member) => 
        member.userID != OpenIM.iMManager.userID // 排除自己
      ).toList(),
      searchHint: '搜索要@的成员',
    );

    if (selectedMember != null) {
      _insertAtText(selectedMember);
    }
  }

  /// 插入@文本到输入框
  void _insertAtText(GroupMembersInfo member) {
    final currentText = inputCtrl.text;
    final cursorPosition = inputCtrl.selection.baseOffset;
    final nickname = member.nickname ?? member.userID ?? '';
    
    // 如果当前文本为空或者光标在开头，直接添加@文本
    if (currentText.isEmpty || cursorPosition == 0) {
      final atText = '@$nickname ';
      inputCtrl.text = atText + currentText;
      inputCtrl.selection = TextSelection.fromPosition(
        TextPosition(offset: atText.length),
      );
    } else {
      // 检查光标前是否有@符号
      int atPosition = cursorPosition - 1;
      while (atPosition >= 0 && currentText[atPosition] != '@') {
        atPosition--;
      }
      
      if (atPosition >= 0) {
        // 替换@符号后的内容
        final beforeAt = currentText.substring(0, atPosition);
        final afterCursor = currentText.substring(cursorPosition);
        final atText = '@$nickname ';
        
        final newText = beforeAt + atText + afterCursor;
        final newCursorPosition = beforeAt.length + atText.length;
        
        inputCtrl.text = newText;
        inputCtrl.selection = TextSelection.fromPosition(
          TextPosition(offset: newCursorPosition),
        );
      } else {
        // 没有找到@符号，在当前位置插入@文本
        final beforeCursor = currentText.substring(0, cursorPosition);
        final afterCursor = currentText.substring(cursorPosition);
        final atText = '@$nickname ';
        
        final newText = beforeCursor + atText + afterCursor;
        final newCursorPosition = beforeCursor.length + atText.length;
        
        inputCtrl.text = newText;
        inputCtrl.selection = TextSelection.fromPosition(
          TextPosition(offset: newCursorPosition),
        );
      }
    }
    
    // 更新映射关系
    atUserMap[member.userID!] = nickname;
    
    // 聚焦到输入框
    focusNode.requestFocus();
  }

  /// 处理点击@文本
  void handleAtTap(String username) {
    // 可以实现点击@文本查看用户信息等功能
    Logger.print('点击了@文本: $username');
    
    // 查找对应的userID
    String? userID;
    for (final entry in atUserMap.entries) {
      if (entry.value == username) {
        userID = entry.key;
        break;
      }
    }
    
    if (userID != null) {
      // 可以打开用户信息页面
      final member = groupMembersList.firstWhereOrNull(
        (m) => m.userID == userID,
      );
      if (member != null) {
        final userInfo = UserInfo(
          userID: member.userID!,
          nickname: member.nickname,
          faceURL: member.faceURL,
        );
        viewUserInfo(userInfo);
      }
    }
  }

  /// 处理商品分享卡片点击
  Future<void> handleProductShareCardTap(Message message) async {
    // Logger.print('🛍️ 商品分享卡片被点击');
    // Logger.print('📱 消息ID: ${message.clientMsgID}');
    // Logger.print('📝 消息内容: ${message.customElem?.data}');
    //
    try {
      final data = IMUtils.parseCustomMessage(message);
      if (data != null) {
        Logger.print('🔍 解析后的商品数据: $data');
        Logger.print('📦 商品名称: ${data['productName']}');
        Logger.print('💰 商品价格: ${data['price']}');
        Logger.print('🏪 品牌名称: ${data['brandName']}');
        Logger.print('🏬 店铺名称: ${data['shopName']}');
        Logger.print('🆔 商品ID: ${data['productId']}');
        Logger.print('📄 商品描述: ${data['description']}');
        Logger.print('🖼️ 商品图片: ${data['imageUrl']}');

        Logger.print('🖼️ categoryName: ${data['categoryName']}');
        Logger.print('🖼️ sellerId: ${data['sellerId']}');
        Logger.print('🖼️ subName: ${data['subName']}');
        Logger.print('🖼️ userOpenimUserId: ${data['userOpenimUserId']}');
        Logger.print('🖼️ serviceOpenimUserId: ${data['serviceOpenimUserId']}');

        String? userOpenimUserId = OpenIMHelper.getCurrentUserID();

        if (userOpenimUserId == (data['serviceOpenimUserId'] as String)) {

          double.parse(data['price'].toString());
          String? memberId = await TokenAccessHelper.getUserId();

          CreateOrderRequest model = CreateOrderRequest(
              totalAmount: double.parse(data['price'].toString()),
              payAmount: double.parse(data['price'].toString()),
              actualPaymentAmount:  double.parse(data['price'].toString()),
              userOpenimUserId: data['userOpenimUserId'].toString(),
              sellerOpenimUserId: data['serviceOpenimUserId'].toString(),
              sellerId: int.parse(data['sellerId'].toString()),
              buyerId: int.parse(data['buyerId'].toString()),  // 买家 id
              memberId: int.parse(memberId!), // 下单客服 id
              orderItems: [OrderItem(
                  productName: data['productName'].toString() ,
                  productDescription: data['subName'].toString(),
                  unitPrice: double.parse(data['price'].toString()) ,
                  totalPrice: double.parse(data['price'].toString()),
                  originalPrice: double.parse(data['price'].toString()),
                  category: data['categoryName'].toString())]);


          Get.toNamed(AppRoutes.tkGuaranteeCreateOrder, arguments: {
            'orderData': model,
            'onOrderCreated': (Map<String, dynamic> messageData) {
              // 在聊天页面发送消息
              sendCustomMsg(
                data: json.encode(messageData['messageData']),
                extension: messageData['extension'],
                description: messageData['description'],
              );
            },
          });
        }else if (userOpenimUserId == data['userOpenimUserId']) {
          // 跳转到商品详情页面，使用真实的产品ID
          Get.toNamed(AppRoutes.tkProductDetail, arguments: {
            'productId': data['productId'],
          });
        }

        // 可以在这里添加更多处理逻辑，比如跳转到商品详情页
        // AppNavigator.startProductDetail(productId: data['productId']);
      } else {
        Logger.print('❌ 无法解析商品数据');
      }
    } catch (e) {
      Logger.print('❌ 解析商品数据时出错: $e');
    }
  }

  /// 处理商品咨询卡片点击
  void handleProductInquiryCardTap(Message message) {
    Logger.print('💬 商品咨询卡片被点击');
    Logger.print('📱 消息ID: ${message.clientMsgID}');
    Logger.print('📝 消息内容: ${message.customElem?.data}');

    try {
      final data = IMUtils.parseCustomMessage(message);
      if (data != null) {
        Logger.print('🔍 解析后的咨询数据: $data');
        Logger.print('📦 商品名称: ${data['productName']}');
        Logger.print('📄 咨询描述: ${data['description']}');
        Logger.print('🆔 商品ID: ${data['productId']}');

        String userOpenimUserId = data['userOpenimUserId'] ?? '';
        if (userOpenimUserId == OpenIMHelper.getCurrentUserID()) {
          final paymentData = {
          'orderId': data['orderId'],};
          Get.toNamed(AppRoutes.tkOrderToPay,arguments: paymentData);
        }
        Logger.print('🆔 userOpenimUserId: ${data['userOpenimUserId']}');
        Logger.print('🆔 orderId: ${data['orderId']}');

      } else {
        Logger.print('❌ 无法解析咨询数据');
      }
    } catch (e) {
      Logger.print('❌ 解析咨询数据时出错: $e');
    }
  }
}
