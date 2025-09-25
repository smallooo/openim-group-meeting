import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/repositories/strategy_repository.dart';
import '../../../../shared/models/strategy/strategy_pagination_data.dart';
import '../../../../shared/models/strategy/strategy_item.dart';

part 'my_strategies_provider.g.dart';

/// 简单的策略状态管理
class MyStrategiesState {
  final List<StrategyItem> strategies;
  final bool isLoading;
  final String? error;

  const MyStrategiesState({
    this.strategies = const [],
    this.isLoading = false,
    this.error,
  });

  MyStrategiesState copyWith({
    List<StrategyItem>? strategies,
    bool? isLoading,
    String? error,
  }) {
    return MyStrategiesState(
      strategies: strategies ?? this.strategies,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
    );
  }
}

/// 我的策略状态管理
@riverpod
class MyStrategiesNotifier extends _$MyStrategiesNotifier {
  @override
  MyStrategiesState build() {
    return const MyStrategiesState();
  }

  /// 获取我的策略列表
  Future<void> fetchMyStrategies({
    int current = 1,
    int size = 10,
    bool refresh = false,
  }) async {
    try {
      print('Provider: 开始获取策略数据...'); // 调试信息
      
      // 设置加载状态（首次加载或刷新时都需要）
      if (refresh || state.strategies.isEmpty) {
        state = state.copyWith(isLoading: true, error: null);
      }
      
      final repository = await ref.read(strategyRepositoryProvider.future);
      print('Provider: Repository获取成功，开始调用API...'); // 调试信息
      
      final data = await repository.getMyStrategies(
        current: current,
        size: size,
      );
      
      print('Provider: API调用完成，数据: ${data.records.length} 条记录'); // 调试信息
      print('Provider: 策略列表: ${data.records}'); // 调试信息
      
      state = state.copyWith(
        strategies: data.records,
        isLoading: false,
        error: null,
      );
      
      print('Provider: 状态更新完成，策略数量: ${state.strategies.length}'); // 调试信息
    } catch (error, stackTrace) {
      print('Provider: 获取策略数据失败: $error'); // 调试信息
      state = state.copyWith(
        isLoading: false,
        error: error.toString(),
      );
    }
  }

  /// 刷新策略列表
  Future<void> refresh() async {
    await fetchMyStrategies(refresh: true);
  }

  /// 加载更多策略
  Future<void> loadMore() async {
    // 暂时简化，以后可以扩展
    await fetchMyStrategies();
  }
}

/// 我的策略列表 Provider（只读）
@riverpod
List<StrategyItem> myStrategiesList(MyStrategiesListRef ref) {
  final notifierState = ref.watch(myStrategiesNotifierProvider);
  print('myStrategiesListProvider: 完整状态: $notifierState'); // 调试信息
  print('myStrategiesListProvider: 策略数量: ${notifierState.strategies.length}'); // 调试信息
  print('myStrategiesListProvider: 是否加载中: ${notifierState.isLoading}'); // 调试信息
  print('myStrategiesListProvider: 错误信息: ${notifierState.error}'); // 调试信息
  return notifierState.strategies;
}

/// 策略分页信息 Provider
@riverpod
Map<String, dynamic> myStrategiesPagination(MyStrategiesPaginationRef ref) {
  final notifierState = ref.watch(myStrategiesNotifierProvider);
  
  return {
    'current': 1,
    'total': notifierState.strategies.length,
    'pages': 1,
    'hasMore': false,
    'isLoading': notifierState.isLoading,
    'error': notifierState.error,
  };
}
