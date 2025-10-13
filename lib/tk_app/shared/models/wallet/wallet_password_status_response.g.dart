// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_password_status_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WalletPasswordStatusDataImpl _$$WalletPasswordStatusDataImplFromJson(
        Map<String, dynamic> json) =>
    _$WalletPasswordStatusDataImpl(
      hasPassword: json['hasPassword'] as bool,
      isLocked: json['isLocked'] as bool,
    );

Map<String, dynamic> _$$WalletPasswordStatusDataImplToJson(
        _$WalletPasswordStatusDataImpl instance) =>
    <String, dynamic>{
      'hasPassword': instance.hasPassword,
      'isLocked': instance.isLocked,
    };

_$WalletPasswordStatusResponseImpl _$$WalletPasswordStatusResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$WalletPasswordStatusResponseImpl(
      errCode: (json['errCode'] as num).toInt(),
      errMsg: json['errMsg'] as String,
      data: WalletPasswordStatusData.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WalletPasswordStatusResponseImplToJson(
        _$WalletPasswordStatusResponseImpl instance) =>
    <String, dynamic>{
      'errCode': instance.errCode,
      'errMsg': instance.errMsg,
      'data': instance.data,
    };
