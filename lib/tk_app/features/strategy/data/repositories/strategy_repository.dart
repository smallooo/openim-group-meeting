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
      
      // 手动解析响应
      final response = TraderApplyResponse.fromJson(rawResponse);
      
      print('Repository: 解析后的响应: ${response.data}'); // 调试信息
      
      return response.data;
    } catch (e) {
      print('Repository: 申请交易员失败: $e'); // 调试信息
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
