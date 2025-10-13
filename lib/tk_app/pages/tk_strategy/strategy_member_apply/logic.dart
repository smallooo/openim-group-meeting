import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/helpers/trader_helpers.dart';
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

  // 合约策略的订阅费开关
  void toggleContractMonthlyFee(bool value) {
    state.contractMonthlyFeeEnabled.value = value;
  }

  void toggleContractQuarterlyFee(bool value) {
    state.contractQuarterlyFeeEnabled.value = value;
  }

  void toggleContractYearlyFee(bool value) {
    state.contractYearlyFeeEnabled.value = value;
  }

  // 现货策略的订阅费开关
  void toggleSpotMonthlyFee(bool value) {
    state.spotMonthlyFeeEnabled.value = value;
  }

  void toggleSpotQuarterlyFee(bool value) {
    state.spotQuarterlyFeeEnabled.value = value;
  }

  void toggleSpotYearlyFee(bool value) {
    state.spotYearlyFeeEnabled.value = value;
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

      final List<PricingConfig> pricingConfigs = [];

      // 为 "FUTURES" 构建价格配置
      final futuresConfig = _buildPricingConfig(
        'FUTURES',
        state.contractMonthlyFeeEnabled.value,
        state.contractQuarterlyFeeEnabled.value,
        state.contractYearlyFeeEnabled.value,
        state.contractMonthlyFeeController,
        state.contractQuarterlyFeeController,
        state.contractYearlyFeeController,
      );
      if (futuresConfig != null) {
        pricingConfigs.add(futuresConfig);
      }

      // 为 "SPOT" 构建价格配置
      final spotConfig = _buildPricingConfig(
        'SPOT',
        state.spotMonthlyFeeEnabled.value,
        state.spotQuarterlyFeeEnabled.value,
        state.spotYearlyFeeEnabled.value,
        state.spotMonthlyFeeController,
        state.spotQuarterlyFeeController,
        state.spotYearlyFeeController,
      );
      if (spotConfig != null) {
        pricingConfigs.add(spotConfig);
      }

      // 构建申请请求数据
      final request = TraderApplyRequest(
        traderName: state.nicknameController.text,
        traderAvatar: 'https://img11.360buyimg.com/img/jfs/t1/275721/2/1900/17609/67d15ec5Fbfdce671/4f23c5ca45c211c7.png',
        bio: state.introController.text,
        pricingConfigs: pricingConfigs,
      );


      print("....");
      print("....");

      // 发起申请
      final result = await _strategyRepository.applyTrader(request);

      // 申请成功后，刷新交易员状态
      await _refreshTraderStatus();

      checkAndRefreshTraderStatus();

      Get.snackbar('成功', '申请已提交');
      Get.back();
    } catch (e) {
      // 提取并显示更友好的错误信息
      String errorMessage = e.toString();
      if (e is Exception) {
        // 尝试从Exception中提取可读信息
        final message = e.toString();
        if (message.startsWith('Exception: ')) {
          errorMessage = message.substring('Exception: '.length);
        }
      }
      Get.snackbar('错误', '提交申请失败: $errorMessage');
    } finally {
      state.isSubmitting.value = false;
    }
  }

  // 根据策略类型构建价格配置
  PricingConfig? _buildPricingConfig(
    String strategyType,
    bool monthlyEnabled,
    bool quarterlyEnabled,
    bool yearlyEnabled,
    TextEditingController monthlyController,
    TextEditingController quarterlyController,
    TextEditingController yearlyController,
  ) {
    final Map<String, dynamic> pricingConfigMap = {
      'traderId': 0,
      'strategyType': strategyType,
      'currency': 'CNY',
    };

    bool hasPrice = false;
    if (monthlyEnabled) {
      final price = double.tryParse(monthlyController.text);
      if (price != null && price > 0) {
        pricingConfigMap['monthlyPrice'] = price;
        hasPrice = true;
      }
    }
    if (quarterlyEnabled) {
      final price = double.tryParse(quarterlyController.text);
      if (price != null && price > 0) {
        pricingConfigMap['quarterlyPrice'] = price;
        hasPrice = true;
      }
    }
    if (yearlyEnabled) {
      final price = double.tryParse(yearlyController.text);
      if (price != null && price > 0) {
        pricingConfigMap['yearlyPrice'] = price;
        hasPrice = true;
      }
    }

    return hasPrice ? PricingConfig.fromJson(pricingConfigMap) : null;
  }

  void pickAndUploadImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      state.avatarUrl.value = image.path;
    }
  }
  
  // 刷新交易员状态
  Future<void> _refreshTraderStatus() async {
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
