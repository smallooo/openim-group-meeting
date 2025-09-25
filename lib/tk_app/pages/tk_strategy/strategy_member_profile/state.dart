import 'package:get/get.dart';

class StrategyMemberProfileState {
  // 用户信息
  RxString userAvatar = ''.obs;
  RxString userName = ''.obs;
  
  // 统计数据
  RxInt myStrategiesCount = 19.obs;
  RxInt myViewsCount = 32.obs;
  RxInt subscribersCount = 99.obs;
  
  // 分账比例
  RxString subscriptionSplitRatio = '60%'.obs;
  RxString rewardSplitRatio = '50%'.obs;
  RxString liveSplitRatio = '0%'.obs;
  
  // 加载状态
  RxBool isLoading = false.obs;
  
  StrategyMemberProfileState() {
    ///Initialize variables
  }
}
