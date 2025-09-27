// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'strategy_ratings_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StrategyRatingsResponse _$StrategyRatingsResponseFromJson(
    Map<String, dynamic> json) {
  return _StrategyRatingsResponse.fromJson(json);
}

/// @nodoc
mixin _$StrategyRatingsResponse {
  @JsonKey(name: 'errCode')
  int get errCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'errMsg')
  String get errMsg => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  StrategyRatingsData get data => throw _privateConstructorUsedError;

  /// Serializes this StrategyRatingsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StrategyRatingsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StrategyRatingsResponseCopyWith<StrategyRatingsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StrategyRatingsResponseCopyWith<$Res> {
  factory $StrategyRatingsResponseCopyWith(StrategyRatingsResponse value,
          $Res Function(StrategyRatingsResponse) then) =
      _$StrategyRatingsResponseCopyWithImpl<$Res, StrategyRatingsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'errCode') int errCode,
      @JsonKey(name: 'errMsg') String errMsg,
      @JsonKey(name: 'data') StrategyRatingsData data});

  $StrategyRatingsDataCopyWith<$Res> get data;
}

/// @nodoc
class _$StrategyRatingsResponseCopyWithImpl<$Res,
        $Val extends StrategyRatingsResponse>
    implements $StrategyRatingsResponseCopyWith<$Res> {
  _$StrategyRatingsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StrategyRatingsResponse
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
              as StrategyRatingsData,
    ) as $Val);
  }

  /// Create a copy of StrategyRatingsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StrategyRatingsDataCopyWith<$Res> get data {
    return $StrategyRatingsDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StrategyRatingsResponseImplCopyWith<$Res>
    implements $StrategyRatingsResponseCopyWith<$Res> {
  factory _$$StrategyRatingsResponseImplCopyWith(
          _$StrategyRatingsResponseImpl value,
          $Res Function(_$StrategyRatingsResponseImpl) then) =
      __$$StrategyRatingsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'errCode') int errCode,
      @JsonKey(name: 'errMsg') String errMsg,
      @JsonKey(name: 'data') StrategyRatingsData data});

  @override
  $StrategyRatingsDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$StrategyRatingsResponseImplCopyWithImpl<$Res>
    extends _$StrategyRatingsResponseCopyWithImpl<$Res,
        _$StrategyRatingsResponseImpl>
    implements _$$StrategyRatingsResponseImplCopyWith<$Res> {
  __$$StrategyRatingsResponseImplCopyWithImpl(
      _$StrategyRatingsResponseImpl _value,
      $Res Function(_$StrategyRatingsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of StrategyRatingsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errCode = null,
    Object? errMsg = null,
    Object? data = null,
  }) {
    return _then(_$StrategyRatingsResponseImpl(
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
              as StrategyRatingsData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StrategyRatingsResponseImpl implements _StrategyRatingsResponse {
  const _$StrategyRatingsResponseImpl(
      {@JsonKey(name: 'errCode') required this.errCode,
      @JsonKey(name: 'errMsg') required this.errMsg,
      @JsonKey(name: 'data') required this.data});

  factory _$StrategyRatingsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$StrategyRatingsResponseImplFromJson(json);

  @override
  @JsonKey(name: 'errCode')
  final int errCode;
  @override
  @JsonKey(name: 'errMsg')
  final String errMsg;
  @override
  @JsonKey(name: 'data')
  final StrategyRatingsData data;

  @override
  String toString() {
    return 'StrategyRatingsResponse(errCode: $errCode, errMsg: $errMsg, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StrategyRatingsResponseImpl &&
            (identical(other.errCode, errCode) || other.errCode == errCode) &&
            (identical(other.errMsg, errMsg) || other.errMsg == errMsg) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, errCode, errMsg, data);

  /// Create a copy of StrategyRatingsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StrategyRatingsResponseImplCopyWith<_$StrategyRatingsResponseImpl>
      get copyWith => __$$StrategyRatingsResponseImplCopyWithImpl<
          _$StrategyRatingsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StrategyRatingsResponseImplToJson(
      this,
    );
  }
}

abstract class _StrategyRatingsResponse implements StrategyRatingsResponse {
  const factory _StrategyRatingsResponse(
          {@JsonKey(name: 'errCode') required final int errCode,
          @JsonKey(name: 'errMsg') required final String errMsg,
          @JsonKey(name: 'data') required final StrategyRatingsData data}) =
      _$StrategyRatingsResponseImpl;

  factory _StrategyRatingsResponse.fromJson(Map<String, dynamic> json) =
      _$StrategyRatingsResponseImpl.fromJson;

  @override
  @JsonKey(name: 'errCode')
  int get errCode;
  @override
  @JsonKey(name: 'errMsg')
  String get errMsg;
  @override
  @JsonKey(name: 'data')
  StrategyRatingsData get data;

  /// Create a copy of StrategyRatingsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StrategyRatingsResponseImplCopyWith<_$StrategyRatingsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StrategyRatingsData _$StrategyRatingsDataFromJson(Map<String, dynamic> json) {
  return _StrategyRatingsData.fromJson(json);
}

/// @nodoc
mixin _$StrategyRatingsData {
  @JsonKey(name: 'total')
  String get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'ratingDistribution')
  Map<String, int> get ratingDistribution => throw _privateConstructorUsedError;
  @JsonKey(name: 'records')
  List<StrategyRatingRecord> get records => throw _privateConstructorUsedError;
  @JsonKey(name: 'avgRating')
  double get avgRating => throw _privateConstructorUsedError;

  /// Serializes this StrategyRatingsData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StrategyRatingsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StrategyRatingsDataCopyWith<StrategyRatingsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StrategyRatingsDataCopyWith<$Res> {
  factory $StrategyRatingsDataCopyWith(
          StrategyRatingsData value, $Res Function(StrategyRatingsData) then) =
      _$StrategyRatingsDataCopyWithImpl<$Res, StrategyRatingsData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total') String total,
      @JsonKey(name: 'ratingDistribution') Map<String, int> ratingDistribution,
      @JsonKey(name: 'records') List<StrategyRatingRecord> records,
      @JsonKey(name: 'avgRating') double avgRating});
}

/// @nodoc
class _$StrategyRatingsDataCopyWithImpl<$Res, $Val extends StrategyRatingsData>
    implements $StrategyRatingsDataCopyWith<$Res> {
  _$StrategyRatingsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StrategyRatingsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? ratingDistribution = null,
    Object? records = null,
    Object? avgRating = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      ratingDistribution: null == ratingDistribution
          ? _value.ratingDistribution
          : ratingDistribution // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      records: null == records
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<StrategyRatingRecord>,
      avgRating: null == avgRating
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StrategyRatingsDataImplCopyWith<$Res>
    implements $StrategyRatingsDataCopyWith<$Res> {
  factory _$$StrategyRatingsDataImplCopyWith(_$StrategyRatingsDataImpl value,
          $Res Function(_$StrategyRatingsDataImpl) then) =
      __$$StrategyRatingsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total') String total,
      @JsonKey(name: 'ratingDistribution') Map<String, int> ratingDistribution,
      @JsonKey(name: 'records') List<StrategyRatingRecord> records,
      @JsonKey(name: 'avgRating') double avgRating});
}

/// @nodoc
class __$$StrategyRatingsDataImplCopyWithImpl<$Res>
    extends _$StrategyRatingsDataCopyWithImpl<$Res, _$StrategyRatingsDataImpl>
    implements _$$StrategyRatingsDataImplCopyWith<$Res> {
  __$$StrategyRatingsDataImplCopyWithImpl(_$StrategyRatingsDataImpl _value,
      $Res Function(_$StrategyRatingsDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of StrategyRatingsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? ratingDistribution = null,
    Object? records = null,
    Object? avgRating = null,
  }) {
    return _then(_$StrategyRatingsDataImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      ratingDistribution: null == ratingDistribution
          ? _value._ratingDistribution
          : ratingDistribution // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      records: null == records
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<StrategyRatingRecord>,
      avgRating: null == avgRating
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StrategyRatingsDataImpl implements _StrategyRatingsData {
  const _$StrategyRatingsDataImpl(
      {@JsonKey(name: 'total') required this.total,
      @JsonKey(name: 'ratingDistribution')
      required final Map<String, int> ratingDistribution,
      @JsonKey(name: 'records')
      required final List<StrategyRatingRecord> records,
      @JsonKey(name: 'avgRating') required this.avgRating})
      : _ratingDistribution = ratingDistribution,
        _records = records;

  factory _$StrategyRatingsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$StrategyRatingsDataImplFromJson(json);

  @override
  @JsonKey(name: 'total')
  final String total;
  final Map<String, int> _ratingDistribution;
  @override
  @JsonKey(name: 'ratingDistribution')
  Map<String, int> get ratingDistribution {
    if (_ratingDistribution is EqualUnmodifiableMapView)
      return _ratingDistribution;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_ratingDistribution);
  }

  final List<StrategyRatingRecord> _records;
  @override
  @JsonKey(name: 'records')
  List<StrategyRatingRecord> get records {
    if (_records is EqualUnmodifiableListView) return _records;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_records);
  }

  @override
  @JsonKey(name: 'avgRating')
  final double avgRating;

  @override
  String toString() {
    return 'StrategyRatingsData(total: $total, ratingDistribution: $ratingDistribution, records: $records, avgRating: $avgRating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StrategyRatingsDataImpl &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality()
                .equals(other._ratingDistribution, _ratingDistribution) &&
            const DeepCollectionEquality().equals(other._records, _records) &&
            (identical(other.avgRating, avgRating) ||
                other.avgRating == avgRating));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      total,
      const DeepCollectionEquality().hash(_ratingDistribution),
      const DeepCollectionEquality().hash(_records),
      avgRating);

  /// Create a copy of StrategyRatingsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StrategyRatingsDataImplCopyWith<_$StrategyRatingsDataImpl> get copyWith =>
      __$$StrategyRatingsDataImplCopyWithImpl<_$StrategyRatingsDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StrategyRatingsDataImplToJson(
      this,
    );
  }
}

abstract class _StrategyRatingsData implements StrategyRatingsData {
  const factory _StrategyRatingsData(
          {@JsonKey(name: 'total') required final String total,
          @JsonKey(name: 'ratingDistribution')
          required final Map<String, int> ratingDistribution,
          @JsonKey(name: 'records')
          required final List<StrategyRatingRecord> records,
          @JsonKey(name: 'avgRating') required final double avgRating}) =
      _$StrategyRatingsDataImpl;

  factory _StrategyRatingsData.fromJson(Map<String, dynamic> json) =
      _$StrategyRatingsDataImpl.fromJson;

  @override
  @JsonKey(name: 'total')
  String get total;
  @override
  @JsonKey(name: 'ratingDistribution')
  Map<String, int> get ratingDistribution;
  @override
  @JsonKey(name: 'records')
  List<StrategyRatingRecord> get records;
  @override
  @JsonKey(name: 'avgRating')
  double get avgRating;

  /// Create a copy of StrategyRatingsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StrategyRatingsDataImplCopyWith<_$StrategyRatingsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StrategyRatingRecord _$StrategyRatingRecordFromJson(Map<String, dynamic> json) {
  return _StrategyRatingRecord.fromJson(json);
}

/// @nodoc
mixin _$StrategyRatingRecord {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'strategyId')
  String get strategyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'memberId')
  String get memberId => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  int get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment')
  String get comment => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'version')
  String get version => throw _privateConstructorUsedError;
  @JsonKey(name: 'isDeleted')
  int get isDeleted => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdBy')
  String get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedBy')
  String get updatedBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  String get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this StrategyRatingRecord to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StrategyRatingRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StrategyRatingRecordCopyWith<StrategyRatingRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StrategyRatingRecordCopyWith<$Res> {
  factory $StrategyRatingRecordCopyWith(StrategyRatingRecord value,
          $Res Function(StrategyRatingRecord) then) =
      _$StrategyRatingRecordCopyWithImpl<$Res, StrategyRatingRecord>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'strategyId') String strategyId,
      @JsonKey(name: 'memberId') String memberId,
      @JsonKey(name: 'rating') int rating,
      @JsonKey(name: 'comment') String comment,
      @JsonKey(name: 'status') int status,
      @JsonKey(name: 'version') String version,
      @JsonKey(name: 'isDeleted') int isDeleted,
      @JsonKey(name: 'createdBy') String createdBy,
      @JsonKey(name: 'updatedBy') String updatedBy,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'updatedAt') String updatedAt});
}

/// @nodoc
class _$StrategyRatingRecordCopyWithImpl<$Res,
        $Val extends StrategyRatingRecord>
    implements $StrategyRatingRecordCopyWith<$Res> {
  _$StrategyRatingRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StrategyRatingRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? strategyId = null,
    Object? memberId = null,
    Object? rating = null,
    Object? comment = null,
    Object? status = null,
    Object? version = null,
    Object? isDeleted = null,
    Object? createdBy = null,
    Object? updatedBy = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      strategyId: null == strategyId
          ? _value.strategyId
          : strategyId // ignore: cast_nullable_to_non_nullable
              as String,
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as int,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      updatedBy: null == updatedBy
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StrategyRatingRecordImplCopyWith<$Res>
    implements $StrategyRatingRecordCopyWith<$Res> {
  factory _$$StrategyRatingRecordImplCopyWith(_$StrategyRatingRecordImpl value,
          $Res Function(_$StrategyRatingRecordImpl) then) =
      __$$StrategyRatingRecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'strategyId') String strategyId,
      @JsonKey(name: 'memberId') String memberId,
      @JsonKey(name: 'rating') int rating,
      @JsonKey(name: 'comment') String comment,
      @JsonKey(name: 'status') int status,
      @JsonKey(name: 'version') String version,
      @JsonKey(name: 'isDeleted') int isDeleted,
      @JsonKey(name: 'createdBy') String createdBy,
      @JsonKey(name: 'updatedBy') String updatedBy,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'updatedAt') String updatedAt});
}

/// @nodoc
class __$$StrategyRatingRecordImplCopyWithImpl<$Res>
    extends _$StrategyRatingRecordCopyWithImpl<$Res, _$StrategyRatingRecordImpl>
    implements _$$StrategyRatingRecordImplCopyWith<$Res> {
  __$$StrategyRatingRecordImplCopyWithImpl(_$StrategyRatingRecordImpl _value,
      $Res Function(_$StrategyRatingRecordImpl) _then)
      : super(_value, _then);

  /// Create a copy of StrategyRatingRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? strategyId = null,
    Object? memberId = null,
    Object? rating = null,
    Object? comment = null,
    Object? status = null,
    Object? version = null,
    Object? isDeleted = null,
    Object? createdBy = null,
    Object? updatedBy = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$StrategyRatingRecordImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      strategyId: null == strategyId
          ? _value.strategyId
          : strategyId // ignore: cast_nullable_to_non_nullable
              as String,
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as int,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      updatedBy: null == updatedBy
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StrategyRatingRecordImpl implements _StrategyRatingRecord {
  const _$StrategyRatingRecordImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'strategyId') required this.strategyId,
      @JsonKey(name: 'memberId') required this.memberId,
      @JsonKey(name: 'rating') required this.rating,
      @JsonKey(name: 'comment') required this.comment,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'version') required this.version,
      @JsonKey(name: 'isDeleted') required this.isDeleted,
      @JsonKey(name: 'createdBy') required this.createdBy,
      @JsonKey(name: 'updatedBy') required this.updatedBy,
      @JsonKey(name: 'createdAt') required this.createdAt,
      @JsonKey(name: 'updatedAt') required this.updatedAt});

  factory _$StrategyRatingRecordImpl.fromJson(Map<String, dynamic> json) =>
      _$$StrategyRatingRecordImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'strategyId')
  final String strategyId;
  @override
  @JsonKey(name: 'memberId')
  final String memberId;
  @override
  @JsonKey(name: 'rating')
  final int rating;
  @override
  @JsonKey(name: 'comment')
  final String comment;
  @override
  @JsonKey(name: 'status')
  final int status;
  @override
  @JsonKey(name: 'version')
  final String version;
  @override
  @JsonKey(name: 'isDeleted')
  final int isDeleted;
  @override
  @JsonKey(name: 'createdBy')
  final String createdBy;
  @override
  @JsonKey(name: 'updatedBy')
  final String updatedBy;
  @override
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final String updatedAt;

  @override
  String toString() {
    return 'StrategyRatingRecord(id: $id, strategyId: $strategyId, memberId: $memberId, rating: $rating, comment: $comment, status: $status, version: $version, isDeleted: $isDeleted, createdBy: $createdBy, updatedBy: $updatedBy, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StrategyRatingRecordImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.strategyId, strategyId) ||
                other.strategyId == strategyId) &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.updatedBy, updatedBy) ||
                other.updatedBy == updatedBy) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      strategyId,
      memberId,
      rating,
      comment,
      status,
      version,
      isDeleted,
      createdBy,
      updatedBy,
      createdAt,
      updatedAt);

  /// Create a copy of StrategyRatingRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StrategyRatingRecordImplCopyWith<_$StrategyRatingRecordImpl>
      get copyWith =>
          __$$StrategyRatingRecordImplCopyWithImpl<_$StrategyRatingRecordImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StrategyRatingRecordImplToJson(
      this,
    );
  }
}

abstract class _StrategyRatingRecord implements StrategyRatingRecord {
  const factory _StrategyRatingRecord(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'strategyId') required final String strategyId,
          @JsonKey(name: 'memberId') required final String memberId,
          @JsonKey(name: 'rating') required final int rating,
          @JsonKey(name: 'comment') required final String comment,
          @JsonKey(name: 'status') required final int status,
          @JsonKey(name: 'version') required final String version,
          @JsonKey(name: 'isDeleted') required final int isDeleted,
          @JsonKey(name: 'createdBy') required final String createdBy,
          @JsonKey(name: 'updatedBy') required final String updatedBy,
          @JsonKey(name: 'createdAt') required final String createdAt,
          @JsonKey(name: 'updatedAt') required final String updatedAt}) =
      _$StrategyRatingRecordImpl;

  factory _StrategyRatingRecord.fromJson(Map<String, dynamic> json) =
      _$StrategyRatingRecordImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'strategyId')
  String get strategyId;
  @override
  @JsonKey(name: 'memberId')
  String get memberId;
  @override
  @JsonKey(name: 'rating')
  int get rating;
  @override
  @JsonKey(name: 'comment')
  String get comment;
  @override
  @JsonKey(name: 'status')
  int get status;
  @override
  @JsonKey(name: 'version')
  String get version;
  @override
  @JsonKey(name: 'isDeleted')
  int get isDeleted;
  @override
  @JsonKey(name: 'createdBy')
  String get createdBy;
  @override
  @JsonKey(name: 'updatedBy')
  String get updatedBy;
  @override
  @JsonKey(name: 'createdAt')
  String get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  String get updatedAt;

  /// Create a copy of StrategyRatingRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StrategyRatingRecordImplCopyWith<_$StrategyRatingRecordImpl>
      get copyWith => throw _privateConstructorUsedError;
}
