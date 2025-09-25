// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_code_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SendCodeResponse _$SendCodeResponseFromJson(Map<String, dynamic> json) {
  return _SendCodeResponse.fromJson(json);
}

/// @nodoc
mixin _$SendCodeResponse {
  /// 是否发送成功
  @JsonKey(name: 'success')
  bool get success => throw _privateConstructorUsedError;

  /// 响应消息
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;

  /// 脱敏后的邮箱地址
  /// 例如：2***0@qq.com
  @JsonKey(name: 'maskedEmail')
  String get maskedEmail => throw _privateConstructorUsedError;

  /// 验证码过期时间（秒）
  /// 默认：300秒（5分钟）
  @JsonKey(name: 'expirationTime')
  int get expirationTime => throw _privateConstructorUsedError;

  /// 下次可发送时间（秒）
  /// 防止频繁发送，默认：60秒
  @JsonKey(name: 'nextSendTime')
  int get nextSendTime => throw _privateConstructorUsedError;

  /// Serializes this SendCodeResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SendCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SendCodeResponseCopyWith<SendCodeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendCodeResponseCopyWith<$Res> {
  factory $SendCodeResponseCopyWith(
          SendCodeResponse value, $Res Function(SendCodeResponse) then) =
      _$SendCodeResponseCopyWithImpl<$Res, SendCodeResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool success,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'maskedEmail') String maskedEmail,
      @JsonKey(name: 'expirationTime') int expirationTime,
      @JsonKey(name: 'nextSendTime') int nextSendTime});
}

/// @nodoc
class _$SendCodeResponseCopyWithImpl<$Res, $Val extends SendCodeResponse>
    implements $SendCodeResponseCopyWith<$Res> {
  _$SendCodeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SendCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? maskedEmail = null,
    Object? expirationTime = null,
    Object? nextSendTime = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      maskedEmail: null == maskedEmail
          ? _value.maskedEmail
          : maskedEmail // ignore: cast_nullable_to_non_nullable
              as String,
      expirationTime: null == expirationTime
          ? _value.expirationTime
          : expirationTime // ignore: cast_nullable_to_non_nullable
              as int,
      nextSendTime: null == nextSendTime
          ? _value.nextSendTime
          : nextSendTime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendCodeResponseImplCopyWith<$Res>
    implements $SendCodeResponseCopyWith<$Res> {
  factory _$$SendCodeResponseImplCopyWith(_$SendCodeResponseImpl value,
          $Res Function(_$SendCodeResponseImpl) then) =
      __$$SendCodeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool success,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'maskedEmail') String maskedEmail,
      @JsonKey(name: 'expirationTime') int expirationTime,
      @JsonKey(name: 'nextSendTime') int nextSendTime});
}

/// @nodoc
class __$$SendCodeResponseImplCopyWithImpl<$Res>
    extends _$SendCodeResponseCopyWithImpl<$Res, _$SendCodeResponseImpl>
    implements _$$SendCodeResponseImplCopyWith<$Res> {
  __$$SendCodeResponseImplCopyWithImpl(_$SendCodeResponseImpl _value,
      $Res Function(_$SendCodeResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? maskedEmail = null,
    Object? expirationTime = null,
    Object? nextSendTime = null,
  }) {
    return _then(_$SendCodeResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      maskedEmail: null == maskedEmail
          ? _value.maskedEmail
          : maskedEmail // ignore: cast_nullable_to_non_nullable
              as String,
      expirationTime: null == expirationTime
          ? _value.expirationTime
          : expirationTime // ignore: cast_nullable_to_non_nullable
              as int,
      nextSendTime: null == nextSendTime
          ? _value.nextSendTime
          : nextSendTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendCodeResponseImpl implements _SendCodeResponse {
  const _$SendCodeResponseImpl(
      {@JsonKey(name: 'success') required this.success,
      @JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'maskedEmail') required this.maskedEmail,
      @JsonKey(name: 'expirationTime') required this.expirationTime,
      @JsonKey(name: 'nextSendTime') required this.nextSendTime});

  factory _$SendCodeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendCodeResponseImplFromJson(json);

  /// 是否发送成功
  @override
  @JsonKey(name: 'success')
  final bool success;

  /// 响应消息
  @override
  @JsonKey(name: 'message')
  final String message;

  /// 脱敏后的邮箱地址
  /// 例如：2***0@qq.com
  @override
  @JsonKey(name: 'maskedEmail')
  final String maskedEmail;

  /// 验证码过期时间（秒）
  /// 默认：300秒（5分钟）
  @override
  @JsonKey(name: 'expirationTime')
  final int expirationTime;

  /// 下次可发送时间（秒）
  /// 防止频繁发送，默认：60秒
  @override
  @JsonKey(name: 'nextSendTime')
  final int nextSendTime;

  @override
  String toString() {
    return 'SendCodeResponse(success: $success, message: $message, maskedEmail: $maskedEmail, expirationTime: $expirationTime, nextSendTime: $nextSendTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendCodeResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.maskedEmail, maskedEmail) ||
                other.maskedEmail == maskedEmail) &&
            (identical(other.expirationTime, expirationTime) ||
                other.expirationTime == expirationTime) &&
            (identical(other.nextSendTime, nextSendTime) ||
                other.nextSendTime == nextSendTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, success, message, maskedEmail, expirationTime, nextSendTime);

  /// Create a copy of SendCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendCodeResponseImplCopyWith<_$SendCodeResponseImpl> get copyWith =>
      __$$SendCodeResponseImplCopyWithImpl<_$SendCodeResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendCodeResponseImplToJson(
      this,
    );
  }
}

abstract class _SendCodeResponse implements SendCodeResponse {
  const factory _SendCodeResponse(
          {@JsonKey(name: 'success') required final bool success,
          @JsonKey(name: 'message') required final String message,
          @JsonKey(name: 'maskedEmail') required final String maskedEmail,
          @JsonKey(name: 'expirationTime') required final int expirationTime,
          @JsonKey(name: 'nextSendTime') required final int nextSendTime}) =
      _$SendCodeResponseImpl;

  factory _SendCodeResponse.fromJson(Map<String, dynamic> json) =
      _$SendCodeResponseImpl.fromJson;

  /// 是否发送成功
  @override
  @JsonKey(name: 'success')
  bool get success;

  /// 响应消息
  @override
  @JsonKey(name: 'message')
  String get message;

  /// 脱敏后的邮箱地址
  /// 例如：2***0@qq.com
  @override
  @JsonKey(name: 'maskedEmail')
  String get maskedEmail;

  /// 验证码过期时间（秒）
  /// 默认：300秒（5分钟）
  @override
  @JsonKey(name: 'expirationTime')
  int get expirationTime;

  /// 下次可发送时间（秒）
  /// 防止频繁发送，默认：60秒
  @override
  @JsonKey(name: 'nextSendTime')
  int get nextSendTime;

  /// Create a copy of SendCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendCodeResponseImplCopyWith<_$SendCodeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
