import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../features/strategy/data/repositories/strategy_repository.dart';
import '../../shared/models/strategy/trader_status_response.dart';

/// 交易员状态服务
class TraderStatusService extends GetxService {
  static TraderStatusService get to => Get.find();
  
  // 交易员状态信息
  final Rx<TraderStatusData?> _traderStatus = Rx<TraderStatusData?>(null);
  
  // 加载状态
  final RxBool isLoading = false.obs;
  
  // Getter
  TraderStatusData? get traderStatus => _traderStatus.value;
  bool get isTrader => _traderStatus.value?.isTrader ?? false;
  String get traderId => _traderStatus.value?.traderId ?? '';
  String get traderName => _traderStatus.value?.traderName ?? '';
  String get traderAvatar => _traderStatus.value?.traderAvatar ?? '';
  
  /// 检查交易员状态
  Future<void> checkTraderStatus() async {
    try {
      isLoading.value = true;
      print('TraderStatusService: 开始检查交易员状态...');
      
      // 获取StrategyRepository
      late final StrategyRepository strategyRepository;
      try {
        strategyRepository = Get.find<StrategyRepository>();
      } catch (e) {
        print('TraderStatusService: 无法从GetX获取StrategyRepository，使用Riverpod方式: $e');
        final container = ProviderContainer();
        strategyRepository = await container.read(strategyRepositoryProvider.future);
      }
      
      // 调用API检查状态
      final statusData = await strategyRepository.getTraderStatus();
      
      // 更新状态
      _traderStatus.value = statusData;
      
      print('TraderStatusService: 交易员状态检查完成');
      print('  - isTrader: ${statusData.isTrader}');
      print('  - traderId: ${statusData.traderId}');
      print('  - traderName: ${statusData.traderName}');
      
    } catch (e) {
      print('TraderStatusService: 检查交易员状态失败: $e');
      // 失败时设置为非交易员状态
      _traderStatus.value = const TraderStatusData(
        isTrader: false,
        traderId: '',
        traderName: '',
        traderAvatar: '',
      );
    } finally {
      isLoading.value = false;
    }
  }
  
  /// 清除交易员状态
  void clearTraderStatus() {
    _traderStatus.value = null;
    print('TraderStatusService: 交易员状态已清除');
  }
  
  /// 手动设置交易员状态（用于测试或特殊情况）
  void setTraderStatus(TraderStatusData statusData) {
    _traderStatus.value = statusData;
    print('TraderStatusService: 手动设置交易员状态: ${statusData.isTrader}');
  }
}
