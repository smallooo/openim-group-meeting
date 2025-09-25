// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trader_apply_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TraderApplyResponse _$TraderApplyResponseFromJson(Map<String, dynamic> json) {
  return _TraderApplyResponse.fromJson(json);
}

/// @nodoc
mixin _$TraderApplyResponse {
  /// 错误码
  @JsonKey(name: 'errCode')
  int get errCode => throw _privateConstructorUsedError;

  /// 错误信息
  @JsonKey(name: 'errMsg')
  String get errMsg => throw _privateConstructorUsedError;

  /// 申请结果数据
  @JsonKey(name: 'data')
  TraderApplyData get data => throw _privateConstructorUsedError;

  /// Serializes this TraderApplyResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TraderApplyResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TraderApplyResponseCopyWith<TraderApplyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TraderApplyResponseCopyWith<$Res> {
  factory $TraderApplyResponseCopyWith(
          TraderApplyResponse value, $Res Function(TraderApplyResponse) then) =
      _$TraderApplyResponseCopyWithImpl<$Res, TraderApplyResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'errCode') int errCode,
      @JsonKey(name: 'errMsg') String errMsg,
      @JsonKey(name: 'data') TraderApplyData data});

  $TraderApplyDataCopyWith<$Res> get data;
}

/// @nodoc
class _$TraderApplyResponseCopyWithImpl<$Res, $Val extends TraderApplyResponse>
    implements $TraderApplyResponseCopyWith<$Res> {
  _$TraderApplyResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TraderApplyResponse
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
              as TraderApplyData,
    ) as $Val);
  }

  /// Create a copy of TraderApplyResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TraderApplyDataCopyWith<$Res> get data {
    return $TraderApplyDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TraderApplyResponseImplCopyWith<$Res>
    implements $TraderApplyResponseCopyWith<$Res> {
  factory _$$TraderApplyResponseImplCopyWith(_$TraderApplyResponseImpl value,
          $Res Function(_$TraderApplyResponseImpl) then) =
      __$$TraderApplyResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'errCode') int errCode,
      @JsonKey(name: 'errMsg') String errMsg,
      @JsonKey(name: 'data') TraderApplyData data});

  @override
  $TraderApplyDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$TraderApplyResponseImplCopyWithImpl<$Res>
    extends _$TraderApplyResponseCopyWithImpl<$Res, _$TraderApplyResponseImpl>
    implements _$$TraderApplyResponseImplCopyWith<$Res> {
  __$$TraderApplyResponseImplCopyWithImpl(_$TraderApplyResponseImpl _value,
      $Res Function(_$TraderApplyResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of TraderApplyResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errCode = null,
    Object? errMsg = null,
    Object? data = null,
  }) {
    return _then(_$TraderApplyResponseImpl(
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
              as TraderApplyData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TraderApplyResponseImpl implements _TraderApplyResponse {
  const _$TraderApplyResponseImpl(
      {@JsonKey(name: 'errCode') required this.errCode,
      @JsonKey(name: 'errMsg') required this.errMsg,
      @JsonKey(name: 'data') required this.data});

  factory _$TraderApplyResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TraderApplyResponseImplFromJson(json);

  /// 错误码
  @override
  @JsonKey(name: 'errCode')
  final int errCode;

  /// 错误信息
  @override
  @JsonKey(name: 'errMsg')
  final String errMsg;

  /// 申请结果数据
  @override
  @JsonKey(name: 'data')
  final TraderApplyData data;

  @override
  String toString() {
    return 'TraderApplyResponse(errCode: $errCode, errMsg: $errMsg, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TraderApplyResponseImpl &&
            (identical(other.errCode, errCode) || other.errCode == errCode) &&
            (identical(other.errMsg, errMsg) || other.errMsg == errMsg) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, errCode, errMsg, data);

  /// Create a copy of TraderApplyResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TraderApplyResponseImplCopyWith<_$TraderApplyResponseImpl> get copyWith =>
      __$$TraderApplyResponseImplCopyWithImpl<_$TraderApplyResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TraderApplyResponseImplToJson(
      this,
    );
  }
}

abstract class _TraderApplyResponse implements TraderApplyResponse {
  const factory _TraderApplyResponse(
          {@JsonKey(name: 'errCode') required final int errCode,
          @JsonKey(name: 'errMsg') required final String errMsg,
          @JsonKey(name: 'data') required final TraderApplyData data}) =
      _$TraderApplyResponseImpl;

  factory _TraderApplyResponse.fromJson(Map<String, dynamic> json) =
      _$TraderApplyResponseImpl.fromJson;

  /// 错误码
  @override
  @JsonKey(name: 'errCode')
  int get errCode;

  /// 错误信息
  @override
  @JsonKey(name: 'errMsg')
  String get errMsg;

  /// 申请结果数据
  @override
  @JsonKey(name: 'data')
  TraderApplyData get data;

  /// Create a copy of TraderApplyResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TraderApplyResponseImplCopyWith<_$TraderApplyResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TraderApplyData _$TraderApplyDataFromJson(Map<String, dynamic> json) {
  return _TraderApplyData.fromJson(json);
}

/// @nodoc
mixin _$TraderApplyData {
  /// 交易员ID
  @JsonKey(name: 'traderId')
  String get traderId => throw _privateConstructorUsedError;

  /// 申请状态
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;

  /// Serializes this TraderApplyData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TraderApplyData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TraderApplyDataCopyWith<TraderApplyData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TraderApplyDataCopyWith<$Res> {
  factory $TraderApplyDataCopyWith(
          TraderApplyData value, $Res Function(TraderApplyData) then) =
      _$TraderApplyDataCopyWithImpl<$Res, TraderApplyData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'traderId') String traderId,
      @JsonKey(name: 'status') String status});
}

/// @nodoc
class _$TraderApplyDataCopyWithImpl<$Res, $Val extends TraderApplyData>
    implements $TraderApplyDataCopyWith<$Res> {
  _$TraderApplyDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TraderApplyData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? traderId = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      traderId: null == traderId
          ? _value.traderId
          : traderId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TraderApplyDataImplCopyWith<$Res>
    implements $TraderApplyDataCopyWith<$Res> {
  factory _$$TraderApplyDataImplCopyWith(_$TraderApplyDataImpl value,
          $Res Function(_$TraderApplyDataImpl) then) =
      __$$TraderApplyDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'traderId') String traderId,
      @JsonKey(name: 'status') String status});
}

/// @nodoc
class __$$TraderApplyDataImplCopyWithImpl<$Res>
    extends _$TraderApplyDataCopyWithImpl<$Res, _$TraderApplyDataImpl>
    implements _$$TraderApplyDataImplCopyWith<$Res> {
  __$$TraderApplyDataImplCopyWithImpl(
      _$TraderApplyDataImpl _value, $Res Function(_$TraderApplyDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of TraderApplyData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? traderId = null,
    Object? status = null,
  }) {
    return _then(_$TraderApplyDataImpl(
      traderId: null == traderId
          ? _value.traderId
          : traderId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TraderApplyDataImpl implements _TraderApplyData {
  const _$TraderApplyDataImpl(
      {@JsonKey(name: 'traderId') required this.traderId,
      @JsonKey(name: 'status') required this.status});

  factory _$TraderApplyDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TraderApplyDataImplFromJson(json);

  /// 交易员ID
  @override
  @JsonKey(name: 'traderId')
  final String traderId;

  /// 申请状态
  @override
  @JsonKey(name: 'status')
  final String status;

  @override
  String toString() {
    return 'TraderApplyData(traderId: $traderId, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TraderApplyDataImpl &&
            (identical(other.traderId, traderId) ||
                other.traderId == traderId) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, traderId, status);

  /// Create a copy of TraderApplyData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TraderApplyDataImplCopyWith<_$TraderApplyDataImpl> get copyWith =>
      __$$TraderApplyDataImplCopyWithImpl<_$TraderApplyDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TraderApplyDataImplToJson(
      this,
    );
  }
}

abstract class _TraderApplyData implements TraderApplyData {
  const factory _TraderApplyData(
          {@JsonKey(name: 'traderId') required final String traderId,
          @JsonKey(name: 'status') required final String status}) =
      _$TraderApplyDataImpl;

  factory _TraderApplyData.fromJson(Map<String, dynamic> json) =
      _$TraderApplyDataImpl.fromJson;

  /// 交易员ID
  @override
  @JsonKey(name: 'traderId')
  String get traderId;

  /// 申请状态
  @override
  @JsonKey(name: 'status')
  String get status;

  /// Create a copy of TraderApplyData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TraderApplyDataImplCopyWith<_$TraderApplyDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
