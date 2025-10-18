import 'package:get/get.dart';

/// 钱包页面状态管理
class TkPayWalletState {
  /// 可用金额
  final availableAmount = 0.0.obs;
  
  /// 是否正在加载
  final isLoading = false.obs;
  
  /// 错误信息
  final errorMessage = ''.obs;

  TkPayWalletState() {
    ///Initialize variables
  }
}
