import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StrategyPublishState {
  // Tab选择 (0: 合约策略, 1: 现货策略)
  RxInt selectedTabIndex = 0.obs;
  
  // 市场类型常量
  static const String marketTypeFutures = 'FUTURES'; // 合约
  static const String marketTypeSpot = 'SPOT';       // 现货
  
  // 市场类型映射
  static const Map<int, String> marketTypeMap = {
    0: marketTypeFutures, // 合约策略
    1: marketTypeSpot,    // 现货策略
  };
  
  // 输入框控制器
  TextEditingController titleController = TextEditingController();
  TextEditingController summaryController = TextEditingController();
  TextEditingController contentController = TextEditingController();
  TextEditingController coinController = TextEditingController();
  TextEditingController directionController = TextEditingController();
  
  // 类型选择 (UI索引: 0-短线, 1-中线, 2-长线 -> API值: 1-短线, 2-中线, 3-长线)
  RxInt selectedTypeIndex = 0.obs;
  List<String> typeOptions = ['短线', '中线', '长线'];
  
  // 价格设置 - 为限价和市价分别创建独立的控制器
  List<TextEditingController> priceControllers = [];
  List<TextEditingController> limitPriceControllers = []; // 限价模式的价格控制器
  List<TextEditingController> marketPriceControllers = []; // 市价模式的价格控制器
  List<TextEditingController> optionalControllers = [];
  
  // 价格类型选择 (全局: 0-限价, 1-市价 -> API值: 1-限价, 2-市价)
  RxInt priceTypeIndex = 0.obs;
  List<String> priceTypeOptions = ['限价', '市价'];
  
  // 协议同意状态
  RxBool protocolAgreed = false.obs;
  
  // 发布按钮状态
  RxBool canPublish = false.obs;
  
  // 发布状态
  RxBool isPublishing = false.obs;
  
  // 有效期设置
  Rx<DateTime?> validFromDate = Rx<DateTime?>(null);
  Rx<DateTime?> validToDate = Rx<DateTime?>(null);

  StrategyPublishState() {
    // 初始化价格控制器 - 为每种价格类型创建独立的控制器
    for (int i = 0; i < 3; i++) {
      priceControllers.add(TextEditingController());
      limitPriceControllers.add(TextEditingController()); // 限价模式控制器
      marketPriceControllers.add(TextEditingController()); // 市价模式控制器
      optionalControllers.add(TextEditingController());
    }
    
    // 监听输入框变化
    titleController.addListener(_updateCanPublish);
    summaryController.addListener(_updateCanPublish);
    contentController.addListener(_updateCanPublish);
    coinController.addListener(_updateCanPublish);
    directionController.addListener(_updateCanPublish);
    
    // 监听协议同意状态变化
    protocolAgreed.listen((_) => _updateCanPublish());
  }
  
  void _updateCanPublish() {
    canPublish.value = titleController.text.isNotEmpty && 
                      summaryController.text.isNotEmpty &&
                      contentController.text.isNotEmpty && 
                      coinController.text.isNotEmpty &&
                      directionController.text.isNotEmpty &&
                      validFromDate.value != null &&
                      validToDate.value != null &&
                      protocolAgreed.value;
  }
  
  void dispose() {
    titleController.dispose();
    summaryController.dispose();
    contentController.dispose();
    coinController.dispose();
    directionController.dispose();
    
    // 释放所有价格控制器
    for (var controller in priceControllers) {
      controller.dispose();
    }
    for (var controller in limitPriceControllers) {
      controller.dispose();
    }
    for (var controller in marketPriceControllers) {
      controller.dispose();
    }
    for (var controller in optionalControllers) {
      controller.dispose();
    }
  }
  
  // 设置有效期开始时间
  void setValidFromDate(DateTime date) {
    validFromDate.value = date;
    _updateCanPublish();
  }
  
  // 设置有效期结束时间
  void setValidToDate(DateTime date) {
    validToDate.value = date;
    _updateCanPublish();
  }
  
  // 获取当前市场类型
  String get currentMarketType {
    return marketTypeMap[selectedTabIndex.value] ?? marketTypeFutures;
  }
  
  // 获取市场类型显示名称
  String get currentMarketTypeDisplayName {
    return selectedTabIndex.value == 0 ? '合约策略' : '现货策略';
  }
  
  /// 根据价格类型获取对应的价格控制器
  /// [priceIndex] 价格索引 (0-目标价格, 1-止盈价格, 2-止损价格)
  /// [priceTypeIndex] 价格类型索引 (0-限价, 1-市价)
  TextEditingController getPriceController(int priceIndex, int priceTypeIndex) {
    if (priceTypeIndex == 0) {
      // 限价模式
      return limitPriceControllers[priceIndex];
    } else {
      // 市价模式
      return marketPriceControllers[priceIndex];
    }
  }
  
  /// 获取当前选中价格类型对应的控制器
  /// [priceIndex] 价格索引 (0-目标价格, 1-止盈价格, 2-止损价格)
  TextEditingController getCurrentPriceController(int priceIndex) {
    return getPriceController(priceIndex, priceTypeIndex.value);
  }
}
