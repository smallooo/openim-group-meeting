import 'package:freezed_annotation/freezed_annotation.dart';
import 'wallet_fund_currency_data.dart';

part 'wallet_fund_currency_response.freezed.dart';
part 'wallet_fund_currency_response.g.dart';

/// 钱包资金查询响应
@freezed
class WalletFundCurrencyResponse with _$WalletFundCurrencyResponse {
  const factory WalletFundCurrencyResponse({
    /// 错误码
    required int errCode,
    
    /// 错误信息
    required String errMsg,
    
    /// 钱包资金数据（可选）
    WalletFundCurrencyData? data,
  }) = _WalletFundCurrencyResponse;

  factory WalletFundCurrencyResponse.fromJson(Map<String, dynamic> json) =>
      _$WalletFundCurrencyResponseFromJson(json);
}
