import 'package:common_utils/common_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:openim_common/openim_common.dart';
import 'package:toklink/tk_app/pages/tk_mine/tk_my_info/tk_my_info_logic.dart';
import 'package:toklink/tk_app/tk_widgets/tk_w2/tk_w2.dart';

import '../../../../core/controller/im_controller.dart';

class TkMyInfoPage extends StatelessWidget {
  final logic = Get.find<TkMyInfoLogic>();
  final imLogic = Get.find<IMController>();

  TkMyInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TitleBar.back(
        title: StrRes.myInfo,
      ),
      backgroundColor: const Color(0xFFF5F5F5),
      body: Obx(() => SingleChildScrollView(
            child: Column(
              children: [
                // 顶部白色空间
                // Container(
                //   height: 90.0,
                //   color: Colors.white,
                // ),
                //
                // 用户信息卡片
                Container(
                  margin: const EdgeInsets.fromLTRB(16.0, 16, 16.0, 16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 4,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      // 头像
                      AvatarListItemWidget(
                        leftText: '头像',
                        leftTextStyle: const TextStyle(
                          fontSize: 16.0,
                          color: Color(0xFF333333),
                          fontWeight: FontWeight.normal,
                        ),
                        avatarWidget: imLogic.userInfo.value.faceURL != null
                            ? Image.network(
                                imLogic.userInfo.value.faceURL!,
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return Container(
                                    width: 40,
                                    height: 40,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFF9C27B0),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.person,
                                      color: Colors.white,
                                      size: 24,
                                    ),
                                  );
                                },
                              )
                            : Container(
                                width: 40,
                                height: 40,
                                decoration: const BoxDecoration(
                                  color: Color(0xFF9C27B0),
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.person,
                                  color: Colors.white,
                                  size: 24,
                                ),
                              ),
                        avatarSize: 40.0,
                        avatarShape: BoxShape.rectangle,
                        onTap: logic.openPhotoSheet,
                        showDivider: true,
                        backgroundColor: Colors.transparent,
                        showRippleEffect: false,
                        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                      ),
                      
                      // 名字
                      AvatarListItemWidget(
                        leftText: '名字',
                        leftTextStyle: const TextStyle(
                          fontSize: 16.0,
                          color: Color(0xFF333333),
                          fontWeight: FontWeight.normal,
                        ),
                        middleText: imLogic.userInfo.value.nickname?.isNotEmpty == true 
                            ? imLogic.userInfo.value.nickname! 
                            : 'Wait',
                        middleTextStyle: const TextStyle(
                          fontSize: 14.0,
                          color: Color(0xFF999999),
                          fontWeight: FontWeight.normal,
                        ),
                        onTap: logic.editMyName,
                        showDivider: true,
                        backgroundColor: Colors.transparent,
                        showRippleEffect: false,
                        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                      ),
                      
                      // 二维码名片
                      AvatarListItemWidget(
                        leftText: '二维码名片',
                        leftTextStyle: const TextStyle(
                          fontSize: 16.0,
                          color: Color(0xFF333333),
                          fontWeight: FontWeight.normal,
                        ),
                        avatarWidget: Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            color: const Color(0xFF666666),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: const Icon(
                            Icons.qr_code,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                        avatarSize: 24.0,
                        avatarShape: BoxShape.rectangle,
                        onTap: () {
                          // TODO: 实现二维码名片功能
                          Get.snackbar('提示', '二维码名片功能待实现');
                        },
                        showDivider: true,
                        backgroundColor: Colors.transparent,
                        showRippleEffect: false,
                        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                      ),
                      
                      // 简介
                      AvatarListItemWidget(
                        leftText: '简介',
                        leftTextStyle: const TextStyle(
                          fontSize: 16.0,
                          color: Color(0xFF333333),
                          fontWeight: FontWeight.normal,
                        ),
                        middleText: '', // 空简介
                        middleTextStyle: const TextStyle(
                          fontSize: 14.0,
                          color: Color(0xFF999999),
                          fontWeight: FontWeight.normal,
                        ),
                        onTap: () {
                          // TODO: 实现简介编辑功能
                          Get.snackbar('提示', '简介编辑功能待实现');
                        },
                        showDivider: false,
                        backgroundColor: Colors.transparent,
                        showRippleEffect: false,
                        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }

}
