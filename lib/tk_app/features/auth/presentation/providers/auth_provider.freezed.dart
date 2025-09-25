// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState {
  /// 是否正在加载
  bool get isLoading => throw _privateConstructorUsedError;

  /// 用户信息
  CodeLoginResponse? get user => throw _privateConstructorUsedError;

  /// 错误信息
  String? get error => throw _privateConstructorUsedError;

  /// 是否已登录
  bool get isLoggedIn => throw _privateConstructorUsedError;

  /// 发送验证码结果
  SendCodeResponse? get sendCodeResult => throw _privateConstructorUsedError;

  /// 验证码发送冷却时间（秒）
  int get sendCodeCooldown => throw _privateConstructorUsedError;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool isLoading,
      CodeLoginResponse? user,
      String? error,
      bool isLoggedIn,
      SendCodeResponse? sendCodeResult,
      int sendCodeCooldown});

  $CodeLoginResponseCopyWith<$Res>? get user;
  $SendCodeResponseCopyWith<$Res>? get sendCodeResult;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? user = freezed,
    Object? error = freezed,
    Object? isLoggedIn = null,
    Object? sendCodeResult = freezed,
    Object? sendCodeCooldown = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as CodeLoginResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoggedIn: null == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      sendCodeResult: freezed == sendCodeResult
          ? _value.sendCodeResult
          : sendCodeResult // ignore: cast_nullable_to_non_nullable
              as SendCodeResponse?,
      sendCodeCooldown: null == sendCodeCooldown
          ? _value.sendCodeCooldown
          : sendCodeCooldown // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeLoginResponseCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $CodeLoginResponseCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SendCodeResponseCopyWith<$Res>? get sendCodeResult {
    if (_value.sendCodeResult == null) {
      return null;
    }

    return $SendCodeResponseCopyWith<$Res>(_value.sendCodeResult!, (value) {
      return _then(_value.copyWith(sendCodeResult: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      CodeLoginResponse? user,
      String? error,
      bool isLoggedIn,
      SendCodeResponse? sendCodeResult,
      int sendCodeCooldown});

  @override
  $CodeLoginResponseCopyWith<$Res>? get user;
  @override
  $SendCodeResponseCopyWith<$Res>? get sendCodeResult;
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? user = freezed,
    Object? error = freezed,
    Object? isLoggedIn = null,
    Object? sendCodeResult = freezed,
    Object? sendCodeCooldown = null,
  }) {
    return _then(_$AuthStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as CodeLoginResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoggedIn: null == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      sendCodeResult: freezed == sendCodeResult
          ? _value.sendCodeResult
          : sendCodeResult // ignore: cast_nullable_to_non_nullable
              as SendCodeResponse?,
      sendCodeCooldown: null == sendCodeCooldown
          ? _value.sendCodeCooldown
          : sendCodeCooldown // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl(
      {this.isLoading = false,
      this.user,
      this.error,
      this.isLoggedIn = false,
      this.sendCodeResult,
      this.sendCodeCooldown = 0});

  /// 是否正在加载
  @override
  @JsonKey()
  final bool isLoading;

  /// 用户信息
  @override
  final CodeLoginResponse? user;

  /// 错误信息
  @override
  final String? error;

  /// 是否已登录
  @override
  @JsonKey()
  final bool isLoggedIn;

  /// 发送验证码结果
  @override
  final SendCodeResponse? sendCodeResult;

  /// 验证码发送冷却时间（秒）
  @override
  @JsonKey()
  final int sendCodeCooldown;

  @override
  String toString() {
    return 'AuthState(isLoading: $isLoading, user: $user, error: $error, isLoggedIn: $isLoggedIn, sendCodeResult: $sendCodeResult, sendCodeCooldown: $sendCodeCooldown)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isLoggedIn, isLoggedIn) ||
                other.isLoggedIn == isLoggedIn) &&
            (identical(other.sendCodeResult, sendCodeResult) ||
                other.sendCodeResult == sendCodeResult) &&
            (identical(other.sendCodeCooldown, sendCodeCooldown) ||
                other.sendCodeCooldown == sendCodeCooldown));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, user, error,
      isLoggedIn, sendCodeResult, sendCodeCooldown);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {final bool isLoading,
      final CodeLoginResponse? user,
      final String? error,
      final bool isLoggedIn,
      final SendCodeResponse? sendCodeResult,
      final int sendCodeCooldown}) = _$AuthStateImpl;

  /// 是否正在加载
  @override
  bool get isLoading;

  /// 用户信息
  @override
  CodeLoginResponse? get user;

  /// 错误信息
  @override
  String? get error;

  /// 是否已登录
  @override
  bool get isLoggedIn;

  /// 发送验证码结果
  @override
  SendCodeResponse? get sendCodeResult;

  /// 验证码发送冷却时间（秒）
  @override
  int get sendCodeCooldown;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
