// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'strategy_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StrategyDetailResponse _$StrategyDetailResponseFromJson(
    Map<String, dynamic> json) {
  return _StrategyDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$StrategyDetailResponse {
  /// 错误码
  @JsonKey(name: 'errCode')
  int get errCode => throw _privateConstructorUsedError;

  /// 错误信息
  @JsonKey(name: 'errMsg')
  String get errMsg => throw _privateConstructorUsedError;

  /// 响应数据
  @JsonKey(name: 'data')
  StrategyDetailData get data => throw _privateConstructorUsedError;

  /// Serializes this StrategyDetailResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StrategyDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StrategyDetailResponseCopyWith<StrategyDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StrategyDetailResponseCopyWith<$Res> {
  factory $StrategyDetailResponseCopyWith(StrategyDetailResponse value,
          $Res Function(StrategyDetailResponse) then) =
      _$StrategyDetailResponseCopyWithImpl<$Res, StrategyDetailResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'errCode') int errCode,
      @JsonKey(name: 'errMsg') String errMsg,
      @JsonKey(name: 'data') StrategyDetailData data});

  $StrategyDetailDataCopyWith<$Res> get data;
}

/// @nodoc
class _$StrategyDetailResponseCopyWithImpl<$Res,
        $Val extends StrategyDetailResponse>
    implements $StrategyDetailResponseCopyWith<$Res> {
  _$StrategyDetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StrategyDetailResponse
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
              as StrategyDetailData,
    ) as $Val);
  }

  /// Create a copy of StrategyDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StrategyDetailDataCopyWith<$Res> get data {
    return $StrategyDetailDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StrategyDetailResponseImplCopyWith<$Res>
    implements $StrategyDetailResponseCopyWith<$Res> {
  factory _$$StrategyDetailResponseImplCopyWith(
          _$StrategyDetailResponseImpl value,
          $Res Function(_$StrategyDetailResponseImpl) then) =
      __$$StrategyDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'errCode') int errCode,
      @JsonKey(name: 'errMsg') String errMsg,
      @JsonKey(name: 'data') StrategyDetailData data});

  @override
  $StrategyDetailDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$StrategyDetailResponseImplCopyWithImpl<$Res>
    extends _$StrategyDetailResponseCopyWithImpl<$Res,
        _$StrategyDetailResponseImpl>
    implements _$$StrategyDetailResponseImplCopyWith<$Res> {
  __$$StrategyDetailResponseImplCopyWithImpl(
      _$StrategyDetailResponseImpl _value,
      $Res Function(_$StrategyDetailResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of StrategyDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errCode = null,
    Object? errMsg = null,
    Object? data = null,
  }) {
    return _then(_$StrategyDetailResponseImpl(
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
              as StrategyDetailData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StrategyDetailResponseImpl implements _StrategyDetailResponse {
  const _$StrategyDetailResponseImpl(
      {@JsonKey(name: 'errCode') required this.errCode,
      @JsonKey(name: 'errMsg') required this.errMsg,
      @JsonKey(name: 'data') required this.data});

  factory _$StrategyDetailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$StrategyDetailResponseImplFromJson(json);

  /// 错误码
  @override
  @JsonKey(name: 'errCode')
  final int errCode;

  /// 错误信息
  @override
  @JsonKey(name: 'errMsg')
  final String errMsg;

  /// 响应数据
  @override
  @JsonKey(name: 'data')
  final StrategyDetailData data;

  @override
  String toString() {
    return 'StrategyDetailResponse(errCode: $errCode, errMsg: $errMsg, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StrategyDetailResponseImpl &&
            (identical(other.errCode, errCode) || other.errCode == errCode) &&
            (identical(other.errMsg, errMsg) || other.errMsg == errMsg) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, errCode, errMsg, data);

  /// Create a copy of StrategyDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StrategyDetailResponseImplCopyWith<_$StrategyDetailResponseImpl>
      get copyWith => __$$StrategyDetailResponseImplCopyWithImpl<
          _$StrategyDetailResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StrategyDetailResponseImplToJson(
      this,
    );
  }
}

abstract class _StrategyDetailResponse implements StrategyDetailResponse {
  const factory _StrategyDetailResponse(
          {@JsonKey(name: 'errCode') required final int errCode,
          @JsonKey(name: 'errMsg') required final String errMsg,
          @JsonKey(name: 'data') required final StrategyDetailData data}) =
      _$StrategyDetailResponseImpl;

  factory _StrategyDetailResponse.fromJson(Map<String, dynamic> json) =
      _$StrategyDetailResponseImpl.fromJson;

  /// 错误码
  @override
  @JsonKey(name: 'errCode')
  int get errCode;

  /// 错误信息
  @override
  @JsonKey(name: 'errMsg')
  String get errMsg;

  /// 响应数据
  @override
  @JsonKey(name: 'data')
  StrategyDetailData get data;

  /// Create a copy of StrategyDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StrategyDetailResponseImplCopyWith<_$StrategyDetailResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
