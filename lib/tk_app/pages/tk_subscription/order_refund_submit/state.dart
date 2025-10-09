import 'package:get/get.dart';

class OrderRefundSubmitState {
  // 退款请求ID
  RxString refundRequestId = ''.obs;
  
  // 提交日期
  RxString submissionDate = ''.obs;
  
  // 退款原因
  RxString refundReason = ''.obs;
  
  // 退款类型
  RxInt refundType = 0.obs;
  
  OrderRefundSubmitState() {
    ///Initialize variables
  }
  
  // 设置退款申请数据
  void setRefundData({
    required String requestId,
    required String date,
    required String reason,
    required int type,
  }) {
    refundRequestId.value = requestId;
    submissionDate.value = date;
    refundReason.value = reason;
    refundType.value = type;
  }
}
