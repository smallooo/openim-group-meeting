import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:openim_common/openim_common.dart';
import 'package:toklink/tk_app/pages/tk_mine/tk_account_setup/tk_account_setup_logic.dart';
import 'package:toklink/tk_app/tk_widgets/tk_w2/avatar_list_item_widget.dart';
import 'package:toklink/tk_app/tk_widgets/tk_w3/text_button_widget.dart';
import 'package:toklink/tk_app/tk_widgets/tk_w5/switch_widget.dart';


class TkAccountSetupPage extends StatefulWidget {
  TkAccountSetupPage({super.key});

  @override
  State<TkAccountSetupPage> createState() => _TkAccountSetupPageState();
}

class _TkAccountSetupPageState extends State<TkAccountSetupPage> {
  final logic = Get.find<TkAccountSetupLogic>();
  
  // 开关状态
  bool _doNotDisturb = false;
  bool _messageSound = false;
  bool _messageVibration = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TitleBar.back(
        title: StrRes.accountSetup,
      ),
      backgroundColor: const Color(0xFFF5F5F5),
      body: Obx(() => SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 16.0),
                
                // 语言设置
                _buildSingleItem(
                  leftText: '语言',
                  middleText: logic.curLanguage.value,
                  onTap: logic.languageSetting,
                ),
                
                const SizedBox(height: 8.0),
                
                // 屏蔽管理
                _buildSingleItem(
                  leftText: '屏蔽管理',
                  onTap: () {
                    print('点击了屏蔽管理按钮');
                    logic.blacklist();
                  },
                ),
                
                const SizedBox(height: 8.0),
                
                // 收藏
                _buildSingleItem(
                  leftText: '收藏',
                  onTap: () {
                    print('点击了收藏按钮');
                    _showSnackBar(context, '点击了收藏');
                  },
                ),
                
                const SizedBox(height: 16.0),
                
                // 开关设置组
                _buildSwitchGroup(),
                
                const SizedBox(height: 16.0),
                
                // 通讯录黑名单
                _buildSingleItem(
                  leftText: '通讯录黑名单',
                  onTap: () {
                    print('点击了通讯录黑名单按钮');
                    logic.blacklist();
                  },
                ),
                
                const SizedBox(height: 8.0),
                
                // 清空聊天记录
                _buildSingleItem(
                  leftText: '清空聊天记录',
                  onTap: () => _showSnackBar(context, '点击了清空聊天记录'),
                ),
                
                const SizedBox(height: 32.0),
                
                // 切换账号按钮
                _buildActionButton(
                  text: '切换账号',
                  onTap: () => _showSnackBar(context, '点击了切换账号'),
                  textColor: Colors.black87,
                ),
                
                const SizedBox(height: 12.0),
                
                // 退出登录按钮
                _buildActionButton(
                  text: '退出登录',
                  onTap: logic.logout,
                  textColor: Colors.red,
                ),
                
                const SizedBox(height: 20.0),
              ],
            ),
          )),
    );
  }

  /// 构建单个列表项（使用 tk_w2 组件）
  Widget _buildSingleItem({
    required String leftText,
    String? middleText,
    VoidCallback? onTap,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: AvatarListItemWidget(
        leftText: leftText,
        middleText: middleText ?? '', // 确保 middleText 不为 null
        onTap: onTap,
        showArrow: true,
        backgroundColor: Colors.transparent,
        height: 50.0,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        showRippleEffect: false, // 改为 true 使用 InkWell
      ),
    );
  }

  /// 构建开关设置组（使用 tk_w5 组件）
  Widget _buildSwitchGroup() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
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
          SwitchWidget(
            text: '勿扰模式',
            value: _doNotDisturb,
            onChanged: (value) {
              setState(() {
                _doNotDisturb = value;
              });
              _showSnackBar(context, '勿扰模式: $value');
            },
            showDivider: true,
            backgroundColor: Colors.transparent,
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            margin: EdgeInsets.zero,
          ),
          SwitchWidget(
            text: '新消息提示音',
            value: _messageSound,
            onChanged: (value) {
              setState(() {
                _messageSound = value;
              });
              _showSnackBar(context, '新消息提示音: $value');
            },
            showDivider: true,
            backgroundColor: Colors.transparent,
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            margin: EdgeInsets.zero,
          ),
          SwitchWidget(
            text: '新消息震动',
            value: _messageVibration,
            onChanged: (value) {
              setState(() {
                _messageVibration = value;
              });
              _showSnackBar(context, '新消息震动: $value');
            },
            showDivider: false,
            backgroundColor: Colors.transparent,
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            margin: EdgeInsets.zero,
          ),
        ],
      ),
    );
  }

  /// 构建操作按钮（使用 tk_w3 组件）
  Widget _buildActionButton({
    required String text,
    required VoidCallback onTap,
    required Color textColor,
  }) {
    return Container(
      width: double.infinity, // 让按钮占满宽度
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TextButtonWidget(
        text: text,
        onTap: onTap,
        textStyle: TextStyle(
          fontSize: 16.0,
          color: textColor,
          fontWeight: FontWeight.w500,
        ),
        backgroundColor: Colors.white,
        borderRadius: 8.0,
        height: 50.0,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
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
}
