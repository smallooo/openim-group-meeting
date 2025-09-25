import 'package:get/get.dart';

class StrategyMyState {
  // 筛选选择
  RxString selectedTradingPair = '全部交易'.obs;
  RxString selectedTimeRange = '全部时间'.obs;
  
  // Tab选择 (0: 当前策略, 1: 历史策略)
  RxInt selectedTabIndex = 0.obs;
  
  // 时间范围选项
  List<String> timeRangeOptions = [
    '全部时间',
    '近24小时',
    '近7天',
    '近3周',
    '近1月',
  ];
  
  // 策略列表数据
  RxList<StrategyItem> strategyList = <StrategyItem>[].obs;

  StrategyMyState() {
    // 初始化示例数据
    // _initializeData();
  }
  
  void _initializeData() {
    strategyList.value = [
      StrategyItem(
        id: '61466',
        type: '短线',
        symbol: '\$ALTUSDT',
        isContract: true,
        isMultiple: true,
        followCount: 0,
        priceRange: '20 — 30',
        stopLossRange: '50 — 60',
        stopProfitRange: '30 — 40',
        viewCount: 1,
        trackedCount: 0,
      ),
    ];
  }
}

class StrategyItem {
  final String id;
  final String type;
  final String symbol;
  final bool isContract;
  final bool isMultiple;
  final int followCount;
  final String priceRange;
  final String stopLossRange;
  final String stopProfitRange;
  final int viewCount;
  final int trackedCount;

  StrategyItem({
    required this.id,
    required this.type,
    required this.symbol,
    required this.isContract,
    required this.isMultiple,
    required this.followCount,
    required this.priceRange,
    required this.stopLossRange,
    required this.stopProfitRange,
    required this.viewCount,
    required this.trackedCount,
  });
}
