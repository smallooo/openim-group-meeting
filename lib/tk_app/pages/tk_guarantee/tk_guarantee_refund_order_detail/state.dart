import 'package:get/get.dart';
import 'model/guarantee_refund_order_detail_model.dart';

class TkGuaranteeRefundOrderDetailState {
  TkGuaranteeRefundOrderDetailState();

  final isLoading = false.obs;
  final detail = Rxn<RefundDetailData>();
}

