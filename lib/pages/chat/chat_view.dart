import 'package:flutter/material.dart';
import 'package:flutter_openim_sdk/flutter_openim_sdk.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:openim_common/openim_common.dart';

import 'chat_logic.dart';
import 'order_widget/order_custom_widgets.dart';

class ChatPage extends StatelessWidget {
  final logic = Get.find<ChatLogic>(tag: GetTags.chat);

  ChatPage({super.key});

  Widget _buildItemView(Message message) => ChatItemView(
        key: logic.itemKey(message),
        message: message,
        textScaleFactor: logic.scaleFactor.value,
        allAtMap: logic.getAtMapping(message),
        timelineStr: logic.getShowTime(message),
        sendStatusSubject: logic.sendStatusSub,
        leftNickname: logic.getNewestNickname(message),
        leftFaceUrl: logic.getNewestFaceURL(message),
        rightNickname: logic.senderName,
        rightFaceUrl: OpenIM.iMManager.userInfo.faceURL,
        showLeftNickname: !logic.isSingleChat,
        showRightNickname: !logic.isSingleChat,
        onFailedToResend: () => logic.failedResend(message),
        onClickItemView: () => logic.parseClickEvent(message),
        visibilityChange: (msg, visible) {
          logic.markMessageAsRead(message, visible);
        },
        onLongPressRightAvatar: () {},
        onLongPressLeftAvatar: () {
          logic.onLongPressLeftAvatar(message);
        },
        onTapLeftAvatar: () {
          logic.onTapLeftAvatar(message);
        },
        onVisibleTrulyText: (text) {
          logic.copyTextMap[message.clientMsgID] = text;
        },
        customTypeBuilder: _buildCustomTypeItemView,
        patterns: <MatchPattern>[
          MatchPattern(
            type: PatternType.email,
            onTap: logic.clickLinkText,
          ),
          MatchPattern(
            type: PatternType.url,
            onTap: logic.clickLinkText,
          ),
          MatchPattern(
            type: PatternType.mobile,
            onTap: logic.clickLinkText,
          ),
          MatchPattern(
            type: PatternType.tel,
            onTap: logic.clickLinkText,
          ),
        ],
        mediaItemBuilder: (context, message) {
          return _buildMediaItem(context, message);
        },
        onTapUserProfile: handleUserProfileTap,
      );

  void handleUserProfileTap(({String userID, String name, String? faceURL, String? groupID}) userProfile) {
    final userInfo = UserInfo(userID: userProfile.userID, nickname: userProfile.name, faceURL: userProfile.faceURL);
    logic.viewUserInfo(userInfo);
  }

  Widget? _buildMediaItem(BuildContext context, Message message) {
    if (message.contentType != MessageType.picture && message.contentType != MessageType.video) {
      return null;
    }

    return GestureDetector(
      onTap: () async {
        try {
          IMUtils.previewMediaFile(
              context: context,
              message: message,
              onAutoPlay: (index) {
                return !logic.playOnce;
              },
              muted: logic.rtcIsBusy,
              onPageChanged: (index) {
                logic.playOnce = true;
              }).then((value) {
            logic.playOnce = false;
          });
        } catch (e) {
          IMViews.showToast(e.toString());
        }
      },
      child: Hero(
        tag: message.clientMsgID!,
        child: _buildMediaContent(message),
        placeholderBuilder: (BuildContext context, Size heroSize, Widget child) => child,
      ),
    );
  }

  Widget _buildMediaContent(Message message) {
    final isOutgoing = message.sendID == OpenIM.iMManager.userID;

    if (message.isVideoType) {
      return const SizedBox();
    } else {
      return ChatPictureView(
        isISend: isOutgoing,
        message: message,
      );
    }
  }

  CustomTypeInfo? _buildCustomTypeItemView(_, Message message) {
    print('🔍 _buildCustomTypeItemView - 开始处理消息');
    print('🔍 消息类型: ${message.contentType}');
    print('🔍 消息内容: ${message.customElem?.data}');
    print('🔍 消息ID: ${message.clientMsgID}');
    
    final data = IMUtils.parseCustomMessage(message);
    print('🔍 解析结果: $data');
    print('🔍 解析结果类型: ${data.runtimeType}');
    print('🔍 解析结果是否为null: ${data == null}');
    
    if (null != data) {
      final viewType = data['viewType'];
      print('🔍 viewType: $viewType');
      print('🔍 viewType类型: ${viewType.runtimeType}');
      print('🔍 data[\'data\']: ${data['data']}');
      print('🔍 CustomMessageType.productShare: ${CustomMessageType.productShare}');
      print('🔍 viewType == CustomMessageType.productShare: ${viewType == CustomMessageType.productShare}');
      if (viewType == CustomMessageType.call) {
        final type = data['type'];
        final content = data['content'];
        print('_buildCustomTypeItemView - 构建通话视图: type=$type, content=$content');
        final view = ChatCallItemView(type: type, content: content);
        return CustomTypeInfo(view);
      } else if (viewType == CustomMessageType.deletedByFriend || viewType == CustomMessageType.blockedByFriend) {
        final view = ChatFriendRelationshipAbnormalHintView(
          name: logic.nickname.value,
          onTap: logic.sendFriendVerification,
          blockedByFriend: viewType == CustomMessageType.blockedByFriend,
          deletedByFriend: viewType == CustomMessageType.deletedByFriend,
        );
        return CustomTypeInfo(view, false, false);
      } else if (viewType == CustomMessageType.removedFromGroup) {
        return CustomTypeInfo(
          StrRes.removedFromGroupHint.toText..style = Styles.ts_8E9AB0_12sp,
          false,
          false,
        );
      } else if (viewType == CustomMessageType.groupDisbanded) {
        return CustomTypeInfo(
          StrRes.groupDisbanded.toText..style = Styles.ts_8E9AB0_12sp,
          false,
          false,
        );
      } else       if (viewType == CustomMessageType.productShare) {
        print('✅ 匹配到 productShare 分支！');
        // 显示商品分享卡片
        final productData = data as Map<String, dynamic>?;
        print('🔍 productData: $productData');
        if (productData != null) {
          print('✅ productData 不为null，构建卡片');
          return CustomTypeInfo(
            ProductShareCard(
              data: productData,
              message: message,
              onTap: () => logic.handleProductShareCardTap(message),
            ),
            true, // 显示在右侧
            true, // 显示时间
          );
        } else {
          print('❌ productData 为null');
        }
      } else if (viewType == CustomMessageType.productInquiry) {
        print('✅ 匹配到 productInquiry 分支！');
        // 显示商品咨询卡片
        final inquiryData = data as Map<String, dynamic>?;
        print('🔍 inquiryData: $inquiryData');
        if (inquiryData != null) {
          print('✅ inquiryData 不为null，构建卡片');
          return CustomTypeInfo(
            ProductInquiryCard(
              data: inquiryData,
              message: message,
              onTap: () => logic.handleProductInquiryCardTap(message),
            ),
            true,
            true,
          );
        } else {
          print('❌ inquiryData 为null');
        }
      } else {
        // 如果解析结果不为null但没有匹配到已知类型，显示默认消息
        print('_buildCustomTypeItemView - 未匹配到已知类型，data: $data');
        return CustomTypeInfo(
          Text('未知消息类型: ${data['viewType']}'),
          true,
          true,
        );
      }
    }
    return null;
  }

  Widget? get _groupCallHintView => null;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: logic.willPop(),
      child: Obx(() {
        return Scaffold(
            backgroundColor: Styles.c_F0F2F6,
            appBar: TitleBar.chat(
              title: logic.nickname.value,
              member: logic.memberStr,
              onCloseMultiModel: logic.exit,
              onClickMoreBtn: logic.chatSetup,
              onClickCallBtn: logic.isGroupChat ? logic.groupCall : logic.call,
            ),
            body: SafeArea(
              child: WaterMarkBgView(
                text: '',
                path: logic.background.value,
                backgroundColor: Styles.c_FFFFFF,
                floatView: _groupCallHintView,
                bottomView: ChatInputBox(
                  forceCloseToolboxSub: logic.forceCloseToolbox,
                  controller: logic.inputCtrl,
                  focusNode: logic.focusNode,
                  isNotInGroup: logic.isInvalidGroup,
                  directionalText: logic.directionalText(),
                  onCloseDirectional: logic.onClearDirectional,
                  onSend: (v) => logic.sendTextMsg(),
                  // @功能相关配置
                  onAt: logic.isGroupChat ? logic.handleAtInput : null,
                  onTapAt: logic.isGroupChat ? logic.handleAtTap : null,
                  atUserMap: logic.isGroupChat ? logic.atUserMap : null,
                  toolbox: ChatToolBox(
                    onTapAlbum: logic.onTapAlbum,
                    onTapCall: logic.isGroupChat ? null : logic.call,
                    onTapCreateOrder: logic.isGroupChat ? null : logic.createOrder,
                  ),
                  voiceRecordBar: const SizedBox(),
                ),
                child: ChatListView(
                  onTouch: () => logic.closeToolbox(),
                  itemCount: logic.messageList.length,
                  controller: logic.scrollController,
                  onScrollToBottomLoad: logic.onScrollToBottomLoad,
                  onScrollToTop: logic.onScrollToTop,
                  itemBuilder: (_, index) {
                    final message = logic.indexOfMessage(index);
                    return Obx(() => _buildItemView(message));
                  },
                ),
              ),
            ));
      }),
    );
  }

}
