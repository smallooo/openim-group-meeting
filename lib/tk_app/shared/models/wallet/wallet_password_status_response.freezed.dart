// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_password_status_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WalletPasswordStatusData _$WalletPasswordStatusDataFromJson(
    Map<String, dynamic> json) {
  return _WalletPasswordStatusData.fromJson(json);
}

/// @nodoc
mixin _$WalletPasswordStatusData {
  /// 是否已设置密码
  /// true: 已设置密码，需要跳转到修改密码页面
  /// false: 未设置密码，需要跳转到设置密码页面
  @JsonKey(name: 'hasPassword')
  bool get hasPassword => throw _privateConstructorUsedError;

  /// 密码是否被锁定
  /// true: 密码被锁定，可能需要特殊处理
  /// false: 密码正常状态
  @JsonKey(name: 'isLocked')
  bool get isLocked => throw _privateConstructorUsedError;

  /// Serializes this WalletPasswordStatusData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WalletPasswordStatusData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalletPasswordStatusDataCopyWith<WalletPasswordStatusData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletPasswordStatusDataCopyWith<$Res> {
  factory $WalletPasswordStatusDataCopyWith(WalletPasswordStatusData value,
          $Res Function(WalletPasswordStatusData) then) =
      _$WalletPasswordStatusDataCopyWithImpl<$Res, WalletPasswordStatusData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'hasPassword') bool hasPassword,
      @JsonKey(name: 'isLocked') bool isLocked});
}

/// @nodoc
class _$WalletPasswordStatusDataCopyWithImpl<$Res,
        $Val extends WalletPasswordStatusData>
    implements $WalletPasswordStatusDataCopyWith<$Res> {
  _$WalletPasswordStatusDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletPasswordStatusData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasPassword = null,
    Object? isLocked = null,
  }) {
    return _then(_value.copyWith(
      hasPassword: null == hasPassword
          ? _value.hasPassword
          : hasPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      isLocked: null == isLocked
          ? _value.isLocked
          : isLocked // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalletPasswordStatusDataImplCopyWith<$Res>
    implements $WalletPasswordStatusDataCopyWith<$Res> {
  factory _$$WalletPasswordStatusDataImplCopyWith(
          _$WalletPasswordStatusDataImpl value,
          $Res Function(_$WalletPasswordStatusDataImpl) then) =
      __$$WalletPasswordStatusDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'hasPassword') bool hasPassword,
      @JsonKey(name: 'isLocked') bool isLocked});
}

/// @nodoc
class __$$WalletPasswordStatusDataImplCopyWithImpl<$Res>
    extends _$WalletPasswordStatusDataCopyWithImpl<$Res,
        _$WalletPasswordStatusDataImpl>
    implements _$$WalletPasswordStatusDataImplCopyWith<$Res> {
  __$$WalletPasswordStatusDataImplCopyWithImpl(
      _$WalletPasswordStatusDataImpl _value,
      $Res Function(_$WalletPasswordStatusDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletPasswordStatusData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasPassword = null,
    Object? isLocked = null,
  }) {
    return _then(_$WalletPasswordStatusDataImpl(
      hasPassword: null == hasPassword
          ? _value.hasPassword
          : hasPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      isLocked: null == isLocked
          ? _value.isLocked
          : isLocked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletPasswordStatusDataImpl implements _WalletPasswordStatusData {
  const _$WalletPasswordStatusDataImpl(
      {@JsonKey(name: 'hasPassword') required this.hasPassword,
      @JsonKey(name: 'isLocked') required this.isLocked});

  factory _$WalletPasswordStatusDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletPasswordStatusDataImplFromJson(json);

  /// 是否已设置密码
  /// true: 已设置密码，需要跳转到修改密码页面
  /// false: 未设置密码，需要跳转到设置密码页面
  @override
  @JsonKey(name: 'hasPassword')
  final bool hasPassword;

  /// 密码是否被锁定
  /// true: 密码被锁定，可能需要特殊处理
  /// false: 密码正常状态
  @override
  @JsonKey(name: 'isLocked')
  final bool isLocked;

  @override
  String toString() {
    return 'WalletPasswordStatusData(hasPassword: $hasPassword, isLocked: $isLocked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletPasswordStatusDataImpl &&
            (identical(other.hasPassword, hasPassword) ||
                other.hasPassword == hasPassword) &&
            (identical(other.isLocked, isLocked) ||
                other.isLocked == isLocked));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, hasPassword, isLocked);

  /// Create a copy of WalletPasswordStatusData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletPasswordStatusDataImplCopyWith<_$WalletPasswordStatusDataImpl>
      get copyWith => __$$WalletPasswordStatusDataImplCopyWithImpl<
          _$WalletPasswordStatusDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletPasswordStatusDataImplToJson(
      this,
    );
  }
}

abstract class _WalletPasswordStatusData implements WalletPasswordStatusData {
  const factory _WalletPasswordStatusData(
          {@JsonKey(name: 'hasPassword') required final bool hasPassword,
          @JsonKey(name: 'isLocked') required final bool isLocked}) =
      _$WalletPasswordStatusDataImpl;

  factory _WalletPasswordStatusData.fromJson(Map<String, dynamic> json) =
      _$WalletPasswordStatusDataImpl.fromJson;

  /// 是否已设置密码
  /// true: 已设置密码，需要跳转到修改密码页面
  /// false: 未设置密码，需要跳转到设置密码页面
  @override
  @JsonKey(name: 'hasPassword')
  bool get hasPassword;

  /// 密码是否被锁定
  /// true: 密码被锁定，可能需要特殊处理
  /// false: 密码正常状态
  @override
  @JsonKey(name: 'isLocked')
  bool get isLocked;

  /// Create a copy of WalletPasswordStatusData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletPasswordStatusDataImplCopyWith<_$WalletPasswordStatusDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WalletPasswordStatusResponse _$WalletPasswordStatusResponseFromJson(
    Map<String, dynamic> json) {
  return _WalletPasswordStatusResponse.fromJson(json);
}

/// @nodoc
mixin _$WalletPasswordStatusResponse {
  /// 错误码
  /// 0: 成功
  /// 其他值: 错误
  @JsonKey(name: 'errCode')
  int get errCode => throw _privateConstructorUsedError;

  /// 错误信息
  /// "success": 成功
  /// 其他值: 具体错误信息
  @JsonKey(name: 'errMsg')
  String get errMsg => throw _privateConstructorUsedError;

  /// 钱包密码状态数据
  @JsonKey(name: 'data')
  WalletPasswordStatusData get data => throw _privateConstructorUsedError;

  /// Serializes this WalletPasswordStatusResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WalletPasswordStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalletPasswordStatusResponseCopyWith<WalletPasswordStatusResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletPasswordStatusResponseCopyWith<$Res> {
  factory $WalletPasswordStatusResponseCopyWith(
          WalletPasswordStatusResponse value,
          $Res Function(WalletPasswordStatusResponse) then) =
      _$WalletPasswordStatusResponseCopyWithImpl<$Res,
          WalletPasswordStatusResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'errCode') int errCode,
      @JsonKey(name: 'errMsg') String errMsg,
      @JsonKey(name: 'data') WalletPasswordStatusData data});

  $WalletPasswordStatusDataCopyWith<$Res> get data;
}

/// @nodoc
class _$WalletPasswordStatusResponseCopyWithImpl<$Res,
        $Val extends WalletPasswordStatusResponse>
    implements $WalletPasswordStatusResponseCopyWith<$Res> {
  _$WalletPasswordStatusResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletPasswordStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errCode = null,
    Object? errMsg = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      errCode: null == errCode
          ? _value.errCode
          : errCode // ignore: cast_nullable_to_non_nullable
              as int,
      errMsg: null == errMsg
          ? _value.errMsg
          : errMsg // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as WalletPasswordStatusData,
    ) as $Val);
  }

  /// Create a copy of WalletPasswordStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WalletPasswordStatusDataCopyWith<$Res> get data {
    return $WalletPasswordStatusDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WalletPasswordStatusResponseImplCopyWith<$Res>
    implements $WalletPasswordStatusResponseCopyWith<$Res> {
  factory _$$WalletPasswordStatusResponseImplCopyWith(
          _$WalletPasswordStatusResponseImpl value,
          $Res Function(_$WalletPasswordStatusResponseImpl) then) =
      __$$WalletPasswordStatusResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'errCode') int errCode,
      @JsonKey(name: 'errMsg') String errMsg,
      @JsonKey(name: 'data') WalletPasswordStatusData data});

  @override
  $WalletPasswordStatusDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$WalletPasswordStatusResponseImplCopyWithImpl<$Res>
    extends _$WalletPasswordStatusResponseCopyWithImpl<$Res,
        _$WalletPasswordStatusResponseImpl>
    implements _$$WalletPasswordStatusResponseImplCopyWith<$Res> {
  __$$WalletPasswordStatusResponseImplCopyWithImpl(
      _$WalletPasswordStatusResponseImpl _value,
      $Res Function(_$WalletPasswordStatusResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletPasswordStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errCode = null,
    Object? errMsg = null,
    Object? data = null,
  }) {
    return _then(_$WalletPasswordStatusResponseImpl(
      errCode: null == errCode
          ? _value.errCode
          : errCode // ignore: cast_nullable_to_non_nullable
              as int,
      errMsg: null == errMsg
          ? _value.errMsg
          : errMsg // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as WalletPasswordStatusData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletPasswordStatusResponseImpl
    implements _WalletPasswordStatusResponse {
  const _$WalletPasswordStatusResponseImpl(
      {@JsonKey(name: 'errCode') required this.errCode,
      @JsonKey(name: 'errMsg') required this.errMsg,
      @JsonKey(name: 'data') required this.data});

  factory _$WalletPasswordStatusResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$WalletPasswordStatusResponseImplFromJson(json);

  /// 错误码
  /// 0: 成功
  /// 其他值: 错误
  @override
  @JsonKey(name: 'errCode')
  final int errCode;

  /// 错误信息
  /// "success": 成功
  /// 其他值: 具体错误信息
  @override
  @JsonKey(name: 'errMsg')
  final String errMsg;

  /// 钱包密码状态数据
  @override
  @JsonKey(name: 'data')
  final WalletPasswordStatusData data;

  @override
  String toString() {
    return 'WalletPasswordStatusResponse(errCode: $errCode, errMsg: $errMsg, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletPasswordStatusResponseImpl &&
            (identical(other.errCode, errCode) || other.errCode == errCode) &&
            (identical(other.errMsg, errMsg) || other.errMsg == errMsg) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, errCode, errMsg, data);

  /// Create a copy of WalletPasswordStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletPasswordStatusResponseImplCopyWith<
          _$WalletPasswordStatusResponseImpl>
      get copyWith => __$$WalletPasswordStatusResponseImplCopyWithImpl<
          _$WalletPasswordStatusResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletPasswordStatusResponseImplToJson(
      this,
    );
  }
}

abstract class _WalletPasswordStatusResponse
    implements WalletPasswordStatusResponse {
  const factory _WalletPasswordStatusResponse(
          {@JsonKey(name: 'errCode') required final int errCode,
          @JsonKey(name: 'errMsg') required final String errMsg,
          @JsonKey(name: 'data')
          required final WalletPasswordStatusData data}) =
      _$WalletPasswordStatusResponseImpl;

  factory _WalletPasswordStatusResponse.fromJson(Map<String, dynamic> json) =
      _$WalletPasswordStatusResponseImpl.fromJson;

  /// 错误码
  /// 0: 成功
  /// 其他值: 错误
  @override
  @JsonKey(name: 'errCode')
  int get errCode;

  /// 错误信息
  /// "success": 成功
  /// 其他值: 具体错误信息
  @override
  @JsonKey(name: 'errMsg')
  String get errMsg;

  /// 钱包密码状态数据
  @override
  @JsonKey(name: 'data')
  WalletPasswordStatusData get data;

  /// Create a copy of WalletPasswordStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletPasswordStatusResponseImplCopyWith<
          _$WalletPasswordStatusResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
