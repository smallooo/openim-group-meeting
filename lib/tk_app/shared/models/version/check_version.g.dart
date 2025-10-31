// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_version.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckUpdateRequestImpl _$$CheckUpdateRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CheckUpdateRequestImpl(
      packageName: json['packageName'] as String,
      platform: json['platform'] as String,
      currentVersionName: json['currentVersionName'] as String,
    );

Map<String, dynamic> _$$CheckUpdateRequestImplToJson(
        _$CheckUpdateRequestImpl instance) =>
    <String, dynamic>{
      'packageName': instance.packageName,
      'platform': instance.platform,
      'currentVersionName': instance.currentVersionName,
    };

_$CheckUpdateDataImpl _$$CheckUpdateDataImplFromJson(
        Map<String, dynamic> json) =>
    _$CheckUpdateDataImpl(
      hasUpdate:
          json['hasUpdate'] == null ? false : _boolFromJson(json['hasUpdate']),
      appId: json['appId'] == null ? 0 : _intFromJson(json['appId']),
      forceUpdate: json['forceUpdate'] == null
          ? false
          : _boolFromJson(json['forceUpdate']),
      latestVersionName: json['latestVersionName'] as String? ?? '',
      latestVersionCode: json['latestVersionCode'] == null
          ? 0
          : _intFromJson(json['latestVersionCode']),
      downloadUrl: json['downloadUrl'] as String? ?? '',
      fileSize: json['fileSize'] == null ? 0 : _intFromJson(json['fileSize']),
      changelog: json['changelog'] as String? ?? '',
    );

Map<String, dynamic> _$$CheckUpdateDataImplToJson(
        _$CheckUpdateDataImpl instance) =>
    <String, dynamic>{
      'hasUpdate': instance.hasUpdate,
      'appId': instance.appId,
      'forceUpdate': instance.forceUpdate,
      'latestVersionName': instance.latestVersionName,
      'latestVersionCode': instance.latestVersionCode,
      'downloadUrl': instance.downloadUrl,
      'fileSize': instance.fileSize,
      'changelog': instance.changelog,
    };

_$CheckUpdateResponseImpl _$$CheckUpdateResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CheckUpdateResponseImpl(
      code: (json['code'] as num).toInt(),
      message: json['message'] as String,
      ok: json['ok'] as bool,
      data: CheckUpdateData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CheckUpdateResponseImplToJson(
        _$CheckUpdateResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'ok': instance.ok,
      'data': instance.data,
    };
