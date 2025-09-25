import 'package:flutter/material.dart';
import 'package:flutter_openim_sdk/flutter_openim_sdk.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:toklink/core/controller/im_controller.dart';
import 'package:openim_common/openim_common.dart';
import 'package:sprintf/sprintf.dart';

import 'conversation_logic.dart';

class ConversationPage extends StatelessWidget {
  final logic = Get.find<ConversationLogic>();
  final im = Get.find<IMController>();

  ConversationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          backgroundColor: Styles.c_F8F9FA,
          appBar: TitleBar.conversation(
            statusStr: logic.imSdkStatus,
            isFailed: logic.isFailedSdkStatus,
            popCtrl: logic.popCtrl,
            onAddFriend: logic.addFriend,
            onAddGroup: logic.addGroup,
            onCreateGroup: logic.createGroup,
            left: Expanded(
              flex: 2,
              child: Row(
                children: [
                  // 左边的可点击图标
                  GestureDetector(
                    onTap: () {
                      // TODO: 在这里添加你的点击事件
                      print('左侧图标被点击了');
                      // 例如：打开侧边栏、导航到设置页面等
                    },
                    child: Container(
                        width: 40.w,
                        height: 40.h,
                        padding: EdgeInsets.all(8.w),
                        child: ImageRes.homeLeftSide.toImage,
                    ),
                  ),
                  // 中间的 Chats 标题
                  Expanded(
                    child: Center(
                      child: Text(
                        'Chats',
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: Styles.c_0C1C33,
                        ),
                      ),
                    ),
                  ),
                  // 右边预留空间（保持平衡）
                  SizedBox(width: 40.w),
                  // 同步状态显示（如果需要的话）
                  if (null != logic.imSdkStatus && (!logic.reInstall || logic.isFailedSdkStatus))
                    SyncStatusView(
                      isFailed: logic.isFailedSdkStatus,
                      statusStr: logic.imSdkStatus!,
                    ),
                ],
              ),
            )),
          body: Column(
            children: [
              Expanded(
                  child: Obx(() => ListView.builder(
                    itemBuilder: (_, index) => _buildItemView(
                      logic.list.elementAt(index),
                    ),
                    itemCount: logic.list.length,
                  )),
                ),
            ],
          ),
        ));
  }

  Widget _buildItemView(ConversationInfo info) => Ink(
        child: InkWell(
          onTap: () => logic.toChat(conversationInfo: info),
          child: Stack(
            children: [
              Container(
                height: 68,
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        AvatarView(
                          width: 48.w,
                          height: 48.h,
                          text: logic.getShowName(info),
                          url: info.faceURL,
                          isGroup: logic.isGroupChat(info),
                          textStyle: Styles.ts_FFFFFF_14sp_medium,
                          isCircle: true,  // 新增这一行
                        ),
                        // 添加在线状态图标  
                        if (!logic.isGroupChat(info) && logic.isUserOnline(info))
                          Positioned(
                            right: 0,
                            bottom: 0,
                            child: Container(
                              width: 16.w,
                              height: 16.h,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white, width: 1.w),
                              ),
                              child: ClipOval(
                                child: ImageRes.homeChatOnline.toImage,
                              ),
                            ),
                          ),
                      ],
                    ),
                    12.horizontalSpace,
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              ConstrainedBox(
                                constraints: BoxConstraints(maxWidth: 180.w),
                                child: logic.getShowName(info).toText
                                  ..style = Styles.ts_0C1C33_17sp
                                  ..maxLines = 1
                                  ..overflow = TextOverflow.ellipsis,
                              ),
                              const Spacer(),
                              logic.getTime(info).toText..style = Styles.ts_8E9AB0_12sp,
                            ],
                          ),
                          3.verticalSpace,
                          Row(
                            children: [
                              _buildMessageContent(info),
                              const Spacer(),
                              UnreadCountView(count: logic.getUnreadCount(info)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );

  Widget _buildMessageContent(ConversationInfo info) {
    final messageType = logic.getMessageType(info);
    final callDuration = logic.getCallDuration(info);
    
    // 如果是通话记录消息，显示图标+时长
    if (messageType != null && callDuration != null) {
      Widget icon;
      if (messageType == 'audio') {
        icon = ImageRes.tkImAudio.toImage
          ..width = 16.w
          ..height = 16.h;
      } else {
        icon = ImageRes.tkImVideo.toImage
          ..width = 16.w
          ..height = 16.h;
      }
      
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // 前缀信息（未读数量等）
          if (logic.getUnreadCount(info) > 0)
            Text(
              '[${sprintf(StrRes.nPieces, [logic.getUnreadCount(info)])}] ',
              style: Styles.ts_8E9AB0_14sp,
            ),
          if (logic.getPrefixTag(info) != null)
            Text(
              logic.getPrefixTag(info)!,
              style: Styles.ts_0089FF_14sp,
            ),
          // 通话图标
          icon,
          4.horizontalSpace,
          // 通话时长
          Flexible(
            child: Text(
              callDuration,
              style: Styles.ts_8E9AB0_14sp,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      );
    }
    
    // 普通消息显示
    return MatchTextView(
      text: logic.getContent(info),
      textStyle: Styles.ts_8E9AB0_14sp,
      prefixSpan: TextSpan(
        text: '',
        children: [
          if (logic.getUnreadCount(info) > 0)
            TextSpan(
              text: '[${sprintf(StrRes.nPieces, [logic.getUnreadCount(info)])}] ',
              style: Styles.ts_8E9AB0_14sp,
            ),
          TextSpan(
            text: logic.getPrefixTag(info),
            style: Styles.ts_0089FF_14sp,
          ),
        ],
      ),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}
