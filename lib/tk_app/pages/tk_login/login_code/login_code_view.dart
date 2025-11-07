import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:openim_common/openim_common.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'login_code_logic.dart';

class TkLoginCodePage extends ConsumerStatefulWidget {
  final dynamic sendModel;
  final String deviceId;
  
  const TkLoginCodePage({
    super.key, 
    this.sendModel, 
    required this.deviceId,
  });

  @override
  ConsumerState<TkLoginCodePage> createState() => _TkLoginCodePageState();
}

class _TkLoginCodePageState extends ConsumerState<TkLoginCodePage> {
  late final LoginCodeLogic logic;

  @override
  void initState() {
    super.initState();
    logic = Get.find<LoginCodeLogic>();
    // 将 ref 传递给 logic
    logic.setRef(ref);
    // 初始化页面数据
    logic.initPageData(
      sendModel: widget.sendModel,
      deviceId: widget.deviceId,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Verify_your_email'.tr)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Logo 区域
            _buildLogoSection(),
            
            // 提示文字
            _buildTipSection(),
            
            // 验证码输入区域
            _buildCodeInputSection(),
            
            // 错误信息显示
            _buildErrorSection(),
            
            const Spacer(),
            
            // 按钮区域
            _buildButtonSection(),
          ],
        ),
      ),
    );
  }

  /// Logo 区域
  Widget _buildLogoSection() {
    return Column(
      children: [
        const SizedBox(height: 24),
        Obx(() => (logic.verified.value 
          ? ImageRes.ydyx_icon 
          : ImageRes.dkyx_icon).toImage
          ..width = 118
          ..height = 106),
      ],
    );
  }

  /// 提示文字
  Widget _buildTipSection() {
    return Column(
      children: [
        const SizedBox(height: 24),
        Text(
          'Verify_your_email_tip'.tr, 
          style: Styles.ts_8E9AB0_14sp,
        ),
        const SizedBox(height: 24),
      ],
    );
  }

  /// 验证码输入区域
  Widget _buildCodeInputSection() {
    return PinCodeTextField(
      appContext: context,
      length: 6,
      autoFocus: true,
      textStyle: Styles.ts_0C1C33_20sp_semibold,
      keyboardType: TextInputType.number,
      onChanged: logic.updateCode,
      onCompleted: logic.onCodeCompleted,
    );
  }

  /// 错误信息显示
  Widget _buildErrorSection() {
    return Obx(() {
      final errorText = logic.error.value;
      if (errorText == null) return const SizedBox.shrink();
      
      return Column(
        children: [
          const SizedBox(height: 12),
          Text(
            errorText, 
            style: TextStyle(color: Styles.c_FF381F),
          ),
        ],
      );
    });
  }

  /// 按钮区域
  Widget _buildButtonSection() {
    return Obx(() {
      if (logic.verified.value) {
        // 显示完成登录按钮
        return _buildCompleteLoginButton();
      } else {
        // 显示重新发送按钮
        return _buildResendButton();
      }
    });
  }

  /// 完成登录按钮
  Widget _buildCompleteLoginButton() {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: Obx(() => ElevatedButton(
        onPressed: logic.isLoading.value 
          ? null 
          : logic.completeLogin,
        child: logic.isLoading.value
          ? const SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                color: Colors.white,
                strokeWidth: 2,
              ),
            )
          // : Text('Log_in'.tr),
            : Text(''.tr),
      )),
    );
  }

  /// 重新发送按钮
  Widget _buildResendButton() {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: Obx(() => ElevatedButton(
        onPressed: logic.secondsLeft.value == 0 ? logic.resend : null,
        style: ElevatedButton.styleFrom(
          backgroundColor: logic.secondsLeft.value == 0 
            ? Styles.c_0089FF 
            : Styles.c_F0F2F6,
        ),
        child: Text(
          logic.secondsLeft.value == 0
            ? 'resend_code'.tr
            : '${'resend_code'.tr}(${logic.secondsLeft.value}s)',
          style: TextStyle(
            color: logic.secondsLeft.value == 0 
              ? Colors.white 
              : Styles.c_8E9AB0,
          ),
        ),
      )),
    );
  }
}
