// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_version.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CheckUpdateRequest _$CheckUpdateRequestFromJson(Map<String, dynamic> json) {
  return _CheckUpdateRequest.fromJson(json);
}

/// @nodoc
mixin _$CheckUpdateRequest {
  /// 应用包名
  @JsonKey(name: 'packageName')
  String get packageName => throw _privateConstructorUsedError;

  /// 平台（android/ios）
  @JsonKey(name: 'platform')
  String get platform => throw _privateConstructorUsedError;

  /// 当前版本号
  @JsonKey(name: 'currentVersionName')
  String get currentVersionName => throw _privateConstructorUsedError;

  /// Serializes this CheckUpdateRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CheckUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckUpdateRequestCopyWith<CheckUpdateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckUpdateRequestCopyWith<$Res> {
  factory $CheckUpdateRequestCopyWith(
          CheckUpdateRequest value, $Res Function(CheckUpdateRequest) then) =
      _$CheckUpdateRequestCopyWithImpl<$Res, CheckUpdateRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'packageName') String packageName,
      @JsonKey(name: 'platform') String platform,
      @JsonKey(name: 'currentVersionName') String currentVersionName});
}

/// @nodoc
class _$CheckUpdateRequestCopyWithImpl<$Res, $Val extends CheckUpdateRequest>
    implements $CheckUpdateRequestCopyWith<$Res> {
  _$CheckUpdateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packageName = null,
    Object? platform = null,
    Object? currentVersionName = null,
  }) {
    return _then(_value.copyWith(
      packageName: null == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      currentVersionName: null == currentVersionName
          ? _value.currentVersionName
          : currentVersionName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckUpdateRequestImplCopyWith<$Res>
    implements $CheckUpdateRequestCopyWith<$Res> {
  factory _$$CheckUpdateRequestImplCopyWith(_$CheckUpdateRequestImpl value,
          $Res Function(_$CheckUpdateRequestImpl) then) =
      __$$CheckUpdateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'packageName') String packageName,
      @JsonKey(name: 'platform') String platform,
      @JsonKey(name: 'currentVersionName') String currentVersionName});
}

/// @nodoc
class __$$CheckUpdateRequestImplCopyWithImpl<$Res>
    extends _$CheckUpdateRequestCopyWithImpl<$Res, _$CheckUpdateRequestImpl>
    implements _$$CheckUpdateRequestImplCopyWith<$Res> {
  __$$CheckUpdateRequestImplCopyWithImpl(_$CheckUpdateRequestImpl _value,
      $Res Function(_$CheckUpdateRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packageName = null,
    Object? platform = null,
    Object? currentVersionName = null,
  }) {
    return _then(_$CheckUpdateRequestImpl(
      packageName: null == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      currentVersionName: null == currentVersionName
          ? _value.currentVersionName
          : currentVersionName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckUpdateRequestImpl implements _CheckUpdateRequest {
  const _$CheckUpdateRequestImpl(
      {@JsonKey(name: 'packageName') required this.packageName,
      @JsonKey(name: 'platform') required this.platform,
      @JsonKey(name: 'currentVersionName') required this.currentVersionName});

  factory _$CheckUpdateRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckUpdateRequestImplFromJson(json);

  /// 应用包名
  @override
  @JsonKey(name: 'packageName')
  final String packageName;

  /// 平台（android/ios）
  @override
  @JsonKey(name: 'platform')
  final String platform;

  /// 当前版本号
  @override
  @JsonKey(name: 'currentVersionName')
  final String currentVersionName;

  @override
  String toString() {
    return 'CheckUpdateRequest(packageName: $packageName, platform: $platform, currentVersionName: $currentVersionName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckUpdateRequestImpl &&
            (identical(other.packageName, packageName) ||
                other.packageName == packageName) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.currentVersionName, currentVersionName) ||
                other.currentVersionName == currentVersionName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, packageName, platform, currentVersionName);

  /// Create a copy of CheckUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckUpdateRequestImplCopyWith<_$CheckUpdateRequestImpl> get copyWith =>
      __$$CheckUpdateRequestImplCopyWithImpl<_$CheckUpdateRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckUpdateRequestImplToJson(
      this,
    );
  }
}

abstract class _CheckUpdateRequest implements CheckUpdateRequest {
  const factory _CheckUpdateRequest(
      {@JsonKey(name: 'packageName') required final String packageName,
      @JsonKey(name: 'platform') required final String platform,
      @JsonKey(name: 'currentVersionName')
      required final String currentVersionName}) = _$CheckUpdateRequestImpl;

  factory _CheckUpdateRequest.fromJson(Map<String, dynamic> json) =
      _$CheckUpdateRequestImpl.fromJson;

  /// 应用包名
  @override
  @JsonKey(name: 'packageName')
  String get packageName;

  /// 平台（android/ios）
  @override
  @JsonKey(name: 'platform')
  String get platform;

  /// 当前版本号
  @override
  @JsonKey(name: 'currentVersionName')
  String get currentVersionName;

  /// Create a copy of CheckUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckUpdateRequestImplCopyWith<_$CheckUpdateRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CheckUpdateData _$CheckUpdateDataFromJson(Map<String, dynamic> json) {
  return _CheckUpdateData.fromJson(json);
}

/// @nodoc
mixin _$CheckUpdateData {
  /// 是否有更新
  @JsonKey(name: 'hasUpdate', fromJson: _boolFromJson)
  bool get hasUpdate => throw _privateConstructorUsedError;

  /// 应用ID
  @JsonKey(name: 'appId', fromJson: _intFromJson)
  int get appId => throw _privateConstructorUsedError;

  /// 是否强制更新
  @JsonKey(name: 'forceUpdate', fromJson: _boolFromJson)
  bool get forceUpdate => throw _privateConstructorUsedError;

  /// 最新版本号
  @JsonKey(name: 'latestVersionName')
  String get latestVersionName => throw _privateConstructorUsedError;

  /// 最新版本代码
  @JsonKey(name: 'latestVersionCode', fromJson: _intFromJson)
  int get latestVersionCode => throw _privateConstructorUsedError;

  /// 下载地址
  @JsonKey(name: 'downloadUrl')
  String get downloadUrl => throw _privateConstructorUsedError;

  /// 文件大小
  @JsonKey(name: 'fileSize', fromJson: _intFromJson)
  int get fileSize => throw _privateConstructorUsedError;

  /// 更新日志
  @JsonKey(name: 'changelog')
  String get changelog => throw _privateConstructorUsedError;

  /// Serializes this CheckUpdateData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CheckUpdateData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckUpdateDataCopyWith<CheckUpdateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckUpdateDataCopyWith<$Res> {
  factory $CheckUpdateDataCopyWith(
          CheckUpdateData value, $Res Function(CheckUpdateData) then) =
      _$CheckUpdateDataCopyWithImpl<$Res, CheckUpdateData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'hasUpdate', fromJson: _boolFromJson) bool hasUpdate,
      @JsonKey(name: 'appId', fromJson: _intFromJson) int appId,
      @JsonKey(name: 'forceUpdate', fromJson: _boolFromJson) bool forceUpdate,
      @JsonKey(name: 'latestVersionName') String latestVersionName,
      @JsonKey(name: 'latestVersionCode', fromJson: _intFromJson)
      int latestVersionCode,
      @JsonKey(name: 'downloadUrl') String downloadUrl,
      @JsonKey(name: 'fileSize', fromJson: _intFromJson) int fileSize,
      @JsonKey(name: 'changelog') String changelog});
}

/// @nodoc
class _$CheckUpdateDataCopyWithImpl<$Res, $Val extends CheckUpdateData>
    implements $CheckUpdateDataCopyWith<$Res> {
  _$CheckUpdateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckUpdateData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasUpdate = null,
    Object? appId = null,
    Object? forceUpdate = null,
    Object? latestVersionName = null,
    Object? latestVersionCode = null,
    Object? downloadUrl = null,
    Object? fileSize = null,
    Object? changelog = null,
  }) {
    return _then(_value.copyWith(
      hasUpdate: null == hasUpdate
          ? _value.hasUpdate
          : hasUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      appId: null == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as int,
      forceUpdate: null == forceUpdate
          ? _value.forceUpdate
          : forceUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      latestVersionName: null == latestVersionName
          ? _value.latestVersionName
          : latestVersionName // ignore: cast_nullable_to_non_nullable
              as String,
      latestVersionCode: null == latestVersionCode
          ? _value.latestVersionCode
          : latestVersionCode // ignore: cast_nullable_to_non_nullable
              as int,
      downloadUrl: null == downloadUrl
          ? _value.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String,
      fileSize: null == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int,
      changelog: null == changelog
          ? _value.changelog
          : changelog // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckUpdateDataImplCopyWith<$Res>
    implements $CheckUpdateDataCopyWith<$Res> {
  factory _$$CheckUpdateDataImplCopyWith(_$CheckUpdateDataImpl value,
          $Res Function(_$CheckUpdateDataImpl) then) =
      __$$CheckUpdateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'hasUpdate', fromJson: _boolFromJson) bool hasUpdate,
      @JsonKey(name: 'appId', fromJson: _intFromJson) int appId,
      @JsonKey(name: 'forceUpdate', fromJson: _boolFromJson) bool forceUpdate,
      @JsonKey(name: 'latestVersionName') String latestVersionName,
      @JsonKey(name: 'latestVersionCode', fromJson: _intFromJson)
      int latestVersionCode,
      @JsonKey(name: 'downloadUrl') String downloadUrl,
      @JsonKey(name: 'fileSize', fromJson: _intFromJson) int fileSize,
      @JsonKey(name: 'changelog') String changelog});
}

/// @nodoc
class __$$CheckUpdateDataImplCopyWithImpl<$Res>
    extends _$CheckUpdateDataCopyWithImpl<$Res, _$CheckUpdateDataImpl>
    implements _$$CheckUpdateDataImplCopyWith<$Res> {
  __$$CheckUpdateDataImplCopyWithImpl(
      _$CheckUpdateDataImpl _value, $Res Function(_$CheckUpdateDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckUpdateData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasUpdate = null,
    Object? appId = null,
    Object? forceUpdate = null,
    Object? latestVersionName = null,
    Object? latestVersionCode = null,
    Object? downloadUrl = null,
    Object? fileSize = null,
    Object? changelog = null,
  }) {
    return _then(_$CheckUpdateDataImpl(
      hasUpdate: null == hasUpdate
          ? _value.hasUpdate
          : hasUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      appId: null == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as int,
      forceUpdate: null == forceUpdate
          ? _value.forceUpdate
          : forceUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      latestVersionName: null == latestVersionName
          ? _value.latestVersionName
          : latestVersionName // ignore: cast_nullable_to_non_nullable
              as String,
      latestVersionCode: null == latestVersionCode
          ? _value.latestVersionCode
          : latestVersionCode // ignore: cast_nullable_to_non_nullable
              as int,
      downloadUrl: null == downloadUrl
          ? _value.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String,
      fileSize: null == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int,
      changelog: null == changelog
          ? _value.changelog
          : changelog // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckUpdateDataImpl implements _CheckUpdateData {
  const _$CheckUpdateDataImpl(
      {@JsonKey(name: 'hasUpdate', fromJson: _boolFromJson)
      this.hasUpdate = false,
      @JsonKey(name: 'appId', fromJson: _intFromJson) this.appId = 0,
      @JsonKey(name: 'forceUpdate', fromJson: _boolFromJson)
      this.forceUpdate = false,
      @JsonKey(name: 'latestVersionName') this.latestVersionName = '',
      @JsonKey(name: 'latestVersionCode', fromJson: _intFromJson)
      this.latestVersionCode = 0,
      @JsonKey(name: 'downloadUrl') this.downloadUrl = '',
      @JsonKey(name: 'fileSize', fromJson: _intFromJson) this.fileSize = 0,
      @JsonKey(name: 'changelog') this.changelog = ''});

  factory _$CheckUpdateDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckUpdateDataImplFromJson(json);

  /// 是否有更新
  @override
  @JsonKey(name: 'hasUpdate', fromJson: _boolFromJson)
  final bool hasUpdate;

  /// 应用ID
  @override
  @JsonKey(name: 'appId', fromJson: _intFromJson)
  final int appId;

  /// 是否强制更新
  @override
  @JsonKey(name: 'forceUpdate', fromJson: _boolFromJson)
  final bool forceUpdate;

  /// 最新版本号
  @override
  @JsonKey(name: 'latestVersionName')
  final String latestVersionName;

  /// 最新版本代码
  @override
  @JsonKey(name: 'latestVersionCode', fromJson: _intFromJson)
  final int latestVersionCode;

  /// 下载地址
  @override
  @JsonKey(name: 'downloadUrl')
  final String downloadUrl;

  /// 文件大小
  @override
  @JsonKey(name: 'fileSize', fromJson: _intFromJson)
  final int fileSize;

  /// 更新日志
  @override
  @JsonKey(name: 'changelog')
  final String changelog;

  @override
  String toString() {
    return 'CheckUpdateData(hasUpdate: $hasUpdate, appId: $appId, forceUpdate: $forceUpdate, latestVersionName: $latestVersionName, latestVersionCode: $latestVersionCode, downloadUrl: $downloadUrl, fileSize: $fileSize, changelog: $changelog)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckUpdateDataImpl &&
            (identical(other.hasUpdate, hasUpdate) ||
                other.hasUpdate == hasUpdate) &&
            (identical(other.appId, appId) || other.appId == appId) &&
            (identical(other.forceUpdate, forceUpdate) ||
                other.forceUpdate == forceUpdate) &&
            (identical(other.latestVersionName, latestVersionName) ||
                other.latestVersionName == latestVersionName) &&
            (identical(other.latestVersionCode, latestVersionCode) ||
                other.latestVersionCode == latestVersionCode) &&
            (identical(other.downloadUrl, downloadUrl) ||
                other.downloadUrl == downloadUrl) &&
            (identical(other.fileSize, fileSize) ||
                other.fileSize == fileSize) &&
            (identical(other.changelog, changelog) ||
                other.changelog == changelog));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, hasUpdate, appId, forceUpdate,
      latestVersionName, latestVersionCode, downloadUrl, fileSize, changelog);

  /// Create a copy of CheckUpdateData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckUpdateDataImplCopyWith<_$CheckUpdateDataImpl> get copyWith =>
      __$$CheckUpdateDataImplCopyWithImpl<_$CheckUpdateDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckUpdateDataImplToJson(
      this,
    );
  }
}

abstract class _CheckUpdateData implements CheckUpdateData {
  const factory _CheckUpdateData(
          {@JsonKey(name: 'hasUpdate', fromJson: _boolFromJson)
          final bool hasUpdate,
          @JsonKey(name: 'appId', fromJson: _intFromJson) final int appId,
          @JsonKey(name: 'forceUpdate', fromJson: _boolFromJson)
          final bool forceUpdate,
          @JsonKey(name: 'latestVersionName') final String latestVersionName,
          @JsonKey(name: 'latestVersionCode', fromJson: _intFromJson)
          final int latestVersionCode,
          @JsonKey(name: 'downloadUrl') final String downloadUrl,
          @JsonKey(name: 'fileSize', fromJson: _intFromJson) final int fileSize,
          @JsonKey(name: 'changelog') final String changelog}) =
      _$CheckUpdateDataImpl;

  factory _CheckUpdateData.fromJson(Map<String, dynamic> json) =
      _$CheckUpdateDataImpl.fromJson;

  /// 是否有更新
  @override
  @JsonKey(name: 'hasUpdate', fromJson: _boolFromJson)
  bool get hasUpdate;

  /// 应用ID
  @override
  @JsonKey(name: 'appId', fromJson: _intFromJson)
  int get appId;

  /// 是否强制更新
  @override
  @JsonKey(name: 'forceUpdate', fromJson: _boolFromJson)
  bool get forceUpdate;

  /// 最新版本号
  @override
  @JsonKey(name: 'latestVersionName')
  String get latestVersionName;

  /// 最新版本代码
  @override
  @JsonKey(name: 'latestVersionCode', fromJson: _intFromJson)
  int get latestVersionCode;

  /// 下载地址
  @override
  @JsonKey(name: 'downloadUrl')
  String get downloadUrl;

  /// 文件大小
  @override
  @JsonKey(name: 'fileSize', fromJson: _intFromJson)
  int get fileSize;

  /// 更新日志
  @override
  @JsonKey(name: 'changelog')
  String get changelog;

  /// Create a copy of CheckUpdateData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckUpdateDataImplCopyWith<_$CheckUpdateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CheckUpdateResponse _$CheckUpdateResponseFromJson(Map<String, dynamic> json) {
  return _CheckUpdateResponse.fromJson(json);
}

/// @nodoc
mixin _$CheckUpdateResponse {
  /// 响应代码
  @JsonKey(name: 'code')
  int get code => throw _privateConstructorUsedError;

  /// 响应消息
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;

  /// 是否成功
  @JsonKey(name: 'ok')
  bool get ok => throw _privateConstructorUsedError;

  /// 响应数据
  @JsonKey(name: 'data')
  CheckUpdateData get data => throw _privateConstructorUsedError;

  /// Serializes this CheckUpdateResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CheckUpdateResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckUpdateResponseCopyWith<CheckUpdateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckUpdateResponseCopyWith<$Res> {
  factory $CheckUpdateResponseCopyWith(
          CheckUpdateResponse value, $Res Function(CheckUpdateResponse) then) =
      _$CheckUpdateResponseCopyWithImpl<$Res, CheckUpdateResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int code,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'ok') bool ok,
      @JsonKey(name: 'data') CheckUpdateData data});

  $CheckUpdateDataCopyWith<$Res> get data;
}

/// @nodoc
class _$CheckUpdateResponseCopyWithImpl<$Res, $Val extends CheckUpdateResponse>
    implements $CheckUpdateResponseCopyWith<$Res> {
  _$CheckUpdateResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckUpdateResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? ok = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      ok: null == ok
          ? _value.ok
          : ok // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CheckUpdateData,
    ) as $Val);
  }

  /// Create a copy of CheckUpdateResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CheckUpdateDataCopyWith<$Res> get data {
    return $CheckUpdateDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CheckUpdateResponseImplCopyWith<$Res>
    implements $CheckUpdateResponseCopyWith<$Res> {
  factory _$$CheckUpdateResponseImplCopyWith(_$CheckUpdateResponseImpl value,
          $Res Function(_$CheckUpdateResponseImpl) then) =
      __$$CheckUpdateResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int code,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'ok') bool ok,
      @JsonKey(name: 'data') CheckUpdateData data});

  @override
  $CheckUpdateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$CheckUpdateResponseImplCopyWithImpl<$Res>
    extends _$CheckUpdateResponseCopyWithImpl<$Res, _$CheckUpdateResponseImpl>
    implements _$$CheckUpdateResponseImplCopyWith<$Res> {
  __$$CheckUpdateResponseImplCopyWithImpl(_$CheckUpdateResponseImpl _value,
      $Res Function(_$CheckUpdateResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckUpdateResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? ok = null,
    Object? data = null,
  }) {
    return _then(_$CheckUpdateResponseImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      ok: null == ok
          ? _value.ok
          : ok // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CheckUpdateData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckUpdateResponseImpl implements _CheckUpdateResponse {
  const _$CheckUpdateResponseImpl(
      {@JsonKey(name: 'code') required this.code,
      @JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'ok') required this.ok,
      @JsonKey(name: 'data') required this.data});

  factory _$CheckUpdateResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckUpdateResponseImplFromJson(json);

  /// 响应代码
  @override
  @JsonKey(name: 'code')
  final int code;

  /// 响应消息
  @override
  @JsonKey(name: 'message')
  final String message;

  /// 是否成功
  @override
  @JsonKey(name: 'ok')
  final bool ok;

  /// 响应数据
  @override
  @JsonKey(name: 'data')
  final CheckUpdateData data;

  @override
  String toString() {
    return 'CheckUpdateResponse(code: $code, message: $message, ok: $ok, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckUpdateResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.ok, ok) || other.ok == ok) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, ok, data);

  /// Create a copy of CheckUpdateResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckUpdateResponseImplCopyWith<_$CheckUpdateResponseImpl> get copyWith =>
      __$$CheckUpdateResponseImplCopyWithImpl<_$CheckUpdateResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckUpdateResponseImplToJson(
      this,
    );
  }
}

abstract class _CheckUpdateResponse implements CheckUpdateResponse {
  const factory _CheckUpdateResponse(
          {@JsonKey(name: 'code') required final int code,
          @JsonKey(name: 'message') required final String message,
          @JsonKey(name: 'ok') required final bool ok,
          @JsonKey(name: 'data') required final CheckUpdateData data}) =
      _$CheckUpdateResponseImpl;

  factory _CheckUpdateResponse.fromJson(Map<String, dynamic> json) =
      _$CheckUpdateResponseImpl.fromJson;

  /// 响应代码
  @override
  @JsonKey(name: 'code')
  int get code;

  /// 响应消息
  @override
  @JsonKey(name: 'message')
  String get message;

  /// 是否成功
  @override
  @JsonKey(name: 'ok')
  bool get ok;

  /// 响应数据
  @override
  @JsonKey(name: 'data')
  CheckUpdateData get data;

  /// Create a copy of CheckUpdateResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckUpdateResponseImplCopyWith<_$CheckUpdateResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
