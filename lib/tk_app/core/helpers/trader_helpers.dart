import 'package:get/get.dart';
import '../services/trader_status_service.dart';

/// 检查并刷新交易员状态
///
/// 这个辅助函数会确保 [TraderStatusService] 已经注册，
/// 然后调用其 [checkTraderStatus] 方法来更新交易员状态。
/// 如果在过程中发生任何错误，它会打印错误信息但不会抛出异常。
Future<void> checkAndRefreshTraderStatus() async {
  try {
    // 确保TraderStatusService已注册
    if (!Get.isRegistered<TraderStatusService>()) {
      Get.put(TraderStatusService());
    }
    
    // 检查交易员状态
    await TraderStatusService.to.checkTraderStatus();
  } catch (e) {
    print('Helper: 检查交易员状态失败: $e');
  }
}