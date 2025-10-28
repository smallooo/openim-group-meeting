import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:openim_common/openim_common.dart';
import 'package:toklink/pages/chat/chat_red_packet/chat_red_package_logic.dart';


class ChatRedPacketPage extends StatelessWidget {
  final logic = Get.find<ChatRedPacketLogic>();
  
  ChatRedPacketPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          appBar: TitleBar(
            backgroundColor: Styles.c_FFFFFF,
            height: 44.h,
            left: SizedBox(
            child: ImageRes.backBlack.toImage
                  ..width = 18.w
                  ..height = 21.h
                  ..onTap = (() => Get.back())),
            center: const Flexible( child:Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('发红包', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600))],
            ),),
            right: ImageRes.moreBlack.toImage
                  ..width = 21.w
                  ..height = 21.h
          ),
          backgroundColor: Styles.c_E8EAEF,
          body: SingleChildScrollView(
          child: Column(
            children: [
              14.verticalSpace,
              Padding(
                padding: EdgeInsets.only(left: 10.w),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '代币',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              8.verticalSpace,
              _buildItemView(
                showRightArrow: true,
                icon: SizedBox(
                  width: 21.w, 
                  height: 21.h, 
                  child: ImageRes.redPacketIcon.toImage,
                ),
                label: '--',
              ),
              18.verticalSpace,
              _buildItemView(
                label: '金额',
                rightHintText: '0.00',
                rightController: logic.amountCtrl,
              ),
              18.verticalSpace,
              _buildItemView(
                leftHintText: '恭喜发财，大吉大利',
                leftController: logic.blessingCtrl,
              ),
              60.verticalSpace,
              Obx(() => Text(
                '${logic.amount.value.toStringAsFixed(2)}--',
                style: const TextStyle(fontSize: 45),
              )),
              40.verticalSpace,
              SizedBox(
                width: 180.w,
                child: Button(
                  text: '生成红包',
                  enabledColor: Colors.green,
                  onTap: () {_showWeightBottomSheet(context);},
                ),
              )
            ],
          ),
        ),
    
    );
  }
  Widget _buildItemView({
    String? label,
    Widget? icon,
    bool showRightArrow = false,
    String? leftHintText,
    String? rightHintText,
    double? height,
    Function()? onTap,
    TextEditingController? leftController,
    TextEditingController? rightController,
  }) => Padding(padding: EdgeInsets.symmetric(horizontal: 10.w),child:
      Ink(
        child: InkWell(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              color: Styles.c_FFFFFF,
              borderRadius: BorderRadius.circular(5), 
            ),
            height: height ?? 60.h,
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Row(
              children: [
                if (icon != null) ...[
                  icon,
                  8.horizontalSpace,
                ],
                if (label != null) ...[
                label.toText..style = Styles.ts_0C1C33_17sp,],
                if (leftHintText != null) ...[
                  IntrinsicWidth(
                    child: TextField(
                      controller: leftController,
                      decoration: InputDecoration(
                        hintText: leftHintText,
                        border: InputBorder.none,
                        isDense: true, 
                        contentPadding: EdgeInsets.zero, 
                      ),
                      style: Styles.ts_0C1C33_17sp,
                    ),
                  ),
                ],
                const Spacer(),
                if (showRightArrow)
                  ImageRes.downExpand.toImage
                    ..width = 12.w
                    ..height = 12.h,
                if (rightHintText!=null) ...[
                  IntrinsicWidth(
                    child: TextField(
                      controller: rightController,
                      keyboardType: const TextInputType.numberWithOptions(decimal: true),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d{0,2}$|^\d+\.?$|^\d*$')),
                      ],
                      decoration: InputDecoration(
                      hintText: rightHintText ,
                      border: InputBorder.none,
                    ),
                    style: Styles.ts_0C1C33_17sp,
                    ),
                  ),
            ],
              ],
            ),
          ),
        ),
      ));

  Widget rowLabel(String label, String content, [String? contentHint]) {
    return Column(
      children: [
        SizedBox(
          height: 56,
          child: Row(
            children: [
              Text(label),
              const Spacer(),
              Text(content.isEmpty ? (contentHint ?? '') : content),
            ],
          ),
        ),
      ],
    );
  }

      void _showWeightBottomSheet(BuildContext context) {
        showModalBottomSheet(
          context: context,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
          ),
          builder: (context) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 16.h),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '生成红包',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 0.2,
                    color: Colors.grey,
                    height: 24.h,
                  ),
                  8.verticalSpace,
                  Padding(
                    padding: EdgeInsets.only(left: 24.w, right: 24.w),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 59.w, 
                          height: 59.h, 
                          child: ImageRes.redPacketIcon.toImage,
                        ),
                        14.verticalSpace,
                        Text(
                          '${logic.amount.toString()}--',
                          style: const TextStyle(fontSize: 19),
                        ),
                        16.verticalSpace,
                        rowLabel('支付方式', '--余额'),
                        rowLabel('祝福语', logic.blessingCtrl.text, '恭喜发财，大吉大利'),
                        16.verticalSpace,
                        SizedBox(
                          width: 200.w,                          
                            child: Button(
                              text: '确定',
                              enabledColor: Colors.green,
                              onTap: () {},
                            ),
                        ),
                      ],
                    ).marginOnly(bottom: 30.h),
                  ),
                ],
              );
          },
        );
      }
}