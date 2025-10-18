import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class TkPaySetPassWordPage extends StatelessWidget {
  TkPaySetPassWordPage({Key? key}) : super(key: key);

  final logic = Get.find<TkPaySetPassWordLogic>();
  final state = Get.find<TkPaySetPassWordLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          '设置支付密码',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Get.back(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            const SizedBox(height: 20),
            
            // 页面说明
            const Text(
              '为了您的资金安全，请设置6位数字支付密码',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                height: 1.5,
              ),
            ),
            
            const SizedBox(height: 40),
            
            // 第一次输入密码
            _buildPasswordField(
              label: '请输入支付密码',
              hintText: '请输入6位数字密码',
              onChanged: (value) => logic.onPasswordChanged(value),
              isVisible: state.isPasswordVisible,
              onVisibilityToggle: () => state.isPasswordVisible.toggle(),
            ),
            
            const SizedBox(height: 24),
            
            // 确认密码
            Obx(() => _buildPasswordField(
              label: '请再次输入密码',
              hintText: '请再次输入6位数字密码',
              onChanged: (value) => logic.onConfirmPasswordChanged(value),
              isVisible: state.isConfirmPasswordVisible,
              onVisibilityToggle: () => state.isConfirmPasswordVisible.toggle(),
              errorText: state.confirmPasswordError.value.isNotEmpty 
                  ? state.confirmPasswordError.value 
                  : null,
            )),
            
            const SizedBox(height: 40),
            
            // 提交按钮
            Obx(() => SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: state.canSubmit.value ? logic.onSubmitPassword : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: state.canSubmit.value ? const Color(0xFF9E13F7) : Colors.grey[300],
                  foregroundColor: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: state.isSubmitting.value
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                        ),
                      )
                    : const Text(
                        '确认设置',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
              ),
            )),
            
            const SizedBox(height: 20),
            
            // 安全提示
            // Container(
            //   padding: const EdgeInsets.all(16),
            //   decoration: BoxDecoration(
            //     color: Colors.orange[50],
            //     borderRadius: BorderRadius.circular(8),
            //     border: Border.all(color: Colors.orange[200]!),
            //   ),
            //   child: Row(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Icon(
            //         Icons.info_outline,
            //         color: Colors.orange[600],
            //         size: 20,
            //       ),
            //       const SizedBox(width: 8),
            //       Expanded(
            //         child: Text(
            //           '请妥善保管您的支付密码，不要告诉他人。如忘记密码，可通过修改密码功能重新设置。',
            //           style: TextStyle(
            //             fontSize: 14,
            //             color: Colors.orange[800],
            //             height: 1.4,
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
        ),
      ),
    );
  }

  /// 构建密码输入框
  Widget _buildPasswordField({
    required String label,
    required String hintText,
    required Function(String) onChanged,
    required RxBool isVisible,
    required VoidCallback onVisibilityToggle,
    String? errorText,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        Obx(() => TextField(
          onChanged: onChanged,
          obscureText: !isVisible.value,
          keyboardType: TextInputType.number,
          maxLength: 6,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey[400]),
            errorText: errorText,
            counterText: '',
            suffixIcon: IconButton(
              icon: Icon(
                isVisible.value ? Icons.visibility : Icons.visibility_off,
                color: Colors.grey[600],
              ),
              onPressed: onVisibilityToggle,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.grey[300]!),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.grey[300]!),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.blue),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.red),
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
          ),
        )),
      ],
    );
  }
}
