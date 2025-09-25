import 'package:get/get.dart';

import 'logic.dart';

class StrategyDetailBinding extends Bindings {
  final String strategyId;
  
  StrategyDetailBinding({required this.strategyId});
  
  @override
  void dependencies() {
    Get.lazyPut(() => StrategyDetailLogic(strategyId: strategyId));
  }
}
