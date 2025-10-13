// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_wallet_password_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SetWalletPasswordResponseImpl _$$SetWalletPasswordResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SetWalletPasswordResponseImpl(
      errCode: (json['errCode'] as num).toInt(),
      errMsg: json['errMsg'] as String,
    );

Map<String, dynamic> _$$SetWalletPasswordResponseImplToJson(
        _$SetWalletPasswordResponseImpl instance) =>
    <String, dynamic>{
      'errCode': instance.errCode,
      'errMsg': instance.errMsg,
    };
