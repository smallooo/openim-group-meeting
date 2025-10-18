import 'package:get/get.dart';

/// 修改支付密码页面状态管理
/// 
/// 管理原密码、新密码输入、验证、提交等相关状态
class TkPayChangePassWordState {
  /// 原密码
  final oldPassword = ''.obs;
  
  /// 新密码
  final newPassword = ''.obs;
  
  /// 确认新密码
  final confirmPassword = ''.obs;
  
  /// 原密码输入错误信息
  final oldPasswordError = ''.obs;
  
  /// 新密码输入错误信息
  final newPasswordError = ''.obs;
  
  /// 确认密码输入错误信息
  final confirmPasswordError = ''.obs;
  
  /// 是否显示原密码
  final isOldPasswordVisible = false.obs;
  
  /// 是否显示新密码
  final isNewPasswordVisible = false.obs;
  
  /// 是否显示确认密码
  final isConfirmPasswordVisible = false.obs;
  
  /// 是否正在提交
  final isSubmitting = false.obs;
  
  /// 新密码是否匹配
  final passwordsMatch = false.obs;
  
  /// 是否可以提交
  final canSubmit = false.obs;

  TkPayChangePassWordState() {
    ///Initialize variables
  }
  
  /// 更新密码匹配状态
  /// 
  /// 检查两次输入的新密码是否一致
  void updatePasswordsMatch() {
    passwordsMatch.value = newPassword.value.isNotEmpty && 
                          confirmPassword.value.isNotEmpty && 
                          newPassword.value == confirmPassword.value;
  }
  
  /// 更新提交按钮可用状态
  /// 
  /// 检查是否满足提交条件：原密码不为空，新密码长度>=6，两次新密码一致，没有错误信息，未在提交中
  void updateCanSubmit() {
    canSubmit.value = oldPassword.value.isNotEmpty &&
                     newPassword.value.length >= 6 &&
                     passwordsMatch.value &&
                     oldPasswordError.value.isEmpty &&
                     newPasswordError.value.isEmpty &&
                     confirmPasswordError.value.isEmpty &&
                     !isSubmitting.value;
  }
}
