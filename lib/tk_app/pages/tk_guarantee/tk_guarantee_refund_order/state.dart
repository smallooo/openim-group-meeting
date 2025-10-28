import 'package:get/get.dart';
import 'model/guarantee_refund_order_model.dart';

class TkGuaranteeRefundOrderState {
  TkGuaranteeRefundOrderState() {
    ///Initialize variables
  }

  // 退款订单数据
  final refundRecords = <RefundRecord>[].obs;

  // 加载状态
  final isLoading = false.obs;

  // 分页信息
  final currentPage = 1.obs;
  final totalCount = 0.obs;
  final hasMore = true.obs;
}
