// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_refresh_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokenRefreshResponseImpl _$$TokenRefreshResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TokenRefreshResponseImpl(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
      tokenType: json['tokenType'] as String,
      expiresIn: json['expiresIn'] as String,
      message: json['message'] as String?,
      imToken: json['imToken'] as String,
      imUid: json['imUid'] as String,
      chatToken: json['chatToken'] as String,
    );

Map<String, dynamic> _$$TokenRefreshResponseImplToJson(
        _$TokenRefreshResponseImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'tokenType': instance.tokenType,
      'expiresIn': instance.expiresIn,
      'message': instance.message,
      'imToken': instance.imToken,
      'imUid': instance.imUid,
      'chatToken': instance.chatToken,
    };
