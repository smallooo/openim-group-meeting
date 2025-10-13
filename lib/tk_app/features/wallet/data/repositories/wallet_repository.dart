import '../../../../core/network/api_client.dart';
import '../../../../core/constants/api_constants.dart';
import '../../../../shared/models/wallet/wallet_password_status_response.dart';
import '../../../../shared/models/wallet/set_wallet_password_response.dart';

/// 钱包数据仓库
/// 
/// 负责处理钱包相关的API调用，包括密码状态查询、密码设置等功能
class WalletRepository {
  final ApiClient _apiClient;

  WalletRepository(this._apiClient);

  /// 获取钱包密码状态
  /// 
  /// 调用 /api/balance/wallet-password/status 接口
  /// 返回钱包密码的设置状态和锁定状态
  /// 
  /// 返回值说明：
  /// - hasPassword: true表示已设置密码，false表示未设置密码
  /// - isLocked: true表示密码被锁定，false表示正常状态
  Future<WalletPasswordStatusData> getWalletPasswordStatus() async {
    print('WalletRepository: 开始调用API获取钱包密码状态...'); // 调试信息
    
    try {
      // 获取原始JSON数据
      final rawResponse = await _apiClient.post<Map<String, dynamic>>(
        ApiConstants.walletPasswordStatus,
      );
      
      print('WalletRepository: 原始API响应: $rawResponse'); // 调试信息
      
      // 手动解析响应
      final response = WalletPasswordStatusResponse.fromJson(rawResponse);
      
      print('WalletRepository: 解析后的响应: ${response.data}'); // 调试信息
      print('WalletRepository: hasPassword: ${response.data.hasPassword}, isLocked: ${response.data.isLocked}'); // 调试信息
      
      return response.data;
    } catch (e) {
      print('WalletRepository: 获取钱包密码状态失败: $e'); // 调试信息
      rethrow;
    }
  }

  /// 设置钱包密码
  /// 
  /// 调用 /api/balance/wallet-password/set 接口
  /// 设置用户的钱包支付密码
  /// 
  /// 参数说明：
  /// - password: 要设置的密码
  /// 
  /// 返回值说明：
  /// - errCode: 0表示成功，其他值表示错误
  /// - errMsg: 错误信息，成功时为"success"
  Future<SetWalletPasswordResponse> setWalletPassword(String password) async {
    print('WalletRepository: 开始调用API设置钱包密码...'); // 调试信息
    
    try {
      // 调用设置密码API
      final rawResponse = await _apiClient.post<Map<String, dynamic>>(
        ApiConstants.setWalletPassword,
        data: {
          'password': password,
        },
      );
      
      print('WalletRepository: 设置密码API原始响应: $rawResponse'); // 调试信息
      
      // 解析响应
      final response = SetWalletPasswordResponse.fromJson(rawResponse);
      
      print('WalletRepository: 设置密码结果 - errCode: ${response.errCode}, errMsg: ${response.errMsg}'); // 调试信息
      
      return response;
    } catch (e) {
      print('WalletRepository: 设置钱包密码失败: $e'); // 调试信息
      rethrow;
    }
  }
}