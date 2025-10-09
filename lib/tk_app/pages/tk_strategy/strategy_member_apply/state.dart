import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StrategyMemberApplyState {
  // 用户头像
  RxString avatarUrl = ''.obs;
  
  // 输入框控制器
  TextEditingController nicknameController = TextEditingController();
  TextEditingController introController = TextEditingController();

  // 合约策略的收费设置
  TextEditingController contractMonthlyFeeController = TextEditingController();
  TextEditingController contractQuarterlyFeeController = TextEditingController();
  TextEditingController contractYearlyFeeController = TextEditingController();
  RxBool contractMonthlyFeeEnabled = false.obs;
  RxBool contractQuarterlyFeeEnabled = false.obs;
  RxBool contractYearlyFeeEnabled = false.obs;

  // 现货策略的收费设置
  TextEditingController spotMonthlyFeeController = TextEditingController();
  TextEditingController spotQuarterlyFeeController = TextEditingController();
  TextEditingController spotYearlyFeeController = TextEditingController();
  RxBool spotMonthlyFeeEnabled = false.obs;
  RxBool spotQuarterlyFeeEnabled = false.obs;
  RxBool spotYearlyFeeEnabled = false.obs;

  // 当前选中的tab (0: 合约策略, 1: 现货策略)
  RxInt selectedTabIndex = 0.obs;

  // 隐私政策同意状态
  RxBool privacyPolicyAgreed = false.obs;
  
  // 提交按钮状态
  RxBool canSubmit = false.obs;
  
  // 提交中状态
  RxBool isSubmitting = false.obs;

  StrategyMemberApplyState() {
    // 初始化默认值
    contractMonthlyFeeController.text = '30';
    contractQuarterlyFeeController.text = '72';
    contractYearlyFeeController.text = '288';
    spotMonthlyFeeController.text = '30';
    spotQuarterlyFeeController.text = '72';
    spotYearlyFeeController.text = '288';

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
    contractMonthlyFeeController.dispose();
    contractQuarterlyFeeController.dispose();
    contractYearlyFeeController.dispose();
    spotMonthlyFeeController.dispose();
    spotQuarterlyFeeController.dispose();
    spotYearlyFeeController.dispose();
  }
}
