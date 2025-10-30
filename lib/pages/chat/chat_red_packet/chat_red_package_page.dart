import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:openim_common/openim_common.dart';
import 'package:toklink/pages/chat/chat_red_packet/chat_red_package_logic.dart';
import 'package:toklink/pages/chat/chat_red_packet/item_view.dart';
import 'package:toklink_balance_sdk/api.dart';

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
              if (!logic.isGroup) ...[
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
              Padding(
                padding: EdgeInsets.only(left: 10.w, right: 10.w),
                child:buildItemView(
                  showRightArrow: true,
                  icon: SizedBox(
                    width: 21.w, 
                    height: 21.h, 
                    child: ImageRes.redPacketIcon.toImage,
                  ),
                  label: 'USDT',
                ),),]
                else...[
                Padding(
                padding: EdgeInsets.only(left: 10.w,bottom:5.h),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      const Text(
                        '拼手气红包',
                        style: TextStyle(fontSize: 14),
                      ).marginOnly(right: 4.w),
                      ImageRes.downExpand.toImage..width = 10.w..height = 5.h,
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.w, right: 10.w,top: 5.h,bottom: 5.h),
                child:buildItemView(
                  label: '红包个数',
                  rightHintText: '填写红包个数',
                  rightController: logic.numberCtrl,
                ),),
              Padding(
                padding: EdgeInsets.only(left: 10.w),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '本群共5人',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ),],
              18.verticalSpace,
              Padding(
                padding: EdgeInsets.only(left: 10.w, right: 10.w),
                child:buildItemView(
                  label: '金额',
                  rightHintText: '0.00',
                  rightController: logic.amountCtrl,
                  inputFormatters:[FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d{0,2}$|^\d+\.?$|^\d*$'))],
                ),),
              18.verticalSpace,
              Padding(
                padding: EdgeInsets.only(left: 10.w, right: 10.w),
                child:buildItemView(
                  leftHintText: '恭喜发财，大吉大利',
                  leftController: logic.blessingCtrl,
                ),),
              60.verticalSpace,
              Obx(() => Text(
                '${logic.amount.value.toStringAsFixed(2)}--',
                style: const TextStyle(fontSize: 45),
              )),
              40.verticalSpace,
              SizedBox(
                width: 180.w,
                child: Button(
                  text: '生成红包2',
                  enabledColor: Colors.green,
                  onTap: () async{
                    var amount = await logic.loadWalletFundSummary();
                    _showWeightBottomSheet(context);
                    
                    },
                ),
              )
            ],
          ),
        ),
    
    );
  }

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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '生成红包1',
                        style: TextStyle(fontSize: 18),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.of(context).pop(),
                        child: const Icon(
                          Icons.close,
                          size: 24,
                          color: Colors.grey,
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
                              onTap: () {
                                CreateRedPacketDTO dto = CreateRedPacketDTO(
                                  blessing: logic.blessingCtrl.text,
                                  groupId: logic.groupId.isEmpty ? null : int.parse(logic.groupId),
                                  packetType: 1,currencyId: 10,
                                  totalCount: logic.isGroup ? int.parse(logic.numberCtrl.text) : 1,
                                );
                                RedPacketAppApi().createRedPacket(dto);         
                            },)
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