import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:openim_common/openim_common.dart';

import '../../../tk_app/tk_widgets/tk_w1/list_item_widget.dart';
import 'about_us_logic.dart';

class AboutUsPage extends StatelessWidget {
  final logic = Get.find<AboutUsLogic>();

  AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TitleBar.back(title: StrRes.aboutUs),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 顶部白色空间
            Container(
              height: 60.0,
              color: Colors.white,
            ),
            
            // 应用图标和名称
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  // 应用图标
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: ImageRes.splashLogo.toImage
                      ..width = 60.0
                      ..height = 60.0,
                  ),
                  const SizedBox(height: 12.0),
                  // 应用名称
                  const Text(
                    '',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF333333),
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  // 版本号
                  Obx(() => GestureDetector(
                    onTap: logic.copyVersion,
                    child: Text(
                      'v: ${logic.displayVersion}',
                      style: const TextStyle(
                        fontSize: 14.0,
                        color: Color(0xFF666666),
                      ),
                    ),
                  )),
                ],
              ),
            ),
            
            // 分割线
            Container(
              height: 0.5,
              color: const Color(0xFFE8EAEF),
              margin: const EdgeInsets.symmetric(horizontal: 24.0),
            ),
            
            // 官网
            ListItemWidget(
              text: '官网',
              rightIcon: const Text(
                'https://www.toklink.ai',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Color(0xFF666666),
                ),
                textAlign: TextAlign.right,
              ),
              rightIconSize: 200.0,
              onTap: () => _showSnackBar(context, '点击了官网'),
              backgroundColor: Colors.transparent,
              height: 50.0,
              showDivider: true,
              dividerLeftMargin: 24.0,
              dividerRightMargin: 24.0,
              showRippleEffect: false,
            ),
            
            // 邮箱
            ListItemWidget(
              text: '邮箱',
              rightIcon: const Text(
                'contact@toklink.ai',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Color(0xFF666666),
                ),
                textAlign: TextAlign.right,
              ),
              rightIconSize: 200.0,
              onTap: () => _showSnackBar(context, '点击了邮箱'),
              backgroundColor: Colors.transparent,
              height: 50.0,
              showDivider: true,
              dividerLeftMargin: 24.0,
              dividerRightMargin: 24.0,
              showRippleEffect: false,
            ),
            
            // 版本更新
            Obx(() => ListItemWidget(
              text: '版本更新',
              rightIcon: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // 红点提示（如果有更新）
                  if (logic.hasUpdate.value)
                    Container(
                      width: 8.0,
                      height: 8.0,
                      margin: const EdgeInsets.only(right: 6.0),
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                    ),
                  // 箭头图标
                  const Icon(
                    Icons.chevron_right,
                    size: 16.0,
                    color: Color(0xFF999999),
                  ),
                ],
              ),
              rightIconSize: 32.0, // 增加右侧图标区域大小以容纳红点和箭头
              onTap: logic.checkUpdate,
              backgroundColor: Colors.transparent,
              height: 50.0,
              showDivider: true,
              dividerLeftMargin: 24.0,
              dividerRightMargin: 24.0,
              showRippleEffect: false,
            )),
            
            // 底部分割线
            Container(
              height: 0.5,
              color: const Color(0xFFE8EAEF),
              margin: const EdgeInsets.symmetric(horizontal: 24.0),
            ),
          ],
        ),
      ),
    );
  }
  
  /// 显示提示信息
  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 1),
      ),
    );
  }

  void _showInputDialog() {
    showDialog(
        context: Get.context!,
        builder: (ctx) {
          return CupertinoAlertDialog(
            title: StrRes.setLines.toText..style = Styles.ts_0C1C33_17sp,
            content: CupertinoTextField(
              controller: logic.lineTextController,
              placeholder: logic.lineTextController.text,
              keyboardType: TextInputType.number,
            ),
            actions: [
              CupertinoButton(
                child: StrRes.confirm.toText..style = Styles.ts_0C1C33_17sp,
                onPressed: () {
                  navigator?.pop();
                  final lineStr = logic.lineTextController.text.trim();
                  logic.uploadLogs(int.parse(lineStr));
                },
              )
            ],
          );
        });
  }
}
