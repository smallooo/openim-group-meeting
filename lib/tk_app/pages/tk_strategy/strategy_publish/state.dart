import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StrategyPublishState {
  // Tab选择 (0: 合约策略, 1: 现货策略)
  RxInt selectedTabIndex = 0.obs;
  
  // 输入框控制器
  TextEditingController titleController = TextEditingController();
  TextEditingController summaryController = TextEditingController();
  TextEditingController contentController = TextEditingController();
  TextEditingController coinController = TextEditingController();
  TextEditingController directionController = TextEditingController();
  
  // 类型选择 (UI索引: 0-短线, 1-中线, 2-长线 -> API值: 1-短线, 2-中线, 3-长线)
  RxInt selectedTypeIndex = 0.obs;
  List<String> typeOptions = ['短线', '中线', '长线'];
  
  // 价格设置
  List<TextEditingController> priceControllers = [];
  List<TextEditingController> limitPriceControllers = [];
  List<TextEditingController> optionalControllers = [];
  
  // 价格类型选择 (UI索引: 0-限价, 1-市价 -> API值: 1-限价, 2-市价)
  List<RxInt> priceTypeIndexes = [0.obs, 0.obs, 0.obs];
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
    // 初始化价格控制器
    for (int i = 0; i < 3; i++) {
      priceControllers.add(TextEditingController());
      limitPriceControllers.add(TextEditingController());
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
    
    for (var controller in priceControllers) {
      controller.dispose();
    }
    for (var controller in limitPriceControllers) {
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
}
