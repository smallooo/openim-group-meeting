import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_version.freezed.dart';
part 'check_version.g.dart';

/// 将可能为空字符串或数字的值转换为 int
int _intFromJson(dynamic value) {
  if (value == null || value == '') return 0;
  if (value is int) return value;
  if (value is num) return value.toInt();
  if (value is String) {
    final parsed = int.tryParse(value);
    return parsed ?? 0;
  }
  return 0;
}

/// 将可能为空字符串或布尔值的值转换为 bool
bool _boolFromJson(dynamic value) {
  if (value == null || value == '') return false;
  if (value is bool) return value;
  if (value is String) {
    if (value.toLowerCase() == 'true' || value == '1') return true;
    if (value.toLowerCase() == 'false' || value == '0' || value.isEmpty) return false;
  }
  if (value is int) return value != 0;
  if (value is num) return value != 0;
  return false;
}

/// 检查更新请求模型
@freezed
class CheckUpdateRequest with _$CheckUpdateRequest {
  const factory CheckUpdateRequest({
    /// 应用包名
    @JsonKey(name: 'packageName') required String packageName,
    
    /// 平台（android/ios）
    @JsonKey(name: 'platform') required String platform,
    
    /// 当前版本号
    @JsonKey(name: 'currentVersionName') required String currentVersionName,
  }) = _CheckUpdateRequest;

  factory CheckUpdateRequest.fromJson(Map<String, dynamic> json) => 
      _$CheckUpdateRequestFromJson(json);
}

/// 检查更新响应数据模型
@freezed
class CheckUpdateData with _$CheckUpdateData {
  const factory CheckUpdateData({
    /// 是否有更新
    @JsonKey(name: 'hasUpdate', fromJson: _boolFromJson) @Default(false) bool hasUpdate,
    
    /// 应用ID
    @JsonKey(name: 'appId', fromJson: _intFromJson) @Default(0) int appId,
    
    /// 是否强制更新
    @JsonKey(name: 'forceUpdate', fromJson: _boolFromJson) @Default(false) bool forceUpdate,
    
    /// 最新版本号
    @JsonKey(name: 'latestVersionName') @Default('') String latestVersionName,
    
    /// 最新版本代码
    @JsonKey(name: 'latestVersionCode', fromJson: _intFromJson) @Default(0) int latestVersionCode,
    
    /// 下载地址
    @JsonKey(name: 'downloadUrl') @Default('') String downloadUrl,
    
    /// 文件大小
    @JsonKey(name: 'fileSize', fromJson: _intFromJson) @Default(0) int fileSize,
    
    /// 更新日志
    @JsonKey(name: 'changelog') @Default('') String changelog,
  }) = _CheckUpdateData;

  factory CheckUpdateData.fromJson(Map<String, dynamic> json) => 
      _$CheckUpdateDataFromJson(json);
}

/// 检查更新响应模型
@freezed
class CheckUpdateResponse with _$CheckUpdateResponse {
  const factory CheckUpdateResponse({
    /// 响应代码
    @JsonKey(name: 'code') required int code,
    
    /// 响应消息
    @JsonKey(name: 'message') required String message,
    
    /// 是否成功
    @JsonKey(name: 'ok') required bool ok,
    
    /// 响应数据
    @JsonKey(name: 'data') required CheckUpdateData data,
  }) = _CheckUpdateResponse;

  factory CheckUpdateResponse.fromJson(Map<String, dynamic> json) => 
      _$CheckUpdateResponseFromJson(json);
}

