// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_strategies_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyStrategiesResponse _$MyStrategiesResponseFromJson(Map<String, dynamic> json) {
  return _MyStrategiesResponse.fromJson(json);
}

/// @nodoc
mixin _$MyStrategiesResponse {
  /// 错误码
  @JsonKey(name: 'errCode')
  int get errCode => throw _privateConstructorUsedError;

  /// 错误信息
  @JsonKey(name: 'errMsg')
  String get errMsg => throw _privateConstructorUsedError;

  /// 响应数据
  @JsonKey(name: 'data')
  StrategyPaginationData get data => throw _privateConstructorUsedError;

  /// Serializes this MyStrategiesResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MyStrategiesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyStrategiesResponseCopyWith<MyStrategiesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyStrategiesResponseCopyWith<$Res> {
  factory $MyStrategiesResponseCopyWith(MyStrategiesResponse value,
          $Res Function(MyStrategiesResponse) then) =
      _$MyStrategiesResponseCopyWithImpl<$Res, MyStrategiesResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'errCode') int errCode,
      @JsonKey(name: 'errMsg') String errMsg,
      @JsonKey(name: 'data') StrategyPaginationData data});

  $StrategyPaginationDataCopyWith<$Res> get data;
}

/// @nodoc
class _$MyStrategiesResponseCopyWithImpl<$Res,
        $Val extends MyStrategiesResponse>
    implements $MyStrategiesResponseCopyWith<$Res> {
  _$MyStrategiesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyStrategiesResponse
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
              as StrategyPaginationData,
    ) as $Val);
  }

  /// Create a copy of MyStrategiesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StrategyPaginationDataCopyWith<$Res> get data {
    return $StrategyPaginationDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MyStrategiesResponseImplCopyWith<$Res>
    implements $MyStrategiesResponseCopyWith<$Res> {
  factory _$$MyStrategiesResponseImplCopyWith(_$MyStrategiesResponseImpl value,
          $Res Function(_$MyStrategiesResponseImpl) then) =
      __$$MyStrategiesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'errCode') int errCode,
      @JsonKey(name: 'errMsg') String errMsg,
      @JsonKey(name: 'data') StrategyPaginationData data});

  @override
  $StrategyPaginationDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$MyStrategiesResponseImplCopyWithImpl<$Res>
    extends _$MyStrategiesResponseCopyWithImpl<$Res, _$MyStrategiesResponseImpl>
    implements _$$MyStrategiesResponseImplCopyWith<$Res> {
  __$$MyStrategiesResponseImplCopyWithImpl(_$MyStrategiesResponseImpl _value,
      $Res Function(_$MyStrategiesResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyStrategiesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errCode = null,
    Object? errMsg = null,
    Object? data = null,
  }) {
    return _then(_$MyStrategiesResponseImpl(
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
              as StrategyPaginationData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyStrategiesResponseImpl implements _MyStrategiesResponse {
  const _$MyStrategiesResponseImpl(
      {@JsonKey(name: 'errCode') required this.errCode,
      @JsonKey(name: 'errMsg') required this.errMsg,
      @JsonKey(name: 'data') required this.data});

  factory _$MyStrategiesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyStrategiesResponseImplFromJson(json);

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
  final StrategyPaginationData data;

  @override
  String toString() {
    return 'MyStrategiesResponse(errCode: $errCode, errMsg: $errMsg, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyStrategiesResponseImpl &&
            (identical(other.errCode, errCode) || other.errCode == errCode) &&
            (identical(other.errMsg, errMsg) || other.errMsg == errMsg) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, errCode, errMsg, data);

  /// Create a copy of MyStrategiesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyStrategiesResponseImplCopyWith<_$MyStrategiesResponseImpl>
      get copyWith =>
          __$$MyStrategiesResponseImplCopyWithImpl<_$MyStrategiesResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyStrategiesResponseImplToJson(
      this,
    );
  }
}

abstract class _MyStrategiesResponse implements MyStrategiesResponse {
  const factory _MyStrategiesResponse(
          {@JsonKey(name: 'errCode') required final int errCode,
          @JsonKey(name: 'errMsg') required final String errMsg,
          @JsonKey(name: 'data') required final StrategyPaginationData data}) =
      _$MyStrategiesResponseImpl;

  factory _MyStrategiesResponse.fromJson(Map<String, dynamic> json) =
      _$MyStrategiesResponseImpl.fromJson;

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
  StrategyPaginationData get data;

  /// Create a copy of MyStrategiesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyStrategiesResponseImplCopyWith<_$MyStrategiesResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
