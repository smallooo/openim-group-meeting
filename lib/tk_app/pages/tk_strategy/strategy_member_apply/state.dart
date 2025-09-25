import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StrategyMemberApplyState {
  // 用户头像
  RxString avatarUrl = ''.obs;
  
  // 输入框控制器
  TextEditingController nicknameController = TextEditingController();
  TextEditingController introController = TextEditingController();
  TextEditingController monthlyFeeController = TextEditingController();
  TextEditingController quarterlyFeeController = TextEditingController();
  TextEditingController yearlyFeeController = TextEditingController();
  
  // 当前选中的tab (0: 合约策略, 1: 现货策略)
  RxInt selectedTabIndex = 0.obs;
  
  // 订阅费开关状态
  RxBool monthlyFeeEnabled = false.obs;
  RxBool quarterlyFeeEnabled = false.obs;
  RxBool yearlyFeeEnabled = false.obs;
  
  // 隐私政策同意状态
  RxBool privacyPolicyAgreed = false.obs;
  
  // 提交按钮状态
  RxBool canSubmit = false.obs;
  
  // 提交中状态
  RxBool isSubmitting = false.obs;

  StrategyMemberApplyState() {
    // 初始化默认值
    monthlyFeeController.text = '30';
    quarterlyFeeController.text = '72';
    yearlyFeeController.text = '288';
    
    // 监听输入框变化
    nicknameController.addListener(_updateCanSubmit);
    introController.addListener(_updateCanSubmit);
    
    // 监听隐私政策变化
    privacyPolicyAgreed.listen((_) => _updateCanSubmit());
  }
  
  void _updateCanSubmit() {
    canSubmit.value = nicknameController.text.isNotEmpty && 
                     introController.text.isNotEmpty && 
                     privacyPolicyAgreed.value;
  }
  
  void dispose() {
    nicknameController.dispose();
    introController.dispose();
    monthlyFeeController.dispose();
    quarterlyFeeController.dispose();
    yearlyFeeController.dispose();
  }
}
