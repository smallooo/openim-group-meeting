// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_fund_currency_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WalletFundCurrencyResponse _$WalletFundCurrencyResponseFromJson(
    Map<String, dynamic> json) {
  return _WalletFundCurrencyResponse.fromJson(json);
}

/// @nodoc
mixin _$WalletFundCurrencyResponse {
  /// 错误码
  int get errCode => throw _privateConstructorUsedError;

  /// 错误信息
  String get errMsg => throw _privateConstructorUsedError;

  /// 钱包资金数据（可选）
  WalletFundCurrencyData? get data => throw _privateConstructorUsedError;

  /// Serializes this WalletFundCurrencyResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WalletFundCurrencyResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalletFundCurrencyResponseCopyWith<WalletFundCurrencyResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletFundCurrencyResponseCopyWith<$Res> {
  factory $WalletFundCurrencyResponseCopyWith(WalletFundCurrencyResponse value,
          $Res Function(WalletFundCurrencyResponse) then) =
      _$WalletFundCurrencyResponseCopyWithImpl<$Res,
          WalletFundCurrencyResponse>;
  @useResult
  $Res call({int errCode, String errMsg, WalletFundCurrencyData? data});

  $WalletFundCurrencyDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$WalletFundCurrencyResponseCopyWithImpl<$Res,
        $Val extends WalletFundCurrencyResponse>
    implements $WalletFundCurrencyResponseCopyWith<$Res> {
  _$WalletFundCurrencyResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletFundCurrencyResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errCode = null,
    Object? errMsg = null,
    Object? data = freezed,
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as WalletFundCurrencyData?,
    ) as $Val);
  }

  /// Create a copy of WalletFundCurrencyResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WalletFundCurrencyDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $WalletFundCurrencyDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WalletFundCurrencyResponseImplCopyWith<$Res>
    implements $WalletFundCurrencyResponseCopyWith<$Res> {
  factory _$$WalletFundCurrencyResponseImplCopyWith(
          _$WalletFundCurrencyResponseImpl value,
          $Res Function(_$WalletFundCurrencyResponseImpl) then) =
      __$$WalletFundCurrencyResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int errCode, String errMsg, WalletFundCurrencyData? data});

  @override
  $WalletFundCurrencyDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$WalletFundCurrencyResponseImplCopyWithImpl<$Res>
    extends _$WalletFundCurrencyResponseCopyWithImpl<$Res,
        _$WalletFundCurrencyResponseImpl>
    implements _$$WalletFundCurrencyResponseImplCopyWith<$Res> {
  __$$WalletFundCurrencyResponseImplCopyWithImpl(
      _$WalletFundCurrencyResponseImpl _value,
      $Res Function(_$WalletFundCurrencyResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletFundCurrencyResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errCode = null,
    Object? errMsg = null,
    Object? data = freezed,
  }) {
    return _then(_$WalletFundCurrencyResponseImpl(
      errCode: null == errCode
          ? _value.errCode
          : errCode // ignore: cast_nullable_to_non_nullable
              as int,
      errMsg: null == errMsg
          ? _value.errMsg
          : errMsg // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as WalletFundCurrencyData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletFundCurrencyResponseImpl implements _WalletFundCurrencyResponse {
  const _$WalletFundCurrencyResponseImpl(
      {required this.errCode, required this.errMsg, this.data});

  factory _$WalletFundCurrencyResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$WalletFundCurrencyResponseImplFromJson(json);

  /// 错误码
  @override
  final int errCode;

  /// 错误信息
  @override
  final String errMsg;

  /// 钱包资金数据（可选）
  @override
  final WalletFundCurrencyData? data;

  @override
  String toString() {
    return 'WalletFundCurrencyResponse(errCode: $errCode, errMsg: $errMsg, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletFundCurrencyResponseImpl &&
            (identical(other.errCode, errCode) || other.errCode == errCode) &&
            (identical(other.errMsg, errMsg) || other.errMsg == errMsg) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, errCode, errMsg, data);

  /// Create a copy of WalletFundCurrencyResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletFundCurrencyResponseImplCopyWith<_$WalletFundCurrencyResponseImpl>
      get copyWith => __$$WalletFundCurrencyResponseImplCopyWithImpl<
          _$WalletFundCurrencyResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletFundCurrencyResponseImplToJson(
      this,
    );
  }
}

abstract class _WalletFundCurrencyResponse
    implements WalletFundCurrencyResponse {
  const factory _WalletFundCurrencyResponse(
      {required final int errCode,
      required final String errMsg,
      final WalletFundCurrencyData? data}) = _$WalletFundCurrencyResponseImpl;

  factory _WalletFundCurrencyResponse.fromJson(Map<String, dynamic> json) =
      _$WalletFundCurrencyResponseImpl.fromJson;

  /// 错误码
  @override
  int get errCode;

  /// 错误信息
  @override
  String get errMsg;

  /// 钱包资金数据（可选）
  @override
  WalletFundCurrencyData? get data;

  /// Create a copy of WalletFundCurrencyResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletFundCurrencyResponseImplCopyWith<_$WalletFundCurrencyResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
