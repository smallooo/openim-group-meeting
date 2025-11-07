// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_code_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SendCodeRequestImpl _$$SendCodeRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$SendCodeRequestImpl(
      email: json['email'] as String,
      purpose: json['purpose'] as String? ?? 'LOGIN',
      deviceId: json['deviceId'] as String? ?? '',
      ipAddress: json['ipAddress'] as String? ?? '',
      platformId: json['platformId'] as String,
    );

Map<String, dynamic> _$$SendCodeRequestImplToJson(
        _$SendCodeRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'purpose': instance.purpose,
      'deviceId': instance.deviceId,
      'ipAddress': instance.ipAddress,
      'platformId': instance.platformId,
    };
