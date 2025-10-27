import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:openim_common/openim_common.dart';

class LiveButton extends StatelessWidget {
   LiveButton({
    Key? key,
    required this.text,
    required this.icon,
    this.onTap,
    required this.iconSize,
  }) : super(key: key);
  final String text;
  final String icon;
  final Function()? onTap;
  final Size iconSize; 

  @override
  Widget build(BuildContext context) {
    final double width = iconSize.width ;
    final double height = iconSize.height ;
    return Column(
      children: [
        icon.toImage
          ..width = width
          ..height = height
          ..onTap = onTap,
        8.verticalSpace,
        text.toText..style = Styles.ts_FFFFFF_opacity70_14sp,
      ],
    );
  }

  LiveButton.uiSwitch({
    super.key,
    this.onTap,
  })  : text = '',
        iconSize = const Size(46, 46),
        icon = ImageRes.liveArrowlUp;


  LiveButton.microphone({
    super.key,
    this.onTap,
    bool on = true,
  })  : text = '',
        iconSize = const Size(46, 46),
        icon = on ? ImageRes.liveMicOn : ImageRes.liveMicOff;

   LiveButton.microphoneBig({
    super.key,
    this.onTap,
    bool on = true,
  })  : text = on ? '麦克风已开' : '麦克风已关',
        iconSize = const Size(58, 58),
        icon = on ? ImageRes.liveMicOn : ImageRes.liveMicOff;

  LiveButton.speaker({
    super.key,
    this.onTap,
    bool on = true,
  })  : text = '',
        iconSize = const Size(46, 46),
        icon = on ? ImageRes.liveSpeakerOn : ImageRes.liveSpeakerOff;
   LiveButton.speakerBig({
    super.key,
    this.onTap,
    bool on = true,
  })  : text = on ? '扬声器已开' : '扬声器已关',
        iconSize = const Size(58, 58),
        icon = on ? ImageRes.liveSpeakerOn : ImageRes.liveSpeakerOff;

  LiveButton.camera({
    super.key,
    this.onTap,
    bool on = true,
  })  : text = '',
        iconSize = const Size(46, 46),
        icon = on ? ImageRes.liveCameraOn : ImageRes.liveCameraOff;


  LiveButton.cameraBig({
    super.key,
    this.onTap,
    bool on = true,
  })  : text = on ? '摄像头已开' : '摄像头已关',
        iconSize = const Size(58, 58),
        icon = on ? ImageRes.liveCameraOn : ImageRes.liveCameraOff;

  LiveButton.hungUp({
    super.key,
    this.onTap,
  })  : text = '',
        iconSize = const Size(46, 46),
        icon = ImageRes.liveHangUp;


  LiveButton.hungUpBig({
    super.key,
    this.onTap,
  })  : text = '',
        iconSize = const Size(58, 58),
        icon = ImageRes.liveHangUp;


  LiveButton.reject({
    super.key,
    this.onTap,
  })  : text = StrRes.reject,
        iconSize = const Size(58, 58),
        icon = ImageRes.liveHangUp;

  LiveButton.cancel({
    super.key,
    this.onTap,
  })  : text = StrRes.cancel,
        iconSize = const Size(58, 58),
        icon = ImageRes.liveHangUp;

  LiveButton.pickUp({
    super.key,
    this.onTap,
  })  : text = StrRes.pickUp,
        iconSize = const Size(58, 58),
        icon = ImageRes.livePicUp;
}
