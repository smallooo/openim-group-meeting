import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_fund_currency_data.freezed.dart';
part 'wallet_fund_currency_data.g.dart';

/// 钱包资金数据
@freezed
class WalletFundCurrencyData with _$WalletFundCurrencyData {
  const factory WalletFundCurrencyData({
    /// 资金ID
    required String id,
    
    /// 会员ID
    required String memberId,
    
    /// 货币ID
    required int currencyId,
    
    /// 货币名称
    required String currencyName,
    
    /// 可用金额
    required double availableAmount,
    
    /// 冻结金额
    required double frozenAmount,
    
    /// 总金额
    required double totalAmount,
    
    /// 版本号
    required int version,
    
    /// 状态
    required int status,
    
    /// 创建时间
    required String createdAt,
    
    /// 更新时间
    required String updatedAt,
    
    /// 是否删除
    required int isDeleted,
  }) = _WalletFundCurrencyData;

  factory WalletFundCurrencyData.fromJson(Map<String, dynamic> json) =>
      _$WalletFundCurrencyDataFromJson(json);
}
