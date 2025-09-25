import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../core/network/api_client.dart';
import '../../../core/services/trader_status_service.dart';
import '../../../features/strategy/data/repositories/strategy_repository.dart';
import '../../../shared/models/strategy/strategy_publish_request.dart';
import 'widgets/simple_date_picker.dart';

import 'state.dart';

class StrategyPublishLogic extends GetxController {
  final StrategyPublishState state = StrategyPublishState();
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
  
  // 初始化仓库
  void _initializeRepository() {
    // 使用GetX的依赖注入获取ApiClient
    // 如果GetX中没有注册，则使用Riverpod的方式
    try {
      _strategyRepository = Get.find<StrategyRepository>();
    } catch (e) {
      // 如果GetX中没有找到，使用Riverpod的方式获取StrategyRepository
      print('Warning: 无法从GetX获取StrategyRepository，使用Riverpod方式: $e');
      _initializeRepositoryWithRiverpod();
    }
  }
  
  // 使用Riverpod初始化仓库
  void _initializeRepositoryWithRiverpod() async {
    try {
      // 使用全局的ProviderScope获取StrategyRepository（这个已经配置了认证拦截器）
      final container = ProviderScope.containerOf(Get.context!);
      _strategyRepository = await container.read(strategyRepositoryProvider.future);
    } catch (e) {
      print('Error: 使用Riverpod获取StrategyRepository失败: $e');
      // 如果创建失败，使用不带认证的ApiClient作为后备
      final apiClient = ApiClient();
      _strategyRepository = StrategyRepository(apiClient);
    }
  }
  
  // 切换Tab
  void switchTab(int index) {
    state.selectedTabIndex.value = index;
  }
  
  // 选择类型
  void selectType(int index) {
    state.selectedTypeIndex.value = index;
  }
  
  // 选择价格类型
  void selectPriceType(int priceIndex, int typeIndex) {
    state.priceTypeIndexes[priceIndex].value = typeIndex;
  }
  
  // 切换协议同意状态
  void toggleProtocolAgreement(bool value) {
    state.protocolAgreed.value = value;
  }
  
  // 发布策略
  Future<void> publishStrategy() async {
    if (!state.canPublish.value) {
      Get.snackbar('提示', '请填写完整信息并同意协议');
      return;
    }
    
    if (state.isPublishing.value) {
      return; // 防止重复提交
    }
    
    // 收起键盘
    FocusScope.of(Get.context!).unfocus();
    
    try {
      state.isPublishing.value = true;
      
      // 获取当前用户的交易员ID
      final traderStatusService = TraderStatusService.to;
      final currentTraderId = traderStatusService.traderId;
      
      if (currentTraderId.isEmpty) {
        Get.snackbar('错误', '无法获取交易员ID，请重新登录');
        return;
      }
      
      print('发布策略使用交易员ID: $currentTraderId');
      
      // 构建请求数据
      final request = StrategyPublishRequest(
        traderId: int.parse(currentTraderId), // 使用全局缓存的交易员ID
        title: state.titleController.text,
        summary: state.summaryController.text,
        content: state.contentController.text,
        coinSymbol: state.coinController.text,
        strategyType: state.selectedTypeIndex.value + 1, // 1-短线 2-中线 3-长线
        priceType: state.priceTypeIndexes[0].value + 1, // 1-限价 2-市价
        targetPrice: double.tryParse(state.limitPriceControllers[0].text) ?? 0.0,
        takeProfitPrice: double.tryParse(state.limitPriceControllers[1].text) ?? 0.0,
        stopLossPrice: double.tryParse(state.limitPriceControllers[2].text) ?? 0.0,
        validFrom: _formatDateTime(state.validFromDate.value!),
        validTo: _formatDateTime(state.validToDate.value!),
      );
      
      // 调用API发布策略
      final result = await _strategyRepository.publishStrategy(request);
      
      // 显示成功提示
      Get.snackbar(
        '发布成功', 
        '策略发布成功！\n策略ID: ${result.strategyId}',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.green,
        colorText: Colors.white,
        duration: const Duration(seconds: 3),
        margin: const EdgeInsets.all(16),
        borderRadius: 8,
      );
      
      // 延迟一下再返回，让用户看到成功提示
      await Future.delayed(const Duration(milliseconds: 1500));
      
      // 发布成功后返回上一页
      Get.back();
      
    } catch (e) {
      Get.snackbar(
        '发布失败', 
        '策略发布失败: $e',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red,
        colorText: Colors.white,
        duration: const Duration(seconds: 3),
        margin: const EdgeInsets.all(16),
        borderRadius: 8,
      );
    } finally {
      state.isPublishing.value = false;
    }
  }
  
  // 格式化日期时间为ISO 8601格式
  String _formatDateTime(DateTime dateTime) {
    return DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").format(dateTime.toUtc());
  }
  
  // 显示币种选择器
  void showCoinSelector() {
    Get.snackbar('提示', '币种选择器');
  }
  
  // 显示方向选择器
  void showDirectionSelector() {
    Get.snackbar('提示', '方向选择器');
  }
  
  // 显示有效期开始时间选择器
  void showValidFromDatePicker() async {
    final selectedDate = await showSimpleDatePicker(
      context: Get.context!,
      initialDate: state.validFromDate.value,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
      title: '选择开始日期',
    );
    
    if (selectedDate != null) {
      // 设置时间为当天的开始时间（00:00:00）
      final dateTime = DateTime(
        selectedDate.year,
        selectedDate.month,
        selectedDate.day,
        0, 0, 0,
      );
      state.setValidFromDate(dateTime);
    }
  }
  
  // 显示有效期结束时间选择器
  void showValidToDatePicker() async {
    final selectedDate = await showSimpleDatePicker(
      context: Get.context!,
      initialDate: state.validToDate.value,
      firstDate: state.validFromDate.value ?? DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
      title: '选择结束日期',
    );
    
    if (selectedDate != null) {
      // 设置时间为当天的结束时间（23:59:59）
      final dateTime = DateTime(
        selectedDate.year,
        selectedDate.month,
        selectedDate.day,
        23, 59, 59,
      );
      state.setValidToDate(dateTime);
    }
  }
}
