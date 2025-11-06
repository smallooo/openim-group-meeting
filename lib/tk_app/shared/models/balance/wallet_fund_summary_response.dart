import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:decimal/decimal.dart';


// part 'wallet_fund_currency_response.freezed.dart';
// part 'wallet_fund_currency_response.g.dart';

part 'wallet_fund_summary_response.freezed.dart';
part 'wallet_fund_summary_response.g.dart';

// 高精度金额转换器：支持数字或字符串输入
class DecimalConverter implements JsonConverter<Decimal, dynamic> {
  const DecimalConverter();
  @override
  Decimal fromJson(dynamic json) =>
      json == null ? Decimal.zero : Decimal.parse(json.toString());
  @override
  dynamic toJson(Decimal object) => object.toString();
}



// data 内单项
@freezed
class WalletFundCurrencyItem with _$WalletFundCurrencyItem {
  const factory WalletFundCurrencyItem({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'memberId') required String memberId,
    @JsonKey(name: 'currencyId') required int currencyId,
    @JsonKey(name: 'currencyName') required String currencyName,
    @JsonKey(name: 'availableAmount') @DecimalConverter() required Decimal availableAmount,
    @JsonKey(name: 'frozenAmount') @DecimalConverter() required Decimal frozenAmount,
    @JsonKey(name: 'totalAmount') @DecimalConverter() required Decimal totalAmount,
    @JsonKey(name: 'version') required int version,
    @JsonKey(name: 'status') required int status,
    // 时间格式为 "yyyy-MM-dd HH:mm:ss"，这里先按字符串保存
    @JsonKey(name: 'createdAt') required String createdAt,
    @JsonKey(name: 'updatedAt') required String updatedAt,
    @JsonKey(name: 'isDeleted') required int isDeleted,
  }) = _WalletFundCurrencyItem;

  factory WalletFundCurrencyItem.fromJson(Map<String, dynamic> json) =>
      _$WalletFundCurrencyItemFromJson(json);
}

/// 响应模型
@freezed
class WalletFundCurrencyResponse with _$WalletFundCurrencyResponse {
  const factory WalletFundCurrencyResponse({
    @JsonKey(name: 'errCode') required int errCode,
    @JsonKey(name: 'errMsg') required String errMsg,
    @JsonKey(name: 'data') required List<WalletFundCurrencyItem> data,
  }) = _WalletFundCurrencyResponse;

  factory WalletFundCurrencyResponse.fromJson(Map<String, dynamic> json) =>
      _$WalletFundCurrencyResponseFromJson(json);
}