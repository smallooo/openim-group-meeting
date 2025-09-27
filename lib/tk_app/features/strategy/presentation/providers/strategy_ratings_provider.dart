import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/repositories/strategy_repository.dart';
import '../../../../shared/models/strategy/strategy_ratings_response.dart';
import '../../../../shared/models/strategy/strategy_rating_request.dart';

part 'strategy_ratings_provider.g.dart';

/// 策略评价列表状态管理
@riverpod
class StrategyRatingsNotifier extends _$StrategyRatingsNotifier {
  late String _strategyId; // 存储 strategyId
  
  @override
  Future<StrategyRatingsData?> build(String strategyId) async {
    _strategyId = strategyId; // 存储 strategyId
    
    if (strategyId.isEmpty) {
      return null;
    }
    
    try {
      print('StrategyRatingsProvider: 开始获取策略评价列表，ID: $strategyId'); // 调试信息
      
      final repository = await ref.read(strategyRepositoryProvider.future);
      print('StrategyRatingsProvider: Repository获取成功，开始调用API...'); // 调试信息
      
      final data = await repository.getStrategyRatings(strategyId);
      
      print('StrategyRatingsProvider: API调用完成，评价数量: ${data.records.length}'); // 调试信息
      
      return data;
    } catch (error, stackTrace) {
      print('StrategyRatingsProvider: 获取策略评价列表失败: $error'); // 调试信息
      rethrow;
    }
  }

  /// 刷新评价列表
  Future<void> refresh() async {
    ref.invalidateSelf();
  }

  /// 提交评价
  Future<void> submitRating(String comment) async {
    try {
      print('StrategyRatingsProvider: 开始提交评价，评论: $comment'); // 调试信息
      print('StrategyRatingsProvider: 使用 strategyId: $_strategyId'); // 调试信息
      
      final repository = await ref.read(strategyRepositoryProvider.future);
      
      // 构建评价请求
      final request = StrategyRatingRequest(
        rating: 5, // 默认5星好评
        comment: comment,
      );
      
      // 提交评价
      await repository.submitStrategyRating(_strategyId, request);
      
      print('StrategyRatingsProvider: 评价提交成功'); // 调试信息
      
      // 强制刷新评价列表
      ref.invalidateSelf();
      
    } catch (error) {
      print('StrategyRatingsProvider: 提交评价失败: $error'); // 调试信息
      rethrow;
    }
  }
}

/// 策略评价数据 Provider（只读）
@riverpod
StrategyRatingsData? strategyRatingsData(Ref ref, String strategyId) {
  final asyncValue = ref.watch(strategyRatingsNotifierProvider(strategyId));
  return asyncValue.valueOrNull;
}

/// 策略评价加载状态 Provider
@riverpod
bool strategyRatingsLoading(Ref ref, String strategyId) {
  final asyncValue = ref.watch(strategyRatingsNotifierProvider(strategyId));
  return asyncValue.isLoading;
}

/// 策略评价错误信息 Provider
@riverpod
String? strategyRatingsError(Ref ref, String strategyId) {
  final asyncValue = ref.watch(strategyRatingsNotifierProvider(strategyId));
  return asyncValue.hasError ? asyncValue.error.toString() : null;
}
