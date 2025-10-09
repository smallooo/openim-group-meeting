import 'package:get/get.dart';

import 'state.dart';

class OrderRefundSubmitLogic extends GetxController {
  final OrderRefundSubmitState state = OrderRefundSubmitState();
  
  @override
  void onInit() {
    super.onInit();
    // 生成退款请求ID和当前时间
    _generateRefundData();
  }
  
  // 生成退款数据
  void _generateRefundData() {
    // 生成退款请求ID
    String requestId = 'REF${DateTime.now().millisecondsSinceEpoch}';
    
    // 格式化当前时间
    DateTime now = DateTime.now();
    String formattedDate = '${now.year}年${now.month}月${now.day}日${now.hour.toString().padLeft(2, '0')}-${now.minute.toString().padLeft(2, '0')}';
    
    // 设置默认数据（实际应该从上一页面传递）
    state.setRefundData(
      requestId: requestId,
      date: formattedDate,
      reason: '商品质量问题',
      type: 0,
    );
  }
  
  // 跟踪退款状态
  void trackRefundStatus() {
    // Get.snackbar('提示', '跳转到退款状态跟踪页面');
    // TODO: 跳转到退款状态跟踪页面
    Get.back();
  }
  
  // 完成操作
  void complete() {
    Get.back();
    Get.back(); // 返回到订单列表页面
  }
  
  // 返回上一页
  void goBack() {
    Get.back();
  }
}
