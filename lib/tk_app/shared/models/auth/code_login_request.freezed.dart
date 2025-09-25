// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'code_login_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CodeLoginRequest _$CodeLoginRequestFromJson(Map<String, dynamic> json) {
  return _CodeLoginRequest.fromJson(json);
}

/// @nodoc
mixin _$CodeLoginRequest {
  /// 邮箱地址（必填）
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;

  /// 验证码（必填）
  /// 6位数字验证码
  @JsonKey(name: 'code')
  String get code => throw _privateConstructorUsedError;

  /// 设备ID（可选）
  /// 用于设备管理和安全验证
  @JsonKey(name: 'deviceId')
  String get deviceId => throw _privateConstructorUsedError;

  /// 用户代理（可选）
  /// 浏览器或客户端信息
  @JsonKey(name: 'userAgent')
  String get userAgent => throw _privateConstructorUsedError;

  /// IP地址（可选）
  /// 用于安全审计
  @JsonKey(name: 'ipAddress')
  String get ipAddress => throw _privateConstructorUsedError;

  /// Serializes this CodeLoginRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CodeLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CodeLoginRequestCopyWith<CodeLoginRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodeLoginRequestCopyWith<$Res> {
  factory $CodeLoginRequestCopyWith(
          CodeLoginRequest value, $Res Function(CodeLoginRequest) then) =
      _$CodeLoginRequestCopyWithImpl<$Res, CodeLoginRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String email,
      @JsonKey(name: 'code') String code,
      @JsonKey(name: 'deviceId') String deviceId,
      @JsonKey(name: 'userAgent') String userAgent,
      @JsonKey(name: 'ipAddress') String ipAddress});
}

/// @nodoc
class _$CodeLoginRequestCopyWithImpl<$Res, $Val extends CodeLoginRequest>
    implements $CodeLoginRequestCopyWith<$Res> {
  _$CodeLoginRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CodeLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? code = null,
    Object? deviceId = null,
    Object? userAgent = null,
    Object? ipAddress = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      userAgent: null == userAgent
          ? _value.userAgent
          : userAgent // ignore: cast_nullable_to_non_nullable
              as String,
      ipAddress: null == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CodeLoginRequestImplCopyWith<$Res>
    implements $CodeLoginRequestCopyWith<$Res> {
  factory _$$CodeLoginRequestImplCopyWith(_$CodeLoginRequestImpl value,
          $Res Function(_$CodeLoginRequestImpl) then) =
      __$$CodeLoginRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String email,
      @JsonKey(name: 'code') String code,
      @JsonKey(name: 'deviceId') String deviceId,
      @JsonKey(name: 'userAgent') String userAgent,
      @JsonKey(name: 'ipAddress') String ipAddress});
}

/// @nodoc
class __$$CodeLoginRequestImplCopyWithImpl<$Res>
    extends _$CodeLoginRequestCopyWithImpl<$Res, _$CodeLoginRequestImpl>
    implements _$$CodeLoginRequestImplCopyWith<$Res> {
  __$$CodeLoginRequestImplCopyWithImpl(_$CodeLoginRequestImpl _value,
      $Res Function(_$CodeLoginRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of CodeLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? code = null,
    Object? deviceId = null,
    Object? userAgent = null,
    Object? ipAddress = null,
  }) {
    return _then(_$CodeLoginRequestImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      userAgent: null == userAgent
          ? _value.userAgent
          : userAgent // ignore: cast_nullable_to_non_nullable
              as String,
      ipAddress: null == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CodeLoginRequestImpl implements _CodeLoginRequest {
  const _$CodeLoginRequestImpl(
      {@JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'code') required this.code,
      @JsonKey(name: 'deviceId') this.deviceId = '',
      @JsonKey(name: 'userAgent') this.userAgent = '',
      @JsonKey(name: 'ipAddress') this.ipAddress = ''});

  factory _$CodeLoginRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CodeLoginRequestImplFromJson(json);

  /// 邮箱地址（必填）
  @override
  @JsonKey(name: 'email')
  final String email;

  /// 验证码（必填）
  /// 6位数字验证码
  @override
  @JsonKey(name: 'code')
  final String code;

  /// 设备ID（可选）
  /// 用于设备管理和安全验证
  @override
  @JsonKey(name: 'deviceId')
  final String deviceId;

  /// 用户代理（可选）
  /// 浏览器或客户端信息
  @override
  @JsonKey(name: 'userAgent')
  final String userAgent;

  /// IP地址（可选）
  /// 用于安全审计
  @override
  @JsonKey(name: 'ipAddress')
  final String ipAddress;

  @override
  String toString() {
    return 'CodeLoginRequest(email: $email, code: $code, deviceId: $deviceId, userAgent: $userAgent, ipAddress: $ipAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CodeLoginRequestImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.userAgent, userAgent) ||
                other.userAgent == userAgent) &&
            (identical(other.ipAddress, ipAddress) ||
                other.ipAddress == ipAddress));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, email, code, deviceId, userAgent, ipAddress);

  /// Create a copy of CodeLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CodeLoginRequestImplCopyWith<_$CodeLoginRequestImpl> get copyWith =>
      __$$CodeLoginRequestImplCopyWithImpl<_$CodeLoginRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CodeLoginRequestImplToJson(
      this,
    );
  }
}

abstract class _CodeLoginRequest implements CodeLoginRequest {
  const factory _CodeLoginRequest(
          {@JsonKey(name: 'email') required final String email,
          @JsonKey(name: 'code') required final String code,
          @JsonKey(name: 'deviceId') final String deviceId,
          @JsonKey(name: 'userAgent') final String userAgent,
          @JsonKey(name: 'ipAddress') final String ipAddress}) =
      _$CodeLoginRequestImpl;

  factory _CodeLoginRequest.fromJson(Map<String, dynamic> json) =
      _$CodeLoginRequestImpl.fromJson;

  /// 邮箱地址（必填）
  @override
  @JsonKey(name: 'email')
  String get email;

  /// 验证码（必填）
  /// 6位数字验证码
  @override
  @JsonKey(name: 'code')
  String get code;

  /// 设备ID（可选）
  /// 用于设备管理和安全验证
  @override
  @JsonKey(name: 'deviceId')
  String get deviceId;

  /// 用户代理（可选）
  /// 浏览器或客户端信息
  @override
  @JsonKey(name: 'userAgent')
  String get userAgent;

  /// IP地址（可选）
  /// 用于安全审计
  @override
  @JsonKey(name: 'ipAddress')
  String get ipAddress;

  /// Create a copy of CodeLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CodeLoginRequestImplCopyWith<_$CodeLoginRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
