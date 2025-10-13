import 'package:get/get.dart';

class StrategySubscriptionState {
  // 订阅时长选项
  RxInt selectedDurationIndex = 1.obs; // 默认选择1季（中间选项）
  RxList<SubscriptionDuration> durationOptions = <SubscriptionDuration>[].obs;

  // 钱包余额
  RxString walletBalance = '0 U'.obs;
  
  // 自动续订开关
  RxBool autoRenewal = true.obs;
  
  // 服务信息
  RxString serviceName = 'MACD趋势大师'.obs;
  RxString serviceDescription = 'MACD趋势大师的核心是 MAC'.obs;
  RxString serviceAvatar = ''.obs;
  
  // 当前选中的价格
  String get currentPrice => durationOptions.isNotEmpty ? durationOptions[selectedDurationIndex.value].price : '';
  
  StrategySubscriptionState() {
    ///Initialize variables
  }
}

class SubscriptionDuration {
  final String duration;
  final String price;
  final String originalPrice;
  final bool isLimited;
  
  SubscriptionDuration({
    required this.duration,
    required this.price,
    required this.originalPrice,
    required this.isLimited,
  });
}
