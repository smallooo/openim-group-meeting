// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trader_strategies_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TraderStrategiesResponse _$TraderStrategiesResponseFromJson(
    Map<String, dynamic> json) {
  return _TraderStrategiesResponse.fromJson(json);
}

/// @nodoc
mixin _$TraderStrategiesResponse {
  /// 错误码
  @JsonKey(name: 'errCode')
  int get errCode => throw _privateConstructorUsedError;

  /// 错误信息
  @JsonKey(name: 'errMsg')
  String get errMsg => throw _privateConstructorUsedError;

  /// 响应数据
  @JsonKey(name: 'data')
  TraderStrategyPaginationData get data => throw _privateConstructorUsedError;

  /// Serializes this TraderStrategiesResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TraderStrategiesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TraderStrategiesResponseCopyWith<TraderStrategiesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TraderStrategiesResponseCopyWith<$Res> {
  factory $TraderStrategiesResponseCopyWith(TraderStrategiesResponse value,
          $Res Function(TraderStrategiesResponse) then) =
      _$TraderStrategiesResponseCopyWithImpl<$Res, TraderStrategiesResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'errCode') int errCode,
      @JsonKey(name: 'errMsg') String errMsg,
      @JsonKey(name: 'data') TraderStrategyPaginationData data});

  $TraderStrategyPaginationDataCopyWith<$Res> get data;
}

/// @nodoc
class _$TraderStrategiesResponseCopyWithImpl<$Res,
        $Val extends TraderStrategiesResponse>
    implements $TraderStrategiesResponseCopyWith<$Res> {
  _$TraderStrategiesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TraderStrategiesResponse
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
              as TraderStrategyPaginationData,
    ) as $Val);
  }

  /// Create a copy of TraderStrategiesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TraderStrategyPaginationDataCopyWith<$Res> get data {
    return $TraderStrategyPaginationDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TraderStrategiesResponseImplCopyWith<$Res>
    implements $TraderStrategiesResponseCopyWith<$Res> {
  factory _$$TraderStrategiesResponseImplCopyWith(
          _$TraderStrategiesResponseImpl value,
          $Res Function(_$TraderStrategiesResponseImpl) then) =
      __$$TraderStrategiesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'errCode') int errCode,
      @JsonKey(name: 'errMsg') String errMsg,
      @JsonKey(name: 'data') TraderStrategyPaginationData data});

  @override
  $TraderStrategyPaginationDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$TraderStrategiesResponseImplCopyWithImpl<$Res>
    extends _$TraderStrategiesResponseCopyWithImpl<$Res,
        _$TraderStrategiesResponseImpl>
    implements _$$TraderStrategiesResponseImplCopyWith<$Res> {
  __$$TraderStrategiesResponseImplCopyWithImpl(
      _$TraderStrategiesResponseImpl _value,
      $Res Function(_$TraderStrategiesResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of TraderStrategiesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errCode = null,
    Object? errMsg = null,
    Object? data = null,
  }) {
    return _then(_$TraderStrategiesResponseImpl(
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
              as TraderStrategyPaginationData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TraderStrategiesResponseImpl implements _TraderStrategiesResponse {
  const _$TraderStrategiesResponseImpl(
      {@JsonKey(name: 'errCode') required this.errCode,
      @JsonKey(name: 'errMsg') required this.errMsg,
      @JsonKey(name: 'data') required this.data});

  factory _$TraderStrategiesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TraderStrategiesResponseImplFromJson(json);

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
  final TraderStrategyPaginationData data;

  @override
  String toString() {
    return 'TraderStrategiesResponse(errCode: $errCode, errMsg: $errMsg, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TraderStrategiesResponseImpl &&
            (identical(other.errCode, errCode) || other.errCode == errCode) &&
            (identical(other.errMsg, errMsg) || other.errMsg == errMsg) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, errCode, errMsg, data);

  /// Create a copy of TraderStrategiesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TraderStrategiesResponseImplCopyWith<_$TraderStrategiesResponseImpl>
      get copyWith => __$$TraderStrategiesResponseImplCopyWithImpl<
          _$TraderStrategiesResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TraderStrategiesResponseImplToJson(
      this,
    );
  }
}

abstract class _TraderStrategiesResponse implements TraderStrategiesResponse {
  const factory _TraderStrategiesResponse(
          {@JsonKey(name: 'errCode') required final int errCode,
          @JsonKey(name: 'errMsg') required final String errMsg,
          @JsonKey(name: 'data')
          required final TraderStrategyPaginationData data}) =
      _$TraderStrategiesResponseImpl;

  factory _TraderStrategiesResponse.fromJson(Map<String, dynamic> json) =
      _$TraderStrategiesResponseImpl.fromJson;

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
  TraderStrategyPaginationData get data;

  /// Create a copy of TraderStrategiesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TraderStrategiesResponseImplCopyWith<_$TraderStrategiesResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
