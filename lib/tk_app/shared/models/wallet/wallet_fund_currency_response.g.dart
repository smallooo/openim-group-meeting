// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_fund_currency_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WalletFundCurrencyResponseImpl _$$WalletFundCurrencyResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$WalletFundCurrencyResponseImpl(
      errCode: (json['errCode'] as num).toInt(),
      errMsg: json['errMsg'] as String,
      data: json['data'] == null
          ? null
          : WalletFundCurrencyData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WalletFundCurrencyResponseImplToJson(
        _$WalletFundCurrencyResponseImpl instance) =>
    <String, dynamic>{
      'errCode': instance.errCode,
      'errMsg': instance.errMsg,
      'data': instance.data,
    };
