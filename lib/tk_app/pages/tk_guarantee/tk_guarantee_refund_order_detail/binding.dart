import 'package:get/get.dart';
import 'logic.dart';

class TkGuaranteeRefundOrderDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TkGuaranteeRefundOrderDetailLogic>(() => TkGuaranteeRefundOrderDetailLogic());
  }
}



