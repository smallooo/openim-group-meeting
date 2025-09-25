// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_code_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SendCodeResponseImpl _$$SendCodeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SendCodeResponseImpl(
      success: json['success'] as bool,
      message: json['message'] as String,
      maskedEmail: json['maskedEmail'] as String,
      expirationTime: (json['expirationTime'] as num).toInt(),
      nextSendTime: (json['nextSendTime'] as num).toInt(),
    );

Map<String, dynamic> _$$SendCodeResponseImplToJson(
        _$SendCodeResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'maskedEmail': instance.maskedEmail,
      'expirationTime': instance.expirationTime,
      'nextSendTime': instance.nextSendTime,
    };
