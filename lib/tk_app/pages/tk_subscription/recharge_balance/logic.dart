import 'package:get/get.dart';

import 'state.dart';

class RechargeBalanceLogic extends GetxController {
  final RechargeBalanceState state = RechargeBalanceState();
  
  @override
  void onInit() {
    super.onInit();
    // 初始化充值页面数据
  }
  
  // 选择充值选项
  void selectRechargeOption(int index) {
    state.selectedOptionIndex.value = index;
  }
  
  // 切换协议同意状态
  void toggleAgreeToTerms() {
    state.agreeToTerms.value = !state.agreeToTerms.value;
  }
  
  // 查看购买与使用协议
  void viewPurchaseAgreement() {
    // TODO: 跳转到协议页面
    Get.snackbar('提示', '查看购买与使用协议功能正在开发中');
  }
  
  // 确认充值
  void confirmRecharge() {
    if (state.selectedOptionIndex.value == -1) {
      Get.snackbar('提示', '请选择充值选项');
      return;
    }
    
    if (!state.agreeToTerms.value) {
      Get.snackbar('提示', '请先同意购买与使用协议');
      return;
    }
    
    // TODO: 实现充值逻辑
    Get.snackbar('提示', '充值功能正在开发中');
  }
}
