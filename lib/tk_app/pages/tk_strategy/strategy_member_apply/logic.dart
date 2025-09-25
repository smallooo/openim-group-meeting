import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/network/api_client.dart';
import '../../../core/services/trader_status_service.dart';
import '../../../features/strategy/data/repositories/strategy_repository.dart';
import '../../../shared/models/strategy/trader_apply_request.dart';
import 'state.dart';

class StrategyMemberApplyLogic extends GetxController {
  final StrategyMemberApplyState state = StrategyMemberApplyState();
  late final StrategyRepository _strategyRepository;
  
  @override
  void onInit() {
    super.onInit();
    _initializeRepository();
  }
  
  @override
  void onClose() {
    state.dispose();
    super.onClose();
  }
  
  // 初始化仓库（参考其他页面的实现）
  void _initializeRepository() {
    try {
      _strategyRepository = Get.find<StrategyRepository>();
    } catch (e) {
      print('Warning: 无法从GetX获取StrategyRepository，使用Riverpod方式: $e');
      _initializeRepositoryWithRiverpod();
    }
  }
  
  // 使用Riverpod初始化仓库
  void _initializeRepositoryWithRiverpod() async {
    try {
      final container = ProviderContainer();
      _strategyRepository = await container.read(strategyRepositoryProvider.future);
    } catch (e) {
      print('Error: 使用Riverpod获取StrategyRepository失败: $e');
      final apiClient = ApiClient();
      _strategyRepository = StrategyRepository(apiClient);
    }
  }
  
  // 切换tab
  void switchTab(int index) {
    state.selectedTabIndex.value = index;
  }
  
  // 切换订阅费开关
  void toggleMonthlyFee(bool value) {
    state.monthlyFeeEnabled.value = value;
  }
  
  void toggleQuarterlyFee(bool value) {
    state.quarterlyFeeEnabled.value = value;
  }
  
  void toggleYearlyFee(bool value) {
    state.yearlyFeeEnabled.value = value;
  }
  
  // 切换隐私政策同意状态
  void togglePrivacyPolicy(bool value) {
    state.privacyPolicyAgreed.value = value;
  }
  
  // 选择头像
  Future<void> pickAvatar() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      state.avatarUrl.value = image.path;
    }
  }
  
  // 提交申请
  Future<void> submitApplication() async {
    if (!state.canSubmit.value) {
      Get.snackbar('提示', '请完善申请信息');
      return;
    }
    
    if (state.isSubmitting.value) {
      return; // 防止重复提交
    }
    
    try {
      state.isSubmitting.value = true;
      
      // 构建价格配置数组 - 只包含当前选中的策略类型
      final List<PricingConfig> pricingConfigs = [];
      final strategyType = state.selectedTabIndex.value == 0 ? 'FUTURES' : 'SPOT'; // 0-合约, 1-现货
      
      pricingConfigs.add(PricingConfig(
        traderId: 0, // 默认为0
        strategyType: strategyType,
        monthlyPrice: state.monthlyFeeEnabled.value 
            ? double.tryParse(state.monthlyFeeController.text) ?? 0.0 
            : 0.0,
        quarterlyPrice: state.quarterlyFeeEnabled.value 
            ? double.tryParse(state.quarterlyFeeController.text) ?? 0.0 
            : 0.0,
        yearlyPrice: state.yearlyFeeEnabled.value 
            ? double.tryParse(state.yearlyFeeController.text) ?? 0.0 
            : 0.0,
        currency: 'CNY',
      ));
      
      // 构建申请请求数据
      final request = TraderApplyRequest(
        traderName: state.nicknameController.text,
        traderAvatar: 'https://img11.360buyimg.com/img/jfs/t1/275721/2/1900/17609/67d15ec5Fbfdce671/4f23c5ca45c211c7.png',
        bio: state.introController.text,
        pricingConfigs: pricingConfigs,
      );
      
      print('申请参数: ${request.toJson()}');
      
      // 调用API申请交易员
      final result = await _strategyRepository.applyTrader(request);
      
      print('申请结果: traderId=${result.traderId}, status=${result.status}');
      
      // 申请成功后，立即更新交易员状态
      await _refreshTraderStatus(result.traderId);
      
      // 显示成功提示
      Get.snackbar(
        '申请成功', 
        '交易员申请已提交成功！\n交易员ID: ${result.traderId}\n状态: ${result.status}',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.green,
        colorText: Colors.white,
        duration: const Duration(seconds: 3),
        margin: const EdgeInsets.all(16),
        borderRadius: 8,
      );
      
      // 延迟一下再返回，让用户看到成功提示
      await Future.delayed(const Duration(milliseconds: 1500));
      
      // 申请成功后返回上一页
      Get.back();
      
    } catch (e) {
      print('申请交易员失败: $e');
      Get.snackbar(
        '申请失败', 
        '交易员申请失败: $e',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red,
        colorText: Colors.white,
        duration: const Duration(seconds: 3),
        margin: const EdgeInsets.all(16),
        borderRadius: 8,
      );
    } finally {
      state.isSubmitting.value = false;
    }
  }
  
  // 刷新交易员状态
  Future<void> _refreshTraderStatus(String newTraderId) async {
    try {
      print('申请成功后刷新交易员状态...');
      
      // 确保TraderStatusService已注册
      if (!Get.isRegistered<TraderStatusService>()) {
        Get.put(TraderStatusService());
      }
      
      // 重新检查交易员状态
      await TraderStatusService.to.checkTraderStatus();
      
      print('交易员状态刷新完成');
    } catch (e) {
      print('刷新交易员状态失败: $e');
      // 即使刷新失败，也不影响申请成功的流程
    }
  }
}
