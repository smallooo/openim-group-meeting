// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_wallet_password_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SetWalletPasswordResponse _$SetWalletPasswordResponseFromJson(
    Map<String, dynamic> json) {
  return _SetWalletPasswordResponse.fromJson(json);
}

/// @nodoc
mixin _$SetWalletPasswordResponse {
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

  /// Serializes this SetWalletPasswordResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SetWalletPasswordResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SetWalletPasswordResponseCopyWith<SetWalletPasswordResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetWalletPasswordResponseCopyWith<$Res> {
  factory $SetWalletPasswordResponseCopyWith(SetWalletPasswordResponse value,
          $Res Function(SetWalletPasswordResponse) then) =
      _$SetWalletPasswordResponseCopyWithImpl<$Res, SetWalletPasswordResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'errCode') int errCode,
      @JsonKey(name: 'errMsg') String errMsg});
}

/// @nodoc
class _$SetWalletPasswordResponseCopyWithImpl<$Res,
        $Val extends SetWalletPasswordResponse>
    implements $SetWalletPasswordResponseCopyWith<$Res> {
  _$SetWalletPasswordResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SetWalletPasswordResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errCode = null,
    Object? errMsg = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetWalletPasswordResponseImplCopyWith<$Res>
    implements $SetWalletPasswordResponseCopyWith<$Res> {
  factory _$$SetWalletPasswordResponseImplCopyWith(
          _$SetWalletPasswordResponseImpl value,
          $Res Function(_$SetWalletPasswordResponseImpl) then) =
      __$$SetWalletPasswordResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'errCode') int errCode,
      @JsonKey(name: 'errMsg') String errMsg});
}

/// @nodoc
class __$$SetWalletPasswordResponseImplCopyWithImpl<$Res>
    extends _$SetWalletPasswordResponseCopyWithImpl<$Res,
        _$SetWalletPasswordResponseImpl>
    implements _$$SetWalletPasswordResponseImplCopyWith<$Res> {
  __$$SetWalletPasswordResponseImplCopyWithImpl(
      _$SetWalletPasswordResponseImpl _value,
      $Res Function(_$SetWalletPasswordResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SetWalletPasswordResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errCode = null,
    Object? errMsg = null,
  }) {
    return _then(_$SetWalletPasswordResponseImpl(
      errCode: null == errCode
          ? _value.errCode
          : errCode // ignore: cast_nullable_to_non_nullable
              as int,
      errMsg: null == errMsg
          ? _value.errMsg
          : errMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SetWalletPasswordResponseImpl implements _SetWalletPasswordResponse {
  const _$SetWalletPasswordResponseImpl(
      {@JsonKey(name: 'errCode') required this.errCode,
      @JsonKey(name: 'errMsg') required this.errMsg});

  factory _$SetWalletPasswordResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetWalletPasswordResponseImplFromJson(json);

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

  @override
  String toString() {
    return 'SetWalletPasswordResponse(errCode: $errCode, errMsg: $errMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetWalletPasswordResponseImpl &&
            (identical(other.errCode, errCode) || other.errCode == errCode) &&
            (identical(other.errMsg, errMsg) || other.errMsg == errMsg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, errCode, errMsg);

  /// Create a copy of SetWalletPasswordResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetWalletPasswordResponseImplCopyWith<_$SetWalletPasswordResponseImpl>
      get copyWith => __$$SetWalletPasswordResponseImplCopyWithImpl<
          _$SetWalletPasswordResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetWalletPasswordResponseImplToJson(
      this,
    );
  }
}

abstract class _SetWalletPasswordResponse implements SetWalletPasswordResponse {
  const factory _SetWalletPasswordResponse(
          {@JsonKey(name: 'errCode') required final int errCode,
          @JsonKey(name: 'errMsg') required final String errMsg}) =
      _$SetWalletPasswordResponseImpl;

  factory _SetWalletPasswordResponse.fromJson(Map<String, dynamic> json) =
      _$SetWalletPasswordResponseImpl.fromJson;

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

  /// Create a copy of SetWalletPasswordResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetWalletPasswordResponseImplCopyWith<_$SetWalletPasswordResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
