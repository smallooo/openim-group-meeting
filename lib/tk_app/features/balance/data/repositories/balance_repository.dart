import 'package:dio/dio.dart';
import '../../../../core/network/api_client.dart';
import '../../../../core/constants/api_constants.dart';
import '../../../../shared/models/wallet/wallet_password_status_response.dart';
import '../../../../shared/models/wallet/set_wallet_password_response.dart';
import '../../../../shared/models/wallet/wallet_fund_currency_response.dart';


class BalanceRepository {
  final ApiClient _apiClient;

  BalanceRepository(this._apiClient);

  //
  Future<WalletPasswordStatusData> getBalanceWalletFundSummary() async {
    print('WalletRepository: 开始调用API获取钱包密码状态...'); // 调试信息
    
    try {
      // 获取原始JSON数据
      final rawResponse = await _apiClient.post<Map<String, dynamic>>(
        ApiConstants.walletFundSummary,
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




}