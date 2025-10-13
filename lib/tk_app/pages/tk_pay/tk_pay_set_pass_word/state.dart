import 'package:get/get.dart';

/// 设置支付密码页面状态管理
/// 
/// 管理密码输入、验证、提交等相关状态
class TkPaySetPassWordState {
  /// 第一次输入的密码
  final password = ''.obs;
  
  /// 确认密码
  final confirmPassword = ''.obs;
  
  /// 密码输入错误信息
  final passwordError = ''.obs;
  
  /// 确认密码输入错误信息
  final confirmPasswordError = ''.obs;
  
  /// 是否显示密码
  final isPasswordVisible = false.obs;
  
  /// 是否显示确认密码
  final isConfirmPasswordVisible = false.obs;
  
  /// 是否正在提交
  final isSubmitting = false.obs;
  
  /// 密码是否匹配
  final passwordsMatch = false.obs;
  
  /// 是否可以提交
  final canSubmit = false.obs;

  TkPaySetPassWordState() {
    ///Initialize variables
  }
  
  /// 更新密码匹配状态
  /// 
  /// 检查两次输入的密码是否一致
  void updatePasswordsMatch() {
    passwordsMatch.value = password.value.isNotEmpty && 
                          confirmPassword.value.isNotEmpty && 
                          password.value == confirmPassword.value;
  }
  
  /// 更新提交按钮可用状态
  /// 
  /// 检查是否满足提交条件：密码长度>=6，两次密码一致，没有错误信息，未在提交中
  void updateCanSubmit() {
    canSubmit.value = password.value.length >= 6 &&
                     passwordsMatch.value &&
                     passwordError.value.isEmpty &&
                     confirmPasswordError.value.isEmpty &&
                     !isSubmitting.value;
  }
}
