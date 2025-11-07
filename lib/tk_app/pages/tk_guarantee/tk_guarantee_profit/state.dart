import 'package:get/get.dart';

/// 昨日收益数据模型
class YesterdayIncome {
  final double shareIncome; // 分润收入
  final double contractIncome; // 合约收入
  final double totalIncome; // 总收益

  YesterdayIncome({
    required this.shareIncome,
    required this.contractIncome,
    required this.totalIncome,
  });
}

/// TOP10收益项
class TopIncomeItem {
  final String userId;
  final double income;

  TopIncomeItem({
    required this.userId,
    required this.income,
  });
}

/// 历史收益数据点
class HistoricalIncomePoint {
  final DateTime date;
  final double dailyIncome; // 当天收入
  final double contractIncome; // 合约收入
  final double shareIncome; // 分润收入

  HistoricalIncomePoint({
    required this.date,
    required this.dailyIncome,
    required this.contractIncome,
    required this.shareIncome,
  });
}

/// 交易活动项
class TradingActivity {
  final String tradingPair; // 交易对
  final DateTime followTime; // 跟单时间
  final String status; // 状态：结束、失败、进行中
  final String executionResult; // 执行结果

  TradingActivity({
    required this.tradingPair,
    required this.followTime,
    required this.status,
    required this.executionResult,
  });
}

class TkGuaranteeProfitState {
  TkGuaranteeProfitState() {
    ///Initialize variables
  }

  // 是否加载中
  final isLoading = false.obs;

  // 昨日收益
  final yesterdayIncome = YesterdayIncome(
    shareIncome: 0,
    contractIncome: 0,
    totalIncome: 0,
  ).obs;

  // TOP10收益列表
  final topIncomeList = <TopIncomeItem>[].obs;

  // 是否展开TOP10列表
  final isTopListExpanded = false.obs;

  // 历史收益时间选择：日、周、月
  final selectedTimePeriod = '月'.obs;

  // 历史收益数据
  final historicalIncomeList = <HistoricalIncomePoint>[].obs;

  // 跟单开关
  final isFollowOrderEnabled = false.obs;

  // 交易活动列表
  final tradingActivityList = <TradingActivity>[].obs;

  // 当前页码
  final currentPage = 1.obs;

  // 总页数
  final totalPages = 1.obs;

  // 初始化模拟数据
  void initMockData() {
    // 昨日收益
    yesterdayIncome.value = YesterdayIncome(
      shareIncome: 26.0, // 21.12% of 123
      contractIncome: 4.06, // 3.30% of 123
      totalIncome: 123.0,
    );

    // TOP10收益列表
    topIncomeList.value = [
      TopIncomeItem(userId: 'user1user1user1user1user1', income: 1000),
      TopIncomeItem(userId: 'user2user2user2user2user2', income: 890),
      TopIncomeItem(userId: 'user3user3user3user3user3', income: 456),
      TopIncomeItem(userId: 'user4user4user4user4user4', income: 345),
      TopIncomeItem(userId: 'user5user5user5user5user5', income: 234),
      TopIncomeItem(userId: 'user6user6user6user6user6', income: 200),
      TopIncomeItem(userId: 'user7user7user7user7user7', income: 180),
      TopIncomeItem(userId: 'user8user8user8user8user8', income: 150),
      TopIncomeItem(userId: 'user9user9user9user9user9', income: 120),
      TopIncomeItem(userId: 'user10user10user10user10user10', income: 100),
    ];

    // 历史收益数据（月度）
    final now = DateTime.now();
    historicalIncomeList.value = [
      HistoricalIncomePoint(
        date: DateTime(now.year, 5, 1),
        dailyIncome: 50,
        contractIncome: 30,
        shareIncome: 80,
      ),
      HistoricalIncomePoint(
        date: DateTime(now.year, 6, 1),
        dailyIncome: 80,
        contractIncome: 50,
        shareIncome: 120,
      ),
      HistoricalIncomePoint(
        date: DateTime(now.year, 7, 1),
        dailyIncome: 100,
        contractIncome: 60,
        shareIncome: 150,
      ),
      HistoricalIncomePoint(
        date: DateTime(now.year, 8, 1),
        dailyIncome: 120,
        contractIncome: 70,
        shareIncome: 180,
      ),
      HistoricalIncomePoint(
        date: DateTime(now.year, 9, 1),
        dailyIncome: 140,
        contractIncome: 80,
        shareIncome: 200,
      ),
      HistoricalIncomePoint(
        date: DateTime(now.year, 10, 1),
        dailyIncome: 160,
        contractIncome: 90,
        shareIncome: 220,
      ),
    ];

    // 交易活动列表
    tradingActivityList.value = [
      TradingActivity(
        tradingPair: 'btc-usdt-long',
        followTime: DateTime(2025, 10, 1),
        status: '结束',
        executionResult: '成功',
      ),
      TradingActivity(
        tradingPair: 'btc-usdt-long',
        followTime: DateTime(2025, 10, 1),
        status: '失败',
        executionResult: '失败',
      ),
      TradingActivity(
        tradingPair: 'btc-usdt-long',
        followTime: DateTime(2025, 10, 1),
        status: '进行中',
        executionResult: '处理中',
      ),
      TradingActivity(
        tradingPair: 'eth-usdt-long',
        followTime: DateTime(2025, 9, 30),
        status: '结束',
        executionResult: '成功',
      ),
      TradingActivity(
        tradingPair: 'eth-usdt-short',
        followTime: DateTime(2025, 9, 29),
        status: '结束',
        executionResult: '成功',
      ),
    ];

    totalPages.value = 5;
  }
}
