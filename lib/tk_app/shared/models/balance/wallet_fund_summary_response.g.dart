// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_fund_summary_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WalletFundCurrencyItemImpl _$$WalletFundCurrencyItemImplFromJson(
        Map<String, dynamic> json) =>
    _$WalletFundCurrencyItemImpl(
      id: json['id'] as String,
      memberId: json['memberId'] as String,
      currencyId: (json['currencyId'] as num).toInt(),
      currencyName: json['currencyName'] as String,
      availableAmount:
          const DecimalConverter().fromJson(json['availableAmount']),
      frozenAmount: const DecimalConverter().fromJson(json['frozenAmount']),
      totalAmount: const DecimalConverter().fromJson(json['totalAmount']),
      version: (json['version'] as num).toInt(),
      status: (json['status'] as num).toInt(),
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      isDeleted: (json['isDeleted'] as num).toInt(),
    );

Map<String, dynamic> _$$WalletFundCurrencyItemImplToJson(
        _$WalletFundCurrencyItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'memberId': instance.memberId,
      'currencyId': instance.currencyId,
      'currencyName': instance.currencyName,
      'availableAmount':
          const DecimalConverter().toJson(instance.availableAmount),
      'frozenAmount': const DecimalConverter().toJson(instance.frozenAmount),
      'totalAmount': const DecimalConverter().toJson(instance.totalAmount),
      'version': instance.version,
      'status': instance.status,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'isDeleted': instance.isDeleted,
    };

_$WalletFundCurrencyResponseImpl _$$WalletFundCurrencyResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$WalletFundCurrencyResponseImpl(
      errCode: (json['errCode'] as num).toInt(),
      errMsg: json['errMsg'] as String,
      data: (json['data'] as List<dynamic>)
          .map(
              (e) => WalletFundCurrencyItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WalletFundCurrencyResponseImplToJson(
        _$WalletFundCurrencyResponseImpl instance) =>
    <String, dynamic>{
      'errCode': instance.errCode,
      'errMsg': instance.errMsg,
      'data': instance.data,
    };
