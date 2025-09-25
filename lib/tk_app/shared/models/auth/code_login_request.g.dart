// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'code_login_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CodeLoginRequestImpl _$$CodeLoginRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CodeLoginRequestImpl(
      email: json['email'] as String,
      code: json['code'] as String,
      deviceId: json['deviceId'] as String? ?? '',
      userAgent: json['userAgent'] as String? ?? '',
      ipAddress: json['ipAddress'] as String? ?? '',
    );

Map<String, dynamic> _$$CodeLoginRequestImplToJson(
        _$CodeLoginRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'code': instance.code,
      'deviceId': instance.deviceId,
      'userAgent': instance.userAgent,
      'ipAddress': instance.ipAddress,
    };
