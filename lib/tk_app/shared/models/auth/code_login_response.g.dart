// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'code_login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CodeLoginResponseImpl _$$CodeLoginResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CodeLoginResponseImpl(
      accessToken: json['accessToken'] as String,
      tokenType: json['tokenType'] as String,
      expiresIn: json['expiresIn'] as String,
      userId: json['userId'] as String?,
      memberId: json['memberId'] as String,
      email: json['email'] as String,
      nickname: json['nickname'] as String,
      avatar: json['avatar'] as String,
      isNewUser: json['isNewUser'] as bool,
      loginType: json['loginType'] as String,
      imToken: json['imToken'] as String,
      imUid: json['imUid'] as String,
      chatToken: json['chatToken'] as String,
    );

Map<String, dynamic> _$$CodeLoginResponseImplToJson(
        _$CodeLoginResponseImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'tokenType': instance.tokenType,
      'expiresIn': instance.expiresIn,
      'userId': instance.userId,
      'memberId': instance.memberId,
      'email': instance.email,
      'nickname': instance.nickname,
      'avatar': instance.avatar,
      'isNewUser': instance.isNewUser,
      'loginType': instance.loginType,
      'imToken': instance.imToken,
      'imUid': instance.imUid,
      'chatToken': instance.chatToken,
    };
