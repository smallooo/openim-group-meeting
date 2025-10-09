import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/network/api_client.dart';
import '../../../../core/constants/api_constants.dart';
import '../../../../shared/models/strategy/my_strategies_response.dart';
import '../../../../shared/models/strategy/strategy_detail_data.dart';
import '../../../../shared/models/strategy/strategy_pagination_data.dart';
import '../../../../shared/models/strategy/strategy_publish_request.dart';
import '../../../../shared/models/strategy/strategy_publish_response.dart';
import '../../../../shared/models/strategy/strategy_detail_response.dart';
import '../../../../shared/models/strategy/trader_detail_response.dart';
import '../../../../shared/models/strategy/trader_status_response.dart';
import '../../../../shared/models/strategy/trader_apply_request.dart';
import '../../../../shared/models/strategy/trader_apply_response.dart';
import '../../../../shared/models/strategy/trader_list_response.dart';
import '../../../../shared/models/strategy/strategy_ratings_response.dart';
import '../../../../shared/models/strategy/strategy_rating_request.dart';
import '../../../../shared/models/strategy/trader_strategies_response.dart';
import '../../../../shared/models/strategy/trader_strategy_pagination_data.dart';

part 'strategy_repository.g.dart';

/// 策略数据仓库
class StrategyRepository {
  final ApiClient _apiClient;

  StrategyRepository(this._apiClient);

  /// 获取我的策略列表
  /// 
  /// [current] 当前页码，默认为1
  /// [size] 每页大小，默认为10
  Future<StrategyPaginationData> getMyStrategies({
    int current = 1,
    int size = 10,
  }) async {
    print('Repository: 开始调用API获取策略数据...'); // 调试信息
    
    try {
      // 获取原始JSON数据
      final rawResponse = await _apiClient.get<Map<String, dynamic>>(
        ApiConstants.myStrategies,
        queryParameters: {
          'current': current,
          'size': size,
        },
      );
      
      print('Repository: 原始API响应: $rawResponse'); // 调试信息
      
      // 手动解析响应
      final response = MyStrategiesResponse.fromJson(rawResponse);
      
      print('Repository: 解析后的响应: ${response.data}'); // 调试信息
      print('Repository: 策略记录数量: ${response.data.records.length}'); // 调试信息
      
      return response.data;
    } catch (e) {
      print('Repository: 数据解析失败: $e'); // 调试信息
      rethrow;
    }
  }

  /// 获取策略详情
  /// 
  /// [strategyId] 策略ID
  Future<StrategyDetailData> getStrategyDetail(String strategyId) async {
    print('Repository: 开始调用API获取策略详情...'); // 调试信息
    
    try {
      // 获取原始JSON数据
      final rawResponse = await _apiClient.get<Map<String, dynamic>>(
        '${ApiConstants.strategyDetail}/$strategyId',
      );
      
      print('Repository: 原始API响应: $rawResponse'); // 调试信息
      
      // 手动解析响应
      final response = StrategyDetailResponse.fromJson(rawResponse);
      
      print('Repository: 解析后的响应: ${response.data}'); // 调试信息
      
      return response.data;
    } catch (e) {
      print('Repository: 获取策略详情失败: $e'); // 调试信息
      rethrow;
    }
  }

  /// 发布策略
  /// 
  /// [request] 策略发布请求数据
  Future<StrategyPublishData> publishStrategy(StrategyPublishRequest request) async {
    print('Repository: 开始调用API发布策略...'); // 调试信息
    
    try {
      // 获取原始JSON数据
      final rawResponse = await _apiClient.post<Map<String, dynamic>>(
        ApiConstants.publishStrategy,
        data: request.toJson(),
      );
      
      print('Repository: 原始API响应: $rawResponse'); // 调试信息
      
      // 手动解析响应
      final response = StrategyPublishResponse.fromJson(rawResponse);
      
      print('Repository: 解析后的响应: ${response.data}'); // 调试信息
      
      return response.data;
    } catch (e) {
      print('Repository: 策略发布失败: $e'); // 调试信息
      rethrow;
    }
  }

  /// 获取交易员详情
  /// 
  /// [traderId] 交易员ID
  Future<TraderDetailData> getTraderDetail(String traderId) async {
    print('Repository: 开始调用API获取交易员详情...'); // 调试信息
    
    try {
      // 获取原始JSON数据
      final rawResponse = await _apiClient.get<Map<String, dynamic>>(
        '${ApiConstants.traderDetail}/$traderId',
      );
      
      print('Repository: 原始API响应: $rawResponse'); // 调试信息
      
      // 手动解析响应
      final response = TraderDetailResponse.fromJson(rawResponse);
      
      print('Repository: 解析后的响应: ${response.data}'); // 调试信息
      
      return response.data;
    } catch (e) {
      print('Repository: 获取交易员详情失败: $e'); // 调试信息
      rethrow;
    }
  }

  /// 检查交易员状态
  /// 
  /// 检查当前用户是否为交易员
  Future<TraderStatusData> getTraderStatus() async {
    print('Repository: 开始调用API检查交易员状态...'); // 调试信息
    
    try {
      // 获取原始JSON数据
      final rawResponse = await _apiClient.get<Map<String, dynamic>>(
        ApiConstants.traderStatus,
      );
      
      print('Repository: 原始API响应: $rawResponse'); // 调试信息
      
      // 手动解析响应
      final response = TraderStatusResponse.fromJson(rawResponse);
      
      print('Repository: 解析后的响应: ${response.data}'); // 调试信息
      
      return response.data;
    } catch (e) {
      print('Repository: 检查交易员状态失败: $e'); // 调试信息
      rethrow;
    }
  }

  /// 申请交易员
  /// 
  /// [request] 交易员申请请求数据
  Future<TraderApplyData> applyTrader(TraderApplyRequest request) async {
    print('Repository: 开始调用API申请交易员...'); // 调试信息
    
    try {
      // 获取原始JSON数据
      final rawResponse = await _apiClient.post<Map<String, dynamic>>(
        ApiConstants.applyTrader,
        data: request.toJson(),
      );
      
      print('Repository: 原始API响应: $rawResponse'); // 调试信息

      // 检查 'ok' 状态
      if (rawResponse['ok'] == false) {
        // 如果 'ok' 是 false，则抛出带有消息的异常
        throw Exception(rawResponse['message'] ?? '申请交易员失败');
      }
      
      // 手动解析响应
      final response = TraderApplyResponse.fromJson(rawResponse);
      
      print('Repository: 解析后的响应: ${response.data}'); // 调试信息
      
      return response.data;
    } catch (e) {
      print('Repository: 申请交易员失败: $e'); // 调试信息
      rethrow;
    }
  }

  /// 获取交易员列表
  /// 
  /// [current] 当前页码，默认为1
  /// [size] 每页大小，默认为10
  Future<TraderListData> getTraderList({
    int current = 1,
    int size = 10,
  }) async {
    print('Repository: 开始调用API获取交易员列表...'); // 调试信息
    
    try {
      // 获取原始JSON数据
      final rawResponse = await _apiClient.get<Map<String, dynamic>>(
        ApiConstants.traderList,
        queryParameters: {
          'current': current,
          'size': size,
        },
      );
      
      print('Repository: 原始API响应: $rawResponse'); // 调试信息
      
      // 手动解析响应
      final response = TraderListResponse.fromJson(rawResponse);
      
      print('Repository: 解析后的响应: ${response.data}'); // 调试信息
      print('Repository: 交易员记录数量: ${response.data.records.length}'); // 调试信息
      
      return response.data;
    } catch (e) {
      print('Repository: 获取交易员列表失败: $e'); // 调试信息
      rethrow;
    }
  }

  /// 获取策略评价列表
  /// 
  /// [strategyId] 策略ID
  Future<StrategyRatingsData> getStrategyRatings(String strategyId) async {
    print('Repository: 开始调用API获取策略评价列表...'); // 调试信息
    
    try {
      // 获取原始JSON数据
      final rawResponse = await _apiClient.get<Map<String, dynamic>>(
        '${ApiConstants.strategyRatings}/$strategyId/ratings',
      );
      
      print('Repository: 原始API响应: $rawResponse'); // 调试信息
      
      // 手动解析响应
      final response = StrategyRatingsResponse.fromJson(rawResponse);
      
      print('Repository: 解析后的响应: ${response.data}'); // 调试信息
      print('Repository: 评价记录数量: ${response.data.records.length}'); // 调试信息
      
      return response.data;
    } catch (e) {
      print('Repository: 获取策略评价列表失败: $e'); // 调试信息
      rethrow;
    }
  }

  /// 提交策略评价
  /// 
  /// [strategyId] 策略ID
  /// [request] 评价请求数据
  Future<StrategyRatingResponse> submitStrategyRating(
    String strategyId, 
    StrategyRatingRequest request,
  ) async {
    print('Repository: 开始调用API提交策略评价...'); // 调试信息
    
    try {
      // 获取原始JSON数据
      final rawResponse = await _apiClient.post<Map<String, dynamic>>(
        '${ApiConstants.submitStrategyRating}/$strategyId/rating',
        data: request.toJson(),
      );
      
      print('Repository: 原始API响应: $rawResponse'); // 调试信息
      
      // 手动解析响应
      final response = StrategyRatingResponse.fromJson(rawResponse);
      
      print('Repository: 解析后的响应: 评价提交成功'); // 调试信息
      
      return response;
    } catch (e) {
      print('Repository: 提交策略评价失败: $e'); // 调试信息
      rethrow;
    }
  }

  /// 获取交易员的策略列表
  /// 
  /// [traderId] 交易员ID
  /// [current] 当前页码，默认为1
  /// [size] 每页大小，默认为10
  Future<TraderStrategyPaginationData> getTraderStrategies(
    String traderId, {
    int current = 1,
    int size = 10,
  }) async {
    print('Repository: 开始调用API获取交易员策略列表...'); // 调试信息
    
    try {
      // 获取原始JSON数据
      final rawResponse = await _apiClient.get<Map<String, dynamic>>(
        '${ApiConstants.traderStrategies}/$traderId',
        queryParameters: {
          'current': current,
          'size': size,
        },
      );
      
      print('Repository: 原始API响应: $rawResponse'); // 调试信息
      
      // 手动解析响应
      final response = TraderStrategiesResponse.fromJson(rawResponse);
      
      print('Repository: 解析后的响应: ${response.data}'); // 调试信息
      print('Repository: 交易员策略记录数量: ${response.data.records.length}'); // 调试信息
      
      return response.data;
    } catch (e) {
      print('Repository: 获取交易员策略列表失败: $e'); // 调试信息
      rethrow;
    }
  }
}

/// 策略仓库 Provider
@riverpod
Future<StrategyRepository> strategyRepository(StrategyRepositoryRef ref) async {
  final apiClient = await ref.watch(apiClientProvider.future);
  return StrategyRepository(apiClient);
}
