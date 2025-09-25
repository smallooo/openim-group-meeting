// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_code_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SendCodeRequest _$SendCodeRequestFromJson(Map<String, dynamic> json) {
  return _SendCodeRequest.fromJson(json);
}

/// @nodoc
mixin _$SendCodeRequest {
  /// 邮箱地址（必填）
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;

  /// 验证码用途
  /// LOGIN: 登录
  /// REGISTER: 注册
  /// RESET_PASSWORD: 重置密码
  @JsonKey(name: 'purpose')
  String get purpose => throw _privateConstructorUsedError;

  /// 设备ID（可选）
  @JsonKey(name: 'deviceId')
  String get deviceId => throw _privateConstructorUsedError;

  /// 用户代理（可选）
  @JsonKey(name: 'userAgent')
  String get userAgent => throw _privateConstructorUsedError;

  /// IP地址（可选）
  @JsonKey(name: 'ipAddress')
  String get ipAddress => throw _privateConstructorUsedError;

  /// Serializes this SendCodeRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SendCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SendCodeRequestCopyWith<SendCodeRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendCodeRequestCopyWith<$Res> {
  factory $SendCodeRequestCopyWith(
          SendCodeRequest value, $Res Function(SendCodeRequest) then) =
      _$SendCodeRequestCopyWithImpl<$Res, SendCodeRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String email,
      @JsonKey(name: 'purpose') String purpose,
      @JsonKey(name: 'deviceId') String deviceId,
      @JsonKey(name: 'userAgent') String userAgent,
      @JsonKey(name: 'ipAddress') String ipAddress});
}

/// @nodoc
class _$SendCodeRequestCopyWithImpl<$Res, $Val extends SendCodeRequest>
    implements $SendCodeRequestCopyWith<$Res> {
  _$SendCodeRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SendCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? purpose = null,
    Object? deviceId = null,
    Object? userAgent = null,
    Object? ipAddress = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: null == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
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
abstract class _$$SendCodeRequestImplCopyWith<$Res>
    implements $SendCodeRequestCopyWith<$Res> {
  factory _$$SendCodeRequestImplCopyWith(_$SendCodeRequestImpl value,
          $Res Function(_$SendCodeRequestImpl) then) =
      __$$SendCodeRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String email,
      @JsonKey(name: 'purpose') String purpose,
      @JsonKey(name: 'deviceId') String deviceId,
      @JsonKey(name: 'userAgent') String userAgent,
      @JsonKey(name: 'ipAddress') String ipAddress});
}

/// @nodoc
class __$$SendCodeRequestImplCopyWithImpl<$Res>
    extends _$SendCodeRequestCopyWithImpl<$Res, _$SendCodeRequestImpl>
    implements _$$SendCodeRequestImplCopyWith<$Res> {
  __$$SendCodeRequestImplCopyWithImpl(
      _$SendCodeRequestImpl _value, $Res Function(_$SendCodeRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? purpose = null,
    Object? deviceId = null,
    Object? userAgent = null,
    Object? ipAddress = null,
  }) {
    return _then(_$SendCodeRequestImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: null == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
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
class _$SendCodeRequestImpl implements _SendCodeRequest {
  const _$SendCodeRequestImpl(
      {@JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'purpose') this.purpose = 'LOGIN',
      @JsonKey(name: 'deviceId') this.deviceId = '',
      @JsonKey(name: 'userAgent') this.userAgent = '',
      @JsonKey(name: 'ipAddress') this.ipAddress = ''});

  factory _$SendCodeRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendCodeRequestImplFromJson(json);

  /// 邮箱地址（必填）
  @override
  @JsonKey(name: 'email')
  final String email;

  /// 验证码用途
  /// LOGIN: 登录
  /// REGISTER: 注册
  /// RESET_PASSWORD: 重置密码
  @override
  @JsonKey(name: 'purpose')
  final String purpose;

  /// 设备ID（可选）
  @override
  @JsonKey(name: 'deviceId')
  final String deviceId;

  /// 用户代理（可选）
  @override
  @JsonKey(name: 'userAgent')
  final String userAgent;

  /// IP地址（可选）
  @override
  @JsonKey(name: 'ipAddress')
  final String ipAddress;

  @override
  String toString() {
    return 'SendCodeRequest(email: $email, purpose: $purpose, deviceId: $deviceId, userAgent: $userAgent, ipAddress: $ipAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendCodeRequestImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.purpose, purpose) || other.purpose == purpose) &&
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
      Object.hash(runtimeType, email, purpose, deviceId, userAgent, ipAddress);

  /// Create a copy of SendCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendCodeRequestImplCopyWith<_$SendCodeRequestImpl> get copyWith =>
      __$$SendCodeRequestImplCopyWithImpl<_$SendCodeRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendCodeRequestImplToJson(
      this,
    );
  }
}

abstract class _SendCodeRequest implements SendCodeRequest {
  const factory _SendCodeRequest(
          {@JsonKey(name: 'email') required final String email,
          @JsonKey(name: 'purpose') final String purpose,
          @JsonKey(name: 'deviceId') final String deviceId,
          @JsonKey(name: 'userAgent') final String userAgent,
          @JsonKey(name: 'ipAddress') final String ipAddress}) =
      _$SendCodeRequestImpl;

  factory _SendCodeRequest.fromJson(Map<String, dynamic> json) =
      _$SendCodeRequestImpl.fromJson;

  /// 邮箱地址（必填）
  @override
  @JsonKey(name: 'email')
  String get email;

  /// 验证码用途
  /// LOGIN: 登录
  /// REGISTER: 注册
  /// RESET_PASSWORD: 重置密码
  @override
  @JsonKey(name: 'purpose')
  String get purpose;

  /// 设备ID（可选）
  @override
  @JsonKey(name: 'deviceId')
  String get deviceId;

  /// 用户代理（可选）
  @override
  @JsonKey(name: 'userAgent')
  String get userAgent;

  /// IP地址（可选）
  @override
  @JsonKey(name: 'ipAddress')
  String get ipAddress;

  /// Create a copy of SendCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendCodeRequestImplCopyWith<_$SendCodeRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
