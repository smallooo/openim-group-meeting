import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:openim_common/openim_common.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'logic.dart';
import 'state.dart';

class VerifyPasswordPage extends StatelessWidget {
  const VerifyPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 获取已注册的控制器
    final logic = Get.find<VerifyPasswordLogic>();
    final state = logic.state;
      
      return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        surfaceTintColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Get.back(),
        ),
        title: const Text(
          '',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: Obx(() => _buildBody(context, logic, state)),
    );
  }
  
  Widget _buildBody(BuildContext context, VerifyPasswordLogic logic, VerifyPasswordState state) {
    return GestureDetector(
      onTap: () {
        // 点击空白地方收起键盘
        FocusScope.of(context).unfocus();
      },
      child: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top + kToolbarHeight + 0, // 状态栏高度 + 导航栏高度 + 额外间距
          left: MediaQuery.of(context).size.width * 0.05, // 5% 左边距
          right: MediaQuery.of(context).size.width * 0.05, // 5% 右边距
          bottom: 20,
        ),
      child: Column(
        children: [
          // 图片占位符
          _buildImagePlaceholder(context),
          
          // const SizedBox(height: 40),
          
          // 标题和描述
          _buildTitleAndDescription(),
          
          const SizedBox(height: 40),
          
          // PIN码输入区域
          _buildPinInputSection(context, logic, state),
          
          const SizedBox(height: 30),
          
          // 分隔符
          _buildSeparator(),
          
          const SizedBox(height: 30),
          
          // 生物识别区域
          _buildBiometricSection(context, logic, state),
          
          const SizedBox(height: 50),
          
          // 错误信息
          if (state.errorMessage.value.isNotEmpty)
            _buildErrorMessage(state),
          
          const SizedBox(height: 20),
          
          // 验证按钮
          _buildVerifyButton(context, logic, state),
        ],
      ),
      ),
    );
  }
  
  Widget _buildImagePlaceholder(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.6,
      height: MediaQuery.of(context).size.width * 0.6,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.black.withValues(alpha: 0.1),
        //     blurRadius: 10,
        //     offset: const Offset(0, 4),
        //   ),
        // ],
      ),
      child: Center(
        child: ImageRes.tkSecurityLogo.toImage
          ..width = MediaQuery.of(context).size.width * 0.4
          ..height = MediaQuery.of(context).size.width * 0.4,
      ),
    );
  }
  
  Widget _buildTitleAndDescription() {
    return Column(
      children: [
        const Text(
          '钱包验证',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFF333333),
          ),
        ),
        const SizedBox(height: 12),
        Text(
          '请通过输入 PIN 码或使用生物识别认证来验证您的钱包以确保交易安全。',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            color: const Color(0xFF666666),
            height: 1.5,
          ),
        ),
      ],
    );
  }
  
  Widget _buildPinInputSection(BuildContext context, VerifyPasswordLogic logic, VerifyPasswordState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          '输入您的PIN码',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color(0xFF333333),
          ),
        ),
        const SizedBox(height: 16),
        _buildPinInputFields(context, logic, state),
      ],
    );
  }
  
  Widget _buildPinInputFields(BuildContext context, VerifyPasswordLogic logic, VerifyPasswordState state) {
    return PinCodeTextField(
      key: ValueKey('pin_input_${logic.hashCode}'),
      appContext: context,
      length: 6,
      controller: logic.pinController,
      keyboardType: TextInputType.number,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(12),
        fieldHeight: MediaQuery.of(context).size.width * 0.12,
        fieldWidth: MediaQuery.of(context).size.width * 0.12,
        activeFillColor: const Color(0xFFF8F8F8),
        inactiveFillColor: const Color(0xFFF8F8F8),
        selectedFillColor: const Color(0xFFF8F8F8),
        activeColor: const Color(0xFF7C4DFF),
        inactiveColor: const Color(0xFFE0E0E0),
        selectedColor: const Color(0xFF7C4DFF),
        borderWidth: 1.5,
      ),
      cursorColor: const Color(0xFF7C4DFF),
      animationDuration: const Duration(milliseconds: 300),
      enableActiveFill: true,
      onCompleted: (value) {
        // PIN码输入完成时的回调
        state.clearError();
      },
      onChanged: (value) {
        logic.onPinChanged(value);
      },
      beforeTextPaste: (text) {
        // 只允许粘贴数字
        return text?.replaceAll(RegExp(r'[^0-9]'), '').isNotEmpty ?? false;
      },
    );
  }
  
  Widget _buildSeparator() {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 1,
            color: const Color(0xFFE0E0E0),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            '或者',
            style: TextStyle(
              fontSize: 14,
              color: Color(0xFF666666),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 1,
            color: const Color(0xFFE0E0E0),
          ),
        ),
      ],
    );
  }
  
  Widget _buildBiometricSection(BuildContext context, VerifyPasswordLogic logic, VerifyPasswordState state) {
    return Obx(() => GestureDetector(
      onTap: () => logic.toggleBiometric(),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: const Color(0xFFE0E0E0),
            width: 1,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            // 生物识别图标
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: const Color(0xFF7C4DFF).withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(
                Icons.fingerprint,
                color: Color(0xFF7C4DFF),
                size: 24,
              ),
            ),
            const SizedBox(width: 16),
            // 文本信息
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '指纹/Face ID',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF333333),
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    '使用指纹或面部识别验证',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF666666),
                    ),
                  ),
                ],
              ),
            ),
            // 开关
            Switch(
              value: state.isBiometricEnabled.value,
              onChanged: (value) => logic.toggleBiometric(),
              activeColor: const Color(0xFF7C4DFF),
            ),
          ],
        ),
      ),
    ));
  }
  
  Widget _buildErrorMessage(VerifyPasswordState state) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xFFFFEBEE),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: const Color(0xFFFFCDD2),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.error_outline,
            color: Color(0xFFD32F2F),
            size: 20,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              state.errorMessage.value,
              style: const TextStyle(
                color: Color(0xFFD32F2F),
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
  
  Widget _buildVerifyButton(BuildContext context, VerifyPasswordLogic logic, VerifyPasswordState state) {
    return Obx(() => SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: state.isVerifying.value ? null : logic.performVerification,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF9E13F7),
          foregroundColor: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: state.isVerifying.value
            ? const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              )
            : const Text(
                '验证',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
      ),
    ));
  }
}
