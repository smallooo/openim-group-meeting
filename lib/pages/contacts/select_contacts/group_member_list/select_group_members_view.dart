import 'package:flutter/material.dart';
import 'package:flutter_openim_sdk/flutter_openim_sdk.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:openim_common/openim_common.dart';
import 'package:sprintf/sprintf.dart';

import 'select_group_members_logic.dart';

class SelectContactsFromGroupMemberPage extends StatelessWidget {
  final logic = Get.find<SelectContactsFromGroupMemberLogic>();

  SelectContactsFromGroupMemberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TitleBar.back(title: StrRes.myGroup),
      backgroundColor: Styles.c_F8F9FA,
      body: Column(
        children: [
          // if (logic.selectContactsLogic.isMultiModel)
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Ink(
              height: 64.h,
              color: Styles.c_FFFFFF,
              child: InkWell(
                onTap: logic.selectAll,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Row(
                    children: [
                      Obx(() => Padding(
                        padding: EdgeInsets.only(right: 10.w),
                        child: ChatRadio(checked: logic.isSelectAll),
                      )),
                      10.horizontalSpace,
                      StrRes.selectAll.toText..style = Styles.ts_0C1C33_17sp,
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
              child: Obx(() => ListView.builder(
                itemCount: logic.allList.length,
                itemBuilder: (_, index) => _buildItemView(logic.allList[index]),
              ))),
          checkedConfirmView(logic),
        ],
      ),
    );
  }




  Widget _buildItemView(GroupMembersInfo info) {
    Widget buildChild() => Ink(
      height: 64.h,
      color: Styles.c_FFFFFF,
      child: InkWell(
        onTap: logic.onTap(info),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 10.w),
                child: ChatRadio(
                  checked: logic.isChecked(info),
                  enabled: !logic.isDefaultChecked(info),
                ),
              ),
              AvatarView(
                url: info.faceURL,
                text: info.nickname,
                isGroup: true,
              ),
              10.horizontalSpace,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    (info.nickname ?? '').toText
                      ..style = Styles.ts_0C1C33_17sp
                      ..maxLines = 1
                      ..overflow = TextOverflow.ellipsis,
                    ''.toText..style = Styles.ts_8E9AB0_14sp,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
    return Obx(buildChild);
  }


  Widget checkedConfirmView(SelectContactsFromGroupMemberLogic logic) {
    return Container(
      height: 66.h,
      decoration: BoxDecoration(
        color: Styles.c_FFFFFF,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -1.h),
            blurRadius: 4.r,
            spreadRadius: 1.r,
            color: Styles.c_000000_opacity4,
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Obx(() => Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Expanded(
          //   child: GestureDetector(
          //     behavior: HitTestBehavior.translucent,
          //     onTap: logic.viewSelectedContactsList,
          //     child: Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         Row(
          //           children: [
          //             sprintf(StrRes.selectedPeopleCount,
          //                 [logic.checkedList.length]).toText
          //               ..style = Styles.ts_0089FF_14sp,
          //             ImageRes.expandUpArrow.toImage
          //               ..width = 24.w
          //               ..height = 24.h,
          //           ],
          //         ),
          //         if (logic.checkedList.isNotEmpty) 4.verticalSpace,
          //         logic.checkedStrTips.toText
          //           ..style = Styles.ts_8E9AB0_14sp
          //           ..maxLines = 1
          //           ..overflow = TextOverflow.ellipsis,
          //       ],
          //     ),
          //   ),
          // ),

          const Expanded(child: SizedBox()),

          Button(
            height: 40.h,
            enabled: logic.enabledConfirmButton,
            padding: EdgeInsets.symmetric(horizontal: 14.w),
            text: sprintf(StrRes.confirmSelectedPeople, [
              logic.checkedSet.length,
              logic.allList.length,
            ]),
            textStyle: Styles.ts_FFFFFF_14sp,
            onTap: logic.confirmSelectedList,
          ),
        ],
      )),
    );
  }

}