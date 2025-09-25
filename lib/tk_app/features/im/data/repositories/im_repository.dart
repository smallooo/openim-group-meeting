import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/network/api_client.dart';
import '../../../../core/constants/api_constants.dart';

part 'im_repository.g.dart';

/// IM 仓库
/// 
/// 负责 IM 相关的数据操作，与现有 IM 系统解耦
class ImRepository {
  final ApiClient _apiClient;

  ImRepository(this._apiClient);

  /// 获取 IM Token
  /// 
  /// 用于初始化 IM SDK
  /// [userId] 用户ID
  /// 
  /// 返回 IM Token
  Future<String> getImToken(String userId) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      ApiConstants.imToken,
      data: {'userId': userId},
    );
    
    return response['token'] as String;
  }

  /// 获取 IM 用户信息
  /// 
  /// 获取用户在 IM 系统中的信息
  /// [userId] 用户ID
  /// 
  /// 返回 IM 用户信息
  Future<Map<String, dynamic>> getImUserInfo(String userId) async {
    return await _apiClient.get<Map<String, dynamic>>(
      ApiConstants.imUserInfo,
      queryParameters: {'userId': userId},
    );
  }

  /// 同步用户信息到 IM
  /// 
  /// 将用户基本信息同步到 IM 系统
  /// [userInfo] 用户信息
  Future<void> syncUserToIm(Map<String, dynamic> userInfo) async {
    await _apiClient.post<void>(
      ApiConstants.imUserInfo,
      data: userInfo,
    );
  }
}

/// IM 仓库 Provider
@riverpod
ImRepository imRepository(ImRepositoryRef ref) {
  final apiClient = ref.watch(apiClientProvider);
  return ImRepository(apiClient as ApiClient);
}
