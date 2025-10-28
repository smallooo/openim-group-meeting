import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:openim_common/openim_common.dart';

class ChatToolBox extends StatelessWidget {
  const ChatToolBox({
    super.key,
    this.onTapAlbum,
    this.onTapCall,
    this.onTapCamera,
    this.onTapLocation,
    this.onTapVoiceInput,
    this.onTapRedPacket,
    this.onTapCreateOrder,
  });
  final Function()? onTapAlbum;
  final Function()? onTapCall;
  final Function()? onTapCamera;
  final Function()? onTapLocation;
  final Function()? onTapVoiceInput;
  final Function()? onTapRedPacket;
  final Function()? onTapCreateOrder;

  @override
  Widget build(BuildContext context) {
    final items = [
      // ToolboxItemInfo(
      //   text: StrRes.toolboxAlbum,
      //   icon: ImageRes.toolboxAlbum,
      //   onTap: () => Permissions.photos(onTapAlbum),
      // ),

      ToolboxItemInfo(
        text: '照片',
        icon: ImageRes.toolboxPhoto,
        onTap: () => Permissions.camera(onTapAlbum),
      ),
    
      ToolboxItemInfo(
        text: '拍摄',
        icon: ImageRes.toolboxCamera,
        onTap: () => Permissions.camera(onTapCamera),
      ),
      if (onTapCall != null)
        ToolboxItemInfo(
          text: StrRes.toolboxCall,
          icon: ImageRes.toolboxCall,
          onTap: () => Permissions.microphone(onTapCall),
         
        ),
      // ToolboxItemInfo(
      //   text: '位置',
      //   icon: ImageRes.toolboxLocation2,
      //   onTap: () => Permissions.location(onTapLocation),

      // ),
      // ToolboxItemInfo(
      //   text: '红包',
      //   icon: ImageRes.toolboxRedPacket,
      //   // onTap: () => Permissions.redPacket(onTapRedPacket),
      //   onTap: () => onTapRedPacket?.call(),
      // ),
      // ToolboxItemInfo(
      //   text: '转账',
      //   icon: ImageRes.toolboxTransfer,
      // ),
      ToolboxItemInfo(
        text: '语音输入',
        icon: ImageRes.toolboxVoiceInput,
        onTap: () => Permissions.microphone(onTapVoiceInput),
      ),
      if (onTapCreateOrder != null)
        ToolboxItemInfo(
          text: '担保订单',
          icon: ImageRes.toolboxGuaranteeOrder,
          onTap: onTapCreateOrder,
        ),
    ];

    return Container(
      color: Styles.c_F0F2F6,
      height: 224.h,
      child: GridView.builder(
        itemCount: items.length,
        padding: EdgeInsets.only(
          left: 16.w,
          right: 16.w,
          top: 6.h,
          bottom: 6.h,
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          childAspectRatio: 78.w / 105.h,
          crossAxisSpacing: 10.w,
          mainAxisSpacing: 2.h,
        ),
        itemBuilder: (_, index) {
          final item = items.elementAt(index);
          return _buildItemView(
            icon: item.icon,
            text: item.text,
            onTap: item.onTap,
          );
        },
      ),
    );
  }

  Widget _buildItemView({
    required String text,
    required String icon,
    Function()? onTap,
  }) =>
      Column(
        children: [
          icon.toImage
            ..width = 58.w
            ..height = 58.h
            ..onTap = onTap,
          10.verticalSpace,
          text.toText..style = Styles.ts_0C1C33_12sp,
        ],
      );
}

class ToolboxItemInfo {
  String text;
  String icon;
  Function()? onTap;

  ToolboxItemInfo({required this.text, required this.icon, this.onTap});
}
