import 'package:get/get.dart';
class OrderSetState {
  late final RxString exceedRangeType;
  late final RxString strategyMode;
  late final RxString fullOrderStopLoss;
  late final RxString buyFirstOrderOutsideRange;
  late final RxString multiDirectionalLinkage;

  OrderSetState() {
    exceedRangeType = ''.obs;
    strategyMode = ''.obs;
    fullOrderStopLoss = ''.obs;
    buyFirstOrderOutsideRange = ''.obs;
    multiDirectionalLinkage = ''.obs;
  }
}
