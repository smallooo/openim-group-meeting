// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'im_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ImState {
  /// 是否正在初始化
  bool get isInitializing => throw _privateConstructorUsedError;

  /// 是否已初始化
  bool get isInitialized => throw _privateConstructorUsedError;

  /// IM Token
  String? get imToken => throw _privateConstructorUsedError;

  /// IM 用户信息
  Map<String, dynamic>? get imUserInfo => throw _privateConstructorUsedError;

  /// 错误信息
  String? get error => throw _privateConstructorUsedError;

  /// 连接状态
  ImConnectionStatus get connectionStatus => throw _privateConstructorUsedError;

  /// Create a copy of ImState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImStateCopyWith<ImState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImStateCopyWith<$Res> {
  factory $ImStateCopyWith(ImState value, $Res Function(ImState) then) =
      _$ImStateCopyWithImpl<$Res, ImState>;
  @useResult
  $Res call(
      {bool isInitializing,
      bool isInitialized,
      String? imToken,
      Map<String, dynamic>? imUserInfo,
      String? error,
      ImConnectionStatus connectionStatus});
}

/// @nodoc
class _$ImStateCopyWithImpl<$Res, $Val extends ImState>
    implements $ImStateCopyWith<$Res> {
  _$ImStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInitializing = null,
    Object? isInitialized = null,
    Object? imToken = freezed,
    Object? imUserInfo = freezed,
    Object? error = freezed,
    Object? connectionStatus = null,
  }) {
    return _then(_value.copyWith(
      isInitializing: null == isInitializing
          ? _value.isInitializing
          : isInitializing // ignore: cast_nullable_to_non_nullable
              as bool,
      isInitialized: null == isInitialized
          ? _value.isInitialized
          : isInitialized // ignore: cast_nullable_to_non_nullable
              as bool,
      imToken: freezed == imToken
          ? _value.imToken
          : imToken // ignore: cast_nullable_to_non_nullable
              as String?,
      imUserInfo: freezed == imUserInfo
          ? _value.imUserInfo
          : imUserInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      connectionStatus: null == connectionStatus
          ? _value.connectionStatus
          : connectionStatus // ignore: cast_nullable_to_non_nullable
              as ImConnectionStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImStateImplCopyWith<$Res> implements $ImStateCopyWith<$Res> {
  factory _$$ImStateImplCopyWith(
          _$ImStateImpl value, $Res Function(_$ImStateImpl) then) =
      __$$ImStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isInitializing,
      bool isInitialized,
      String? imToken,
      Map<String, dynamic>? imUserInfo,
      String? error,
      ImConnectionStatus connectionStatus});
}

/// @nodoc
class __$$ImStateImplCopyWithImpl<$Res>
    extends _$ImStateCopyWithImpl<$Res, _$ImStateImpl>
    implements _$$ImStateImplCopyWith<$Res> {
  __$$ImStateImplCopyWithImpl(
      _$ImStateImpl _value, $Res Function(_$ImStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInitializing = null,
    Object? isInitialized = null,
    Object? imToken = freezed,
    Object? imUserInfo = freezed,
    Object? error = freezed,
    Object? connectionStatus = null,
  }) {
    return _then(_$ImStateImpl(
      isInitializing: null == isInitializing
          ? _value.isInitializing
          : isInitializing // ignore: cast_nullable_to_non_nullable
              as bool,
      isInitialized: null == isInitialized
          ? _value.isInitialized
          : isInitialized // ignore: cast_nullable_to_non_nullable
              as bool,
      imToken: freezed == imToken
          ? _value.imToken
          : imToken // ignore: cast_nullable_to_non_nullable
              as String?,
      imUserInfo: freezed == imUserInfo
          ? _value._imUserInfo
          : imUserInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      connectionStatus: null == connectionStatus
          ? _value.connectionStatus
          : connectionStatus // ignore: cast_nullable_to_non_nullable
              as ImConnectionStatus,
    ));
  }
}

/// @nodoc

class _$ImStateImpl implements _ImState {
  const _$ImStateImpl(
      {this.isInitializing = false,
      this.isInitialized = false,
      this.imToken,
      final Map<String, dynamic>? imUserInfo,
      this.error,
      this.connectionStatus = ImConnectionStatus.disconnected})
      : _imUserInfo = imUserInfo;

  /// 是否正在初始化
  @override
  @JsonKey()
  final bool isInitializing;

  /// 是否已初始化
  @override
  @JsonKey()
  final bool isInitialized;

  /// IM Token
  @override
  final String? imToken;

  /// IM 用户信息
  final Map<String, dynamic>? _imUserInfo;

  /// IM 用户信息
  @override
  Map<String, dynamic>? get imUserInfo {
    final value = _imUserInfo;
    if (value == null) return null;
    if (_imUserInfo is EqualUnmodifiableMapView) return _imUserInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// 错误信息
  @override
  final String? error;

  /// 连接状态
  @override
  @JsonKey()
  final ImConnectionStatus connectionStatus;

  @override
  String toString() {
    return 'ImState(isInitializing: $isInitializing, isInitialized: $isInitialized, imToken: $imToken, imUserInfo: $imUserInfo, error: $error, connectionStatus: $connectionStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImStateImpl &&
            (identical(other.isInitializing, isInitializing) ||
                other.isInitializing == isInitializing) &&
            (identical(other.isInitialized, isInitialized) ||
                other.isInitialized == isInitialized) &&
            (identical(other.imToken, imToken) || other.imToken == imToken) &&
            const DeepCollectionEquality()
                .equals(other._imUserInfo, _imUserInfo) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.connectionStatus, connectionStatus) ||
                other.connectionStatus == connectionStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isInitializing,
      isInitialized,
      imToken,
      const DeepCollectionEquality().hash(_imUserInfo),
      error,
      connectionStatus);

  /// Create a copy of ImState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImStateImplCopyWith<_$ImStateImpl> get copyWith =>
      __$$ImStateImplCopyWithImpl<_$ImStateImpl>(this, _$identity);
}

abstract class _ImState implements ImState {
  const factory _ImState(
      {final bool isInitializing,
      final bool isInitialized,
      final String? imToken,
      final Map<String, dynamic>? imUserInfo,
      final String? error,
      final ImConnectionStatus connectionStatus}) = _$ImStateImpl;

  /// 是否正在初始化
  @override
  bool get isInitializing;

  /// 是否已初始化
  @override
  bool get isInitialized;

  /// IM Token
  @override
  String? get imToken;

  /// IM 用户信息
  @override
  Map<String, dynamic>? get imUserInfo;

  /// 错误信息
  @override
  String? get error;

  /// 连接状态
  @override
  ImConnectionStatus get connectionStatus;

  /// Create a copy of ImState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImStateImplCopyWith<_$ImStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
