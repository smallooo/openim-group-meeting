// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_fund_currency_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WalletFundCurrencyDataImpl _$$WalletFundCurrencyDataImplFromJson(
        Map<String, dynamic> json) =>
    _$WalletFundCurrencyDataImpl(
      id: json['id'] as String,
      memberId: json['memberId'] as String,
      currencyId: (json['currencyId'] as num).toInt(),
      currencyName: json['currencyName'] as String,
      availableAmount: (json['availableAmount'] as num).toDouble(),
      frozenAmount: (json['frozenAmount'] as num).toDouble(),
      totalAmount: (json['totalAmount'] as num).toDouble(),
      version: (json['version'] as num).toInt(),
      status: (json['status'] as num).toInt(),
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      isDeleted: (json['isDeleted'] as num).toInt(),
    );

Map<String, dynamic> _$$WalletFundCurrencyDataImplToJson(
        _$WalletFundCurrencyDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'memberId': instance.memberId,
      'currencyId': instance.currencyId,
      'currencyName': instance.currencyName,
      'availableAmount': instance.availableAmount,
      'frozenAmount': instance.frozenAmount,
      'totalAmount': instance.totalAmount,
      'version': instance.version,
      'status': instance.status,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'isDeleted': instance.isDeleted,
    };
