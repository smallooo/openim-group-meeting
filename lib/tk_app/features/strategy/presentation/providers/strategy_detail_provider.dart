import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/repositories/strategy_repository.dart';
import '../../../../shared/models/strategy/strategy_detail_data.dart';

part 'strategy_detail_provider.g.dart';

/// 策略详情状态管理
@riverpod
class StrategyDetailNotifier extends _$StrategyDetailNotifier {
  @override
  Future<StrategyDetailData?> build(String strategyId) async {
    if (strategyId.isEmpty) {
      return null;
    }
    
    try {
      print('StrategyDetailProvider: 开始获取策略详情，ID: $strategyId'); // 调试信息
      
      final repository = await ref.read(strategyRepositoryProvider.future);
      print('StrategyDetailProvider: Repository获取成功，开始调用API...'); // 调试信息
      
      final data = await repository.getStrategyDetail(strategyId);
      
      print('StrategyDetailProvider: API调用完成，策略详情: ${data.title}'); // 调试信息
      
      return data;
    } catch (error, stackTrace) {
      print('StrategyDetailProvider: 获取策略详情失败: $error'); // 调试信息
      rethrow;
    }
  }

  /// 刷新策略详情
  Future<void> refresh() async {
    final strategyId = state.valueOrNull?.id;
    if (strategyId != null) {
      ref.invalidateSelf();
    }
  }
}

/// 策略详情数据 Provider（只读）
@riverpod
StrategyDetailData? strategyDetailData(Ref ref, String strategyId) {
  final asyncValue = ref.watch(strategyDetailNotifierProvider(strategyId));
  return asyncValue.valueOrNull;
}

/// 策略详情加载状态 Provider
@riverpod
bool strategyDetailLoading(Ref ref, String strategyId) {
  final asyncValue = ref.watch(strategyDetailNotifierProvider(strategyId));
  return asyncValue.isLoading;
}

/// 策略详情错误信息 Provider
@riverpod
String? strategyDetailError(Ref ref, String strategyId) {
  final asyncValue = ref.watch(strategyDetailNotifierProvider(strategyId));
  return asyncValue.hasError ? asyncValue.error.toString() : null;
}
