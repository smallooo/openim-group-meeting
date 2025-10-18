import 'package:dio/dio.dart';
import '../../../../core/network/api_client.dart';
import '../../../../core/constants/api_constants.dart';
import '../../../../shared/models/wallet/wallet_password_status_response.dart';
import '../../../../shared/models/wallet/set_wallet_password_response.dart';
import '../../../../shared/models/wallet/wallet_fund_currency_response.dart';

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
      // 调用设置密码API，使用表单数据格式
      final rawResponse = await _apiClient.post<Map<String, dynamic>>(
        ApiConstants.setWalletPassword,
        data: {
          'password': password,
        },
        options: Options(
          headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
          },
        ),
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

  /// 修改钱包密码
  /// 
  /// 调用 /api/balance/wallet-password/change 接口
  /// 修改用户的钱包支付密码
  /// 
  /// 参数说明：
  /// - oldPassword: 原密码
  /// - newPassword: 新密码
  /// 
  /// 返回值说明：
  /// - errCode: 0表示成功，其他值表示错误
  /// - errMsg: 错误信息，成功时为"success"
  Future<SetWalletPasswordResponse> changeWalletPassword(String oldPassword, String newPassword) async {
    print('WalletRepository: 开始调用API修改钱包密码...'); // 调试信息
    
    try {
      // 调用修改密码API，使用表单数据格式
      final rawResponse = await _apiClient.post<Map<String, dynamic>>(
        ApiConstants.changeWalletPassword,
        data: {
          'oldPassword': oldPassword,
          'newPassword': newPassword,
        },
        options: Options(
          headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
          },
        ),
      );
      
      print('WalletRepository: 修改密码API原始响应: $rawResponse'); // 调试信息
      
      // 解析响应
      final response = SetWalletPasswordResponse.fromJson(rawResponse);
      
      print('WalletRepository: 修改密码结果 - errCode: ${response.errCode}, errMsg: ${response.errMsg}'); // 调试信息
      
      return response;
    } catch (e) {
      print('WalletRepository: 修改钱包密码失败: $e'); // 调试信息
      rethrow;
    }
  }

  /// 查询钱包资金
  /// 
  /// 调用 /api/balance/app/wallet-fund/currency 接口
  /// 查询用户的钱包资金信息
  /// 
  /// 参数说明：
  /// - currencyId: 货币ID，固定为1
  /// 
  /// 返回值说明：
  /// - errCode: 0表示成功，其他值表示错误
  /// - errMsg: 错误信息，成功时为"success"
  /// - data: 钱包资金数据（可选）
  Future<WalletFundCurrencyResponse> getWalletFundCurrency() async {
    print('WalletRepository: 开始调用API查询钱包资金...'); // 调试信息
    
    try {
      // 调用查询钱包资金API，使用JSON数据格式
      final rawResponse = await _apiClient.post<Map<String, dynamic>>(
        ApiConstants.walletFundCurrency,
        data: {
          'currencyId': 7,
        },
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );
      
      print('WalletRepository: 查询钱包资金API原始响应: $rawResponse'); // 调试信息
      
      // 解析响应
      final response = WalletFundCurrencyResponse.fromJson(rawResponse);
      
      print('WalletRepository: 查询钱包资金结果 - errCode: ${response.errCode}, errMsg: ${response.errMsg}'); // 调试信息
      if (response.data != null) {
        print('WalletRepository: 可用金额: ${response.data!.availableAmount}'); // 调试信息
      }
      
      return response;
    } catch (e) {
      print('WalletRepository: 查询钱包资金失败: $e'); // 调试信息
      rethrow;
    }
  }
}