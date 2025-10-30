import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:openim_common/openim_common.dart';


class RedPacketDetailPage extends StatelessWidget {
  // final logic = Get.find<RedPacketDetailLogic>();

  const RedPacketDetailPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          SizedBox(height: 500, child: Stack(
            children: [ ImageRes.redPacketIcon2.toImage,
              Positioned(top: 110, left: 0,right: 0,
                child: ImageRes.redPacketReciveIcon.toImage
                  ..width = 255.w
                  ..height = 164.h,
              ),
            ],
          ),
          ),
          Positioned(
            child: TitleBar(
            backgroundColor: Colors.transparent,
            // height: 44.h,
            left: SizedBox(
            child: ImageRes.backBlack.toImage
                  ..width = 18.w
                  ..height = 21.h
                  ..color = Colors.white
                  ..onTap = (() => Get.back())),
            center: const Flexible( child:Row(
              children: [Text('收到的红包', style: TextStyle(fontSize: 16,color: Colors.white))],
            ),).marginOnly(left: (MediaQuery.of(context).size.width - 150.w) / 2,),
          ),
          ),

          Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height - 280.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              alignment: Alignment.topCenter, 
              child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 10.h),
              const Text(
                '成功领取 的红包',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              SizedBox(height: 10.h),
              const Text(
                '恭喜发财，大吉大利',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              const Text(
                '0.00 USDT',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              const Text(
                '已转入您的地址',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '已领取 / 个红包， 共0.00USDT',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ).marginOnly(left: 4.w, top: 8.h),
              Divider(thickness: 0.2,color: Colors.grey,height: 14.h,),

              Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return itemView(
                          avatarUrl: ImageRes.tiktok_icon,
                          name: 'User $index',
                        );
                      },
                    ),
                  ),
            ],
          ),
    ).marginOnly(top: 280.h),
                  ],
                ),
    );
          
}
Widget itemView({required String avatarUrl,
  required String name,}) {
  return  Row(crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        AvatarView(
          width: 42.w,
          height: 42.h,
          text: name,
          url: avatarUrl,
          isCircle: true),

        Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(children: [
                  Text(name),
                ]),
              const Row(children: [
                  // if (comment.createdOn != 0) Text(TimeUtil.formatDate(comment.createdOn)).color(grey).size(textXSmall),
                  // if (comment.ipLoc.isNotEmpty) Text(comment.ipLoc).color(grey).size(textXSmall).marginOnly(left: 8),
                  Text('2025-10-10'),
                ],
              ).marginOnly(bottom:12),
            ],
          ).marginOnly(left: 8.w),
        ),
        const Column(
          children: [
            Text('0.00 USDT'),
            Text('手气最佳'),
            ])
      ],
    ).marginOnly(left:8.h,bottom:10.h);

} 
}