// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trader_status_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TraderStatusResponse _$TraderStatusResponseFromJson(Map<String, dynamic> json) {
  return _TraderStatusResponse.fromJson(json);
}

/// @nodoc
mixin _$TraderStatusResponse {
  /// 错误码
  @JsonKey(name: 'errCode')
  int get errCode => throw _privateConstructorUsedError;

  /// 错误信息
  @JsonKey(name: 'errMsg')
  String get errMsg => throw _privateConstructorUsedError;

  /// 交易员状态数据
  @JsonKey(name: 'data')
  TraderStatusData get data => throw _privateConstructorUsedError;

  /// Serializes this TraderStatusResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TraderStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TraderStatusResponseCopyWith<TraderStatusResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TraderStatusResponseCopyWith<$Res> {
  factory $TraderStatusResponseCopyWith(TraderStatusResponse value,
          $Res Function(TraderStatusResponse) then) =
      _$TraderStatusResponseCopyWithImpl<$Res, TraderStatusResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'errCode') int errCode,
      @JsonKey(name: 'errMsg') String errMsg,
      @JsonKey(name: 'data') TraderStatusData data});

  $TraderStatusDataCopyWith<$Res> get data;
}

/// @nodoc
class _$TraderStatusResponseCopyWithImpl<$Res,
        $Val extends TraderStatusResponse>
    implements $TraderStatusResponseCopyWith<$Res> {
  _$TraderStatusResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TraderStatusResponse
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
              as TraderStatusData,
    ) as $Val);
  }

  /// Create a copy of TraderStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TraderStatusDataCopyWith<$Res> get data {
    return $TraderStatusDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TraderStatusResponseImplCopyWith<$Res>
    implements $TraderStatusResponseCopyWith<$Res> {
  factory _$$TraderStatusResponseImplCopyWith(_$TraderStatusResponseImpl value,
          $Res Function(_$TraderStatusResponseImpl) then) =
      __$$TraderStatusResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'errCode') int errCode,
      @JsonKey(name: 'errMsg') String errMsg,
      @JsonKey(name: 'data') TraderStatusData data});

  @override
  $TraderStatusDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$TraderStatusResponseImplCopyWithImpl<$Res>
    extends _$TraderStatusResponseCopyWithImpl<$Res, _$TraderStatusResponseImpl>
    implements _$$TraderStatusResponseImplCopyWith<$Res> {
  __$$TraderStatusResponseImplCopyWithImpl(_$TraderStatusResponseImpl _value,
      $Res Function(_$TraderStatusResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of TraderStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errCode = null,
    Object? errMsg = null,
    Object? data = null,
  }) {
    return _then(_$TraderStatusResponseImpl(
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
              as TraderStatusData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TraderStatusResponseImpl implements _TraderStatusResponse {
  const _$TraderStatusResponseImpl(
      {@JsonKey(name: 'errCode') required this.errCode,
      @JsonKey(name: 'errMsg') required this.errMsg,
      @JsonKey(name: 'data') required this.data});

  factory _$TraderStatusResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TraderStatusResponseImplFromJson(json);

  /// 错误码
  @override
  @JsonKey(name: 'errCode')
  final int errCode;

  /// 错误信息
  @override
  @JsonKey(name: 'errMsg')
  final String errMsg;

  /// 交易员状态数据
  @override
  @JsonKey(name: 'data')
  final TraderStatusData data;

  @override
  String toString() {
    return 'TraderStatusResponse(errCode: $errCode, errMsg: $errMsg, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TraderStatusResponseImpl &&
            (identical(other.errCode, errCode) || other.errCode == errCode) &&
            (identical(other.errMsg, errMsg) || other.errMsg == errMsg) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, errCode, errMsg, data);

  /// Create a copy of TraderStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TraderStatusResponseImplCopyWith<_$TraderStatusResponseImpl>
      get copyWith =>
          __$$TraderStatusResponseImplCopyWithImpl<_$TraderStatusResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TraderStatusResponseImplToJson(
      this,
    );
  }
}

abstract class _TraderStatusResponse implements TraderStatusResponse {
  const factory _TraderStatusResponse(
          {@JsonKey(name: 'errCode') required final int errCode,
          @JsonKey(name: 'errMsg') required final String errMsg,
          @JsonKey(name: 'data') required final TraderStatusData data}) =
      _$TraderStatusResponseImpl;

  factory _TraderStatusResponse.fromJson(Map<String, dynamic> json) =
      _$TraderStatusResponseImpl.fromJson;

  /// 错误码
  @override
  @JsonKey(name: 'errCode')
  int get errCode;

  /// 错误信息
  @override
  @JsonKey(name: 'errMsg')
  String get errMsg;

  /// 交易员状态数据
  @override
  @JsonKey(name: 'data')
  TraderStatusData get data;

  /// Create a copy of TraderStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TraderStatusResponseImplCopyWith<_$TraderStatusResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TraderStatusData _$TraderStatusDataFromJson(Map<String, dynamic> json) {
  return _TraderStatusData.fromJson(json);
}

/// @nodoc
mixin _$TraderStatusData {
  /// 是否为交易员
  @JsonKey(name: 'isTrader')
  bool get isTrader => throw _privateConstructorUsedError;

  /// 交易员ID
  @JsonKey(name: 'traderId')
  String get traderId => throw _privateConstructorUsedError;

  /// 交易员名称
  @JsonKey(name: 'traderName')
  String get traderName => throw _privateConstructorUsedError;

  /// 交易员头像
  @JsonKey(name: 'traderAvatar')
  String get traderAvatar => throw _privateConstructorUsedError;

  /// Serializes this TraderStatusData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TraderStatusData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TraderStatusDataCopyWith<TraderStatusData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TraderStatusDataCopyWith<$Res> {
  factory $TraderStatusDataCopyWith(
          TraderStatusData value, $Res Function(TraderStatusData) then) =
      _$TraderStatusDataCopyWithImpl<$Res, TraderStatusData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'isTrader') bool isTrader,
      @JsonKey(name: 'traderId') String traderId,
      @JsonKey(name: 'traderName') String traderName,
      @JsonKey(name: 'traderAvatar') String traderAvatar});
}

/// @nodoc
class _$TraderStatusDataCopyWithImpl<$Res, $Val extends TraderStatusData>
    implements $TraderStatusDataCopyWith<$Res> {
  _$TraderStatusDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TraderStatusData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isTrader = null,
    Object? traderId = null,
    Object? traderName = null,
    Object? traderAvatar = null,
  }) {
    return _then(_value.copyWith(
      isTrader: null == isTrader
          ? _value.isTrader
          : isTrader // ignore: cast_nullable_to_non_nullable
              as bool,
      traderId: null == traderId
          ? _value.traderId
          : traderId // ignore: cast_nullable_to_non_nullable
              as String,
      traderName: null == traderName
          ? _value.traderName
          : traderName // ignore: cast_nullable_to_non_nullable
              as String,
      traderAvatar: null == traderAvatar
          ? _value.traderAvatar
          : traderAvatar // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TraderStatusDataImplCopyWith<$Res>
    implements $TraderStatusDataCopyWith<$Res> {
  factory _$$TraderStatusDataImplCopyWith(_$TraderStatusDataImpl value,
          $Res Function(_$TraderStatusDataImpl) then) =
      __$$TraderStatusDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'isTrader') bool isTrader,
      @JsonKey(name: 'traderId') String traderId,
      @JsonKey(name: 'traderName') String traderName,
      @JsonKey(name: 'traderAvatar') String traderAvatar});
}

/// @nodoc
class __$$TraderStatusDataImplCopyWithImpl<$Res>
    extends _$TraderStatusDataCopyWithImpl<$Res, _$TraderStatusDataImpl>
    implements _$$TraderStatusDataImplCopyWith<$Res> {
  __$$TraderStatusDataImplCopyWithImpl(_$TraderStatusDataImpl _value,
      $Res Function(_$TraderStatusDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of TraderStatusData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isTrader = null,
    Object? traderId = null,
    Object? traderName = null,
    Object? traderAvatar = null,
  }) {
    return _then(_$TraderStatusDataImpl(
      isTrader: null == isTrader
          ? _value.isTrader
          : isTrader // ignore: cast_nullable_to_non_nullable
              as bool,
      traderId: null == traderId
          ? _value.traderId
          : traderId // ignore: cast_nullable_to_non_nullable
              as String,
      traderName: null == traderName
          ? _value.traderName
          : traderName // ignore: cast_nullable_to_non_nullable
              as String,
      traderAvatar: null == traderAvatar
          ? _value.traderAvatar
          : traderAvatar // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TraderStatusDataImpl implements _TraderStatusData {
  const _$TraderStatusDataImpl(
      {@JsonKey(name: 'isTrader') required this.isTrader,
      @JsonKey(name: 'traderId') required this.traderId,
      @JsonKey(name: 'traderName') required this.traderName,
      @JsonKey(name: 'traderAvatar') required this.traderAvatar});

  factory _$TraderStatusDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TraderStatusDataImplFromJson(json);

  /// 是否为交易员
  @override
  @JsonKey(name: 'isTrader')
  final bool isTrader;

  /// 交易员ID
  @override
  @JsonKey(name: 'traderId')
  final String traderId;

  /// 交易员名称
  @override
  @JsonKey(name: 'traderName')
  final String traderName;

  /// 交易员头像
  @override
  @JsonKey(name: 'traderAvatar')
  final String traderAvatar;

  @override
  String toString() {
    return 'TraderStatusData(isTrader: $isTrader, traderId: $traderId, traderName: $traderName, traderAvatar: $traderAvatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TraderStatusDataImpl &&
            (identical(other.isTrader, isTrader) ||
                other.isTrader == isTrader) &&
            (identical(other.traderId, traderId) ||
                other.traderId == traderId) &&
            (identical(other.traderName, traderName) ||
                other.traderName == traderName) &&
            (identical(other.traderAvatar, traderAvatar) ||
                other.traderAvatar == traderAvatar));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isTrader, traderId, traderName, traderAvatar);

  /// Create a copy of TraderStatusData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TraderStatusDataImplCopyWith<_$TraderStatusDataImpl> get copyWith =>
      __$$TraderStatusDataImplCopyWithImpl<_$TraderStatusDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TraderStatusDataImplToJson(
      this,
    );
  }
}

abstract class _TraderStatusData implements TraderStatusData {
  const factory _TraderStatusData(
          {@JsonKey(name: 'isTrader') required final bool isTrader,
          @JsonKey(name: 'traderId') required final String traderId,
          @JsonKey(name: 'traderName') required final String traderName,
          @JsonKey(name: 'traderAvatar') required final String traderAvatar}) =
      _$TraderStatusDataImpl;

  factory _TraderStatusData.fromJson(Map<String, dynamic> json) =
      _$TraderStatusDataImpl.fromJson;

  /// 是否为交易员
  @override
  @JsonKey(name: 'isTrader')
  bool get isTrader;

  /// 交易员ID
  @override
  @JsonKey(name: 'traderId')
  String get traderId;

  /// 交易员名称
  @override
  @JsonKey(name: 'traderName')
  String get traderName;

  /// 交易员头像
  @override
  @JsonKey(name: 'traderAvatar')
  String get traderAvatar;

  /// Create a copy of TraderStatusData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TraderStatusDataImplCopyWith<_$TraderStatusDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
