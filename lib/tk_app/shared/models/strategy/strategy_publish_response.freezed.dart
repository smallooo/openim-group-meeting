// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'strategy_publish_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StrategyPublishData _$StrategyPublishDataFromJson(Map<String, dynamic> json) {
  return _StrategyPublishData.fromJson(json);
}

/// @nodoc
mixin _$StrategyPublishData {
  /// 策略ID
  @JsonKey(name: 'strategyId')
  String get strategyId => throw _privateConstructorUsedError;

  /// Serializes this StrategyPublishData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StrategyPublishData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StrategyPublishDataCopyWith<StrategyPublishData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StrategyPublishDataCopyWith<$Res> {
  factory $StrategyPublishDataCopyWith(
          StrategyPublishData value, $Res Function(StrategyPublishData) then) =
      _$StrategyPublishDataCopyWithImpl<$Res, StrategyPublishData>;
  @useResult
  $Res call({@JsonKey(name: 'strategyId') String strategyId});
}

/// @nodoc
class _$StrategyPublishDataCopyWithImpl<$Res, $Val extends StrategyPublishData>
    implements $StrategyPublishDataCopyWith<$Res> {
  _$StrategyPublishDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StrategyPublishData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? strategyId = null,
  }) {
    return _then(_value.copyWith(
      strategyId: null == strategyId
          ? _value.strategyId
          : strategyId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StrategyPublishDataImplCopyWith<$Res>
    implements $StrategyPublishDataCopyWith<$Res> {
  factory _$$StrategyPublishDataImplCopyWith(_$StrategyPublishDataImpl value,
          $Res Function(_$StrategyPublishDataImpl) then) =
      __$$StrategyPublishDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'strategyId') String strategyId});
}

/// @nodoc
class __$$StrategyPublishDataImplCopyWithImpl<$Res>
    extends _$StrategyPublishDataCopyWithImpl<$Res, _$StrategyPublishDataImpl>
    implements _$$StrategyPublishDataImplCopyWith<$Res> {
  __$$StrategyPublishDataImplCopyWithImpl(_$StrategyPublishDataImpl _value,
      $Res Function(_$StrategyPublishDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of StrategyPublishData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? strategyId = null,
  }) {
    return _then(_$StrategyPublishDataImpl(
      strategyId: null == strategyId
          ? _value.strategyId
          : strategyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StrategyPublishDataImpl implements _StrategyPublishData {
  const _$StrategyPublishDataImpl(
      {@JsonKey(name: 'strategyId') required this.strategyId});

  factory _$StrategyPublishDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$StrategyPublishDataImplFromJson(json);

  /// 策略ID
  @override
  @JsonKey(name: 'strategyId')
  final String strategyId;

  @override
  String toString() {
    return 'StrategyPublishData(strategyId: $strategyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StrategyPublishDataImpl &&
            (identical(other.strategyId, strategyId) ||
                other.strategyId == strategyId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, strategyId);

  /// Create a copy of StrategyPublishData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StrategyPublishDataImplCopyWith<_$StrategyPublishDataImpl> get copyWith =>
      __$$StrategyPublishDataImplCopyWithImpl<_$StrategyPublishDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StrategyPublishDataImplToJson(
      this,
    );
  }
}

abstract class _StrategyPublishData implements StrategyPublishData {
  const factory _StrategyPublishData(
          {@JsonKey(name: 'strategyId') required final String strategyId}) =
      _$StrategyPublishDataImpl;

  factory _StrategyPublishData.fromJson(Map<String, dynamic> json) =
      _$StrategyPublishDataImpl.fromJson;

  /// 策略ID
  @override
  @JsonKey(name: 'strategyId')
  String get strategyId;

  /// Create a copy of StrategyPublishData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StrategyPublishDataImplCopyWith<_$StrategyPublishDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StrategyPublishResponse _$StrategyPublishResponseFromJson(
    Map<String, dynamic> json) {
  return _StrategyPublishResponse.fromJson(json);
}

/// @nodoc
mixin _$StrategyPublishResponse {
  /// 错误码
  @JsonKey(name: 'errCode')
  int get errCode => throw _privateConstructorUsedError;

  /// 错误信息
  @JsonKey(name: 'errMsg')
  String get errMsg => throw _privateConstructorUsedError;

  /// 响应数据
  @JsonKey(name: 'data')
  StrategyPublishData get data => throw _privateConstructorUsedError;

  /// Serializes this StrategyPublishResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StrategyPublishResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StrategyPublishResponseCopyWith<StrategyPublishResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StrategyPublishResponseCopyWith<$Res> {
  factory $StrategyPublishResponseCopyWith(StrategyPublishResponse value,
          $Res Function(StrategyPublishResponse) then) =
      _$StrategyPublishResponseCopyWithImpl<$Res, StrategyPublishResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'errCode') int errCode,
      @JsonKey(name: 'errMsg') String errMsg,
      @JsonKey(name: 'data') StrategyPublishData data});

  $StrategyPublishDataCopyWith<$Res> get data;
}

/// @nodoc
class _$StrategyPublishResponseCopyWithImpl<$Res,
        $Val extends StrategyPublishResponse>
    implements $StrategyPublishResponseCopyWith<$Res> {
  _$StrategyPublishResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StrategyPublishResponse
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
              as StrategyPublishData,
    ) as $Val);
  }

  /// Create a copy of StrategyPublishResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StrategyPublishDataCopyWith<$Res> get data {
    return $StrategyPublishDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StrategyPublishResponseImplCopyWith<$Res>
    implements $StrategyPublishResponseCopyWith<$Res> {
  factory _$$StrategyPublishResponseImplCopyWith(
          _$StrategyPublishResponseImpl value,
          $Res Function(_$StrategyPublishResponseImpl) then) =
      __$$StrategyPublishResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'errCode') int errCode,
      @JsonKey(name: 'errMsg') String errMsg,
      @JsonKey(name: 'data') StrategyPublishData data});

  @override
  $StrategyPublishDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$StrategyPublishResponseImplCopyWithImpl<$Res>
    extends _$StrategyPublishResponseCopyWithImpl<$Res,
        _$StrategyPublishResponseImpl>
    implements _$$StrategyPublishResponseImplCopyWith<$Res> {
  __$$StrategyPublishResponseImplCopyWithImpl(
      _$StrategyPublishResponseImpl _value,
      $Res Function(_$StrategyPublishResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of StrategyPublishResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errCode = null,
    Object? errMsg = null,
    Object? data = null,
  }) {
    return _then(_$StrategyPublishResponseImpl(
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
              as StrategyPublishData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StrategyPublishResponseImpl implements _StrategyPublishResponse {
  const _$StrategyPublishResponseImpl(
      {@JsonKey(name: 'errCode') required this.errCode,
      @JsonKey(name: 'errMsg') required this.errMsg,
      @JsonKey(name: 'data') required this.data});

  factory _$StrategyPublishResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$StrategyPublishResponseImplFromJson(json);

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
  final StrategyPublishData data;

  @override
  String toString() {
    return 'StrategyPublishResponse(errCode: $errCode, errMsg: $errMsg, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StrategyPublishResponseImpl &&
            (identical(other.errCode, errCode) || other.errCode == errCode) &&
            (identical(other.errMsg, errMsg) || other.errMsg == errMsg) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, errCode, errMsg, data);

  /// Create a copy of StrategyPublishResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StrategyPublishResponseImplCopyWith<_$StrategyPublishResponseImpl>
      get copyWith => __$$StrategyPublishResponseImplCopyWithImpl<
          _$StrategyPublishResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StrategyPublishResponseImplToJson(
      this,
    );
  }
}

abstract class _StrategyPublishResponse implements StrategyPublishResponse {
  const factory _StrategyPublishResponse(
          {@JsonKey(name: 'errCode') required final int errCode,
          @JsonKey(name: 'errMsg') required final String errMsg,
          @JsonKey(name: 'data') required final StrategyPublishData data}) =
      _$StrategyPublishResponseImpl;

  factory _StrategyPublishResponse.fromJson(Map<String, dynamic> json) =
      _$StrategyPublishResponseImpl.fromJson;

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
  StrategyPublishData get data;

  /// Create a copy of StrategyPublishResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StrategyPublishResponseImplCopyWith<_$StrategyPublishResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
