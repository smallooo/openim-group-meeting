// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trader_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TraderListResponse _$TraderListResponseFromJson(Map<String, dynamic> json) {
  return _TraderListResponse.fromJson(json);
}

/// @nodoc
mixin _$TraderListResponse {
  /// 错误码
  @JsonKey(name: 'errCode')
  int get errCode => throw _privateConstructorUsedError;

  /// 错误信息
  @JsonKey(name: 'errMsg')
  String get errMsg => throw _privateConstructorUsedError;

  /// 交易员列表数据
  @JsonKey(name: 'data')
  TraderListData get data => throw _privateConstructorUsedError;

  /// Serializes this TraderListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TraderListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TraderListResponseCopyWith<TraderListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TraderListResponseCopyWith<$Res> {
  factory $TraderListResponseCopyWith(
          TraderListResponse value, $Res Function(TraderListResponse) then) =
      _$TraderListResponseCopyWithImpl<$Res, TraderListResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'errCode') int errCode,
      @JsonKey(name: 'errMsg') String errMsg,
      @JsonKey(name: 'data') TraderListData data});

  $TraderListDataCopyWith<$Res> get data;
}

/// @nodoc
class _$TraderListResponseCopyWithImpl<$Res, $Val extends TraderListResponse>
    implements $TraderListResponseCopyWith<$Res> {
  _$TraderListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TraderListResponse
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
              as TraderListData,
    ) as $Val);
  }

  /// Create a copy of TraderListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TraderListDataCopyWith<$Res> get data {
    return $TraderListDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TraderListResponseImplCopyWith<$Res>
    implements $TraderListResponseCopyWith<$Res> {
  factory _$$TraderListResponseImplCopyWith(_$TraderListResponseImpl value,
          $Res Function(_$TraderListResponseImpl) then) =
      __$$TraderListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'errCode') int errCode,
      @JsonKey(name: 'errMsg') String errMsg,
      @JsonKey(name: 'data') TraderListData data});

  @override
  $TraderListDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$TraderListResponseImplCopyWithImpl<$Res>
    extends _$TraderListResponseCopyWithImpl<$Res, _$TraderListResponseImpl>
    implements _$$TraderListResponseImplCopyWith<$Res> {
  __$$TraderListResponseImplCopyWithImpl(_$TraderListResponseImpl _value,
      $Res Function(_$TraderListResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of TraderListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errCode = null,
    Object? errMsg = null,
    Object? data = null,
  }) {
    return _then(_$TraderListResponseImpl(
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
              as TraderListData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TraderListResponseImpl implements _TraderListResponse {
  const _$TraderListResponseImpl(
      {@JsonKey(name: 'errCode') required this.errCode,
      @JsonKey(name: 'errMsg') required this.errMsg,
      @JsonKey(name: 'data') required this.data});

  factory _$TraderListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TraderListResponseImplFromJson(json);

  /// 错误码
  @override
  @JsonKey(name: 'errCode')
  final int errCode;

  /// 错误信息
  @override
  @JsonKey(name: 'errMsg')
  final String errMsg;

  /// 交易员列表数据
  @override
  @JsonKey(name: 'data')
  final TraderListData data;

  @override
  String toString() {
    return 'TraderListResponse(errCode: $errCode, errMsg: $errMsg, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TraderListResponseImpl &&
            (identical(other.errCode, errCode) || other.errCode == errCode) &&
            (identical(other.errMsg, errMsg) || other.errMsg == errMsg) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, errCode, errMsg, data);

  /// Create a copy of TraderListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TraderListResponseImplCopyWith<_$TraderListResponseImpl> get copyWith =>
      __$$TraderListResponseImplCopyWithImpl<_$TraderListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TraderListResponseImplToJson(
      this,
    );
  }
}

abstract class _TraderListResponse implements TraderListResponse {
  const factory _TraderListResponse(
          {@JsonKey(name: 'errCode') required final int errCode,
          @JsonKey(name: 'errMsg') required final String errMsg,
          @JsonKey(name: 'data') required final TraderListData data}) =
      _$TraderListResponseImpl;

  factory _TraderListResponse.fromJson(Map<String, dynamic> json) =
      _$TraderListResponseImpl.fromJson;

  /// 错误码
  @override
  @JsonKey(name: 'errCode')
  int get errCode;

  /// 错误信息
  @override
  @JsonKey(name: 'errMsg')
  String get errMsg;

  /// 交易员列表数据
  @override
  @JsonKey(name: 'data')
  TraderListData get data;

  /// Create a copy of TraderListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TraderListResponseImplCopyWith<_$TraderListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TraderListData _$TraderListDataFromJson(Map<String, dynamic> json) {
  return _TraderListData.fromJson(json);
}

/// @nodoc
mixin _$TraderListData {
  /// 交易员记录列表
  @JsonKey(name: 'records')
  List<TraderItem> get records => throw _privateConstructorUsedError;

  /// 总记录数
  @JsonKey(name: 'total')
  String get total => throw _privateConstructorUsedError;

  /// 每页大小
  @JsonKey(name: 'size')
  String get size => throw _privateConstructorUsedError;

  /// 当前页码
  @JsonKey(name: 'current')
  String get current => throw _privateConstructorUsedError;

  /// 排序信息
  @JsonKey(name: 'orders')
  List<dynamic> get orders => throw _privateConstructorUsedError;

  /// 是否优化计数SQL
  @JsonKey(name: 'optimizeCountSql')
  bool get optimizeCountSql => throw _privateConstructorUsedError;

  /// 是否搜索计数
  @JsonKey(name: 'searchCount')
  bool get searchCount => throw _privateConstructorUsedError;

  /// 最大限制
  @JsonKey(name: 'maxLimit')
  String get maxLimit => throw _privateConstructorUsedError;

  /// 计数ID
  @JsonKey(name: 'countId')
  String get countId => throw _privateConstructorUsedError;

  /// 总页数
  @JsonKey(name: 'pages')
  String get pages => throw _privateConstructorUsedError;

  /// Serializes this TraderListData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TraderListData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TraderListDataCopyWith<TraderListData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TraderListDataCopyWith<$Res> {
  factory $TraderListDataCopyWith(
          TraderListData value, $Res Function(TraderListData) then) =
      _$TraderListDataCopyWithImpl<$Res, TraderListData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'records') List<TraderItem> records,
      @JsonKey(name: 'total') String total,
      @JsonKey(name: 'size') String size,
      @JsonKey(name: 'current') String current,
      @JsonKey(name: 'orders') List<dynamic> orders,
      @JsonKey(name: 'optimizeCountSql') bool optimizeCountSql,
      @JsonKey(name: 'searchCount') bool searchCount,
      @JsonKey(name: 'maxLimit') String maxLimit,
      @JsonKey(name: 'countId') String countId,
      @JsonKey(name: 'pages') String pages});
}

/// @nodoc
class _$TraderListDataCopyWithImpl<$Res, $Val extends TraderListData>
    implements $TraderListDataCopyWith<$Res> {
  _$TraderListDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TraderListData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
    Object? total = null,
    Object? size = null,
    Object? current = null,
    Object? orders = null,
    Object? optimizeCountSql = null,
    Object? searchCount = null,
    Object? maxLimit = null,
    Object? countId = null,
    Object? pages = null,
  }) {
    return _then(_value.copyWith(
      records: null == records
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<TraderItem>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as String,
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      optimizeCountSql: null == optimizeCountSql
          ? _value.optimizeCountSql
          : optimizeCountSql // ignore: cast_nullable_to_non_nullable
              as bool,
      searchCount: null == searchCount
          ? _value.searchCount
          : searchCount // ignore: cast_nullable_to_non_nullable
              as bool,
      maxLimit: null == maxLimit
          ? _value.maxLimit
          : maxLimit // ignore: cast_nullable_to_non_nullable
              as String,
      countId: null == countId
          ? _value.countId
          : countId // ignore: cast_nullable_to_non_nullable
              as String,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TraderListDataImplCopyWith<$Res>
    implements $TraderListDataCopyWith<$Res> {
  factory _$$TraderListDataImplCopyWith(_$TraderListDataImpl value,
          $Res Function(_$TraderListDataImpl) then) =
      __$$TraderListDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'records') List<TraderItem> records,
      @JsonKey(name: 'total') String total,
      @JsonKey(name: 'size') String size,
      @JsonKey(name: 'current') String current,
      @JsonKey(name: 'orders') List<dynamic> orders,
      @JsonKey(name: 'optimizeCountSql') bool optimizeCountSql,
      @JsonKey(name: 'searchCount') bool searchCount,
      @JsonKey(name: 'maxLimit') String maxLimit,
      @JsonKey(name: 'countId') String countId,
      @JsonKey(name: 'pages') String pages});
}

/// @nodoc
class __$$TraderListDataImplCopyWithImpl<$Res>
    extends _$TraderListDataCopyWithImpl<$Res, _$TraderListDataImpl>
    implements _$$TraderListDataImplCopyWith<$Res> {
  __$$TraderListDataImplCopyWithImpl(
      _$TraderListDataImpl _value, $Res Function(_$TraderListDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of TraderListData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
    Object? total = null,
    Object? size = null,
    Object? current = null,
    Object? orders = null,
    Object? optimizeCountSql = null,
    Object? searchCount = null,
    Object? maxLimit = null,
    Object? countId = null,
    Object? pages = null,
  }) {
    return _then(_$TraderListDataImpl(
      records: null == records
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<TraderItem>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as String,
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      optimizeCountSql: null == optimizeCountSql
          ? _value.optimizeCountSql
          : optimizeCountSql // ignore: cast_nullable_to_non_nullable
              as bool,
      searchCount: null == searchCount
          ? _value.searchCount
          : searchCount // ignore: cast_nullable_to_non_nullable
              as bool,
      maxLimit: null == maxLimit
          ? _value.maxLimit
          : maxLimit // ignore: cast_nullable_to_non_nullable
              as String,
      countId: null == countId
          ? _value.countId
          : countId // ignore: cast_nullable_to_non_nullable
              as String,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TraderListDataImpl implements _TraderListData {
  const _$TraderListDataImpl(
      {@JsonKey(name: 'records') required final List<TraderItem> records,
      @JsonKey(name: 'total') required this.total,
      @JsonKey(name: 'size') required this.size,
      @JsonKey(name: 'current') required this.current,
      @JsonKey(name: 'orders') required final List<dynamic> orders,
      @JsonKey(name: 'optimizeCountSql') required this.optimizeCountSql,
      @JsonKey(name: 'searchCount') required this.searchCount,
      @JsonKey(name: 'maxLimit') required this.maxLimit,
      @JsonKey(name: 'countId') required this.countId,
      @JsonKey(name: 'pages') required this.pages})
      : _records = records,
        _orders = orders;

  factory _$TraderListDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TraderListDataImplFromJson(json);

  /// 交易员记录列表
  final List<TraderItem> _records;

  /// 交易员记录列表
  @override
  @JsonKey(name: 'records')
  List<TraderItem> get records {
    if (_records is EqualUnmodifiableListView) return _records;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_records);
  }

  /// 总记录数
  @override
  @JsonKey(name: 'total')
  final String total;

  /// 每页大小
  @override
  @JsonKey(name: 'size')
  final String size;

  /// 当前页码
  @override
  @JsonKey(name: 'current')
  final String current;

  /// 排序信息
  final List<dynamic> _orders;

  /// 排序信息
  @override
  @JsonKey(name: 'orders')
  List<dynamic> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  /// 是否优化计数SQL
  @override
  @JsonKey(name: 'optimizeCountSql')
  final bool optimizeCountSql;

  /// 是否搜索计数
  @override
  @JsonKey(name: 'searchCount')
  final bool searchCount;

  /// 最大限制
  @override
  @JsonKey(name: 'maxLimit')
  final String maxLimit;

  /// 计数ID
  @override
  @JsonKey(name: 'countId')
  final String countId;

  /// 总页数
  @override
  @JsonKey(name: 'pages')
  final String pages;

  @override
  String toString() {
    return 'TraderListData(records: $records, total: $total, size: $size, current: $current, orders: $orders, optimizeCountSql: $optimizeCountSql, searchCount: $searchCount, maxLimit: $maxLimit, countId: $countId, pages: $pages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TraderListDataImpl &&
            const DeepCollectionEquality().equals(other._records, _records) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.current, current) || other.current == current) &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            (identical(other.optimizeCountSql, optimizeCountSql) ||
                other.optimizeCountSql == optimizeCountSql) &&
            (identical(other.searchCount, searchCount) ||
                other.searchCount == searchCount) &&
            (identical(other.maxLimit, maxLimit) ||
                other.maxLimit == maxLimit) &&
            (identical(other.countId, countId) || other.countId == countId) &&
            (identical(other.pages, pages) || other.pages == pages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_records),
      total,
      size,
      current,
      const DeepCollectionEquality().hash(_orders),
      optimizeCountSql,
      searchCount,
      maxLimit,
      countId,
      pages);

  /// Create a copy of TraderListData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TraderListDataImplCopyWith<_$TraderListDataImpl> get copyWith =>
      __$$TraderListDataImplCopyWithImpl<_$TraderListDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TraderListDataImplToJson(
      this,
    );
  }
}

abstract class _TraderListData implements TraderListData {
  const factory _TraderListData(
      {@JsonKey(name: 'records') required final List<TraderItem> records,
      @JsonKey(name: 'total') required final String total,
      @JsonKey(name: 'size') required final String size,
      @JsonKey(name: 'current') required final String current,
      @JsonKey(name: 'orders') required final List<dynamic> orders,
      @JsonKey(name: 'optimizeCountSql') required final bool optimizeCountSql,
      @JsonKey(name: 'searchCount') required final bool searchCount,
      @JsonKey(name: 'maxLimit') required final String maxLimit,
      @JsonKey(name: 'countId') required final String countId,
      @JsonKey(name: 'pages')
      required final String pages}) = _$TraderListDataImpl;

  factory _TraderListData.fromJson(Map<String, dynamic> json) =
      _$TraderListDataImpl.fromJson;

  /// 交易员记录列表
  @override
  @JsonKey(name: 'records')
  List<TraderItem> get records;

  /// 总记录数
  @override
  @JsonKey(name: 'total')
  String get total;

  /// 每页大小
  @override
  @JsonKey(name: 'size')
  String get size;

  /// 当前页码
  @override
  @JsonKey(name: 'current')
  String get current;

  /// 排序信息
  @override
  @JsonKey(name: 'orders')
  List<dynamic> get orders;

  /// 是否优化计数SQL
  @override
  @JsonKey(name: 'optimizeCountSql')
  bool get optimizeCountSql;

  /// 是否搜索计数
  @override
  @JsonKey(name: 'searchCount')
  bool get searchCount;

  /// 最大限制
  @override
  @JsonKey(name: 'maxLimit')
  String get maxLimit;

  /// 计数ID
  @override
  @JsonKey(name: 'countId')
  String get countId;

  /// 总页数
  @override
  @JsonKey(name: 'pages')
  String get pages;

  /// Create a copy of TraderListData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TraderListDataImplCopyWith<_$TraderListDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TraderItem _$TraderItemFromJson(Map<String, dynamic> json) {
  return _TraderItem.fromJson(json);
}

/// @nodoc
mixin _$TraderItem {
  /// 交易员ID
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;

  /// 会员ID
  @JsonKey(name: 'memberId')
  String get memberId => throw _privateConstructorUsedError;

  /// 交易员名称
  @JsonKey(name: 'traderName')
  String get traderName => throw _privateConstructorUsedError;

  /// 交易员头像
  @JsonKey(name: 'traderAvatar')
  String get traderAvatar => throw _privateConstructorUsedError;

  /// 个人简介
  @JsonKey(name: 'bio')
  String get bio => throw _privateConstructorUsedError;

  /// 加入时间
  @JsonKey(name: 'joinTime')
  String get joinTime => throw _privateConstructorUsedError;

  /// 订阅者数量
  @JsonKey(name: 'subscriberCount')
  int get subscriberCount => throw _privateConstructorUsedError;

  /// 关注者数量
  @JsonKey(name: 'followerCount')
  int get followerCount => throw _privateConstructorUsedError;

  /// 总浏览量
  @JsonKey(name: 'totalViews')
  String get totalViews => throw _privateConstructorUsedError;

  /// 现货策略数量
  @JsonKey(name: 'spotStrategyCount')
  int get spotStrategyCount => throw _privateConstructorUsedError;

  /// 期货策略数量
  @JsonKey(name: 'futuresStrategyCount')
  int get futuresStrategyCount => throw _privateConstructorUsedError;

  /// 总策略数量
  @JsonKey(name: 'totalStrategyCount')
  int get totalStrategyCount => throw _privateConstructorUsedError;

  /// 状态
  @JsonKey(name: 'status')
  int get status => throw _privateConstructorUsedError;

  /// 创建时间
  @JsonKey(name: 'createdAt')
  String get createdAt => throw _privateConstructorUsedError;

  /// Serializes this TraderItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TraderItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TraderItemCopyWith<TraderItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TraderItemCopyWith<$Res> {
  factory $TraderItemCopyWith(
          TraderItem value, $Res Function(TraderItem) then) =
      _$TraderItemCopyWithImpl<$Res, TraderItem>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'memberId') String memberId,
      @JsonKey(name: 'traderName') String traderName,
      @JsonKey(name: 'traderAvatar') String traderAvatar,
      @JsonKey(name: 'bio') String bio,
      @JsonKey(name: 'joinTime') String joinTime,
      @JsonKey(name: 'subscriberCount') int subscriberCount,
      @JsonKey(name: 'followerCount') int followerCount,
      @JsonKey(name: 'totalViews') String totalViews,
      @JsonKey(name: 'spotStrategyCount') int spotStrategyCount,
      @JsonKey(name: 'futuresStrategyCount') int futuresStrategyCount,
      @JsonKey(name: 'totalStrategyCount') int totalStrategyCount,
      @JsonKey(name: 'status') int status,
      @JsonKey(name: 'createdAt') String createdAt});
}

/// @nodoc
class _$TraderItemCopyWithImpl<$Res, $Val extends TraderItem>
    implements $TraderItemCopyWith<$Res> {
  _$TraderItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TraderItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? memberId = null,
    Object? traderName = null,
    Object? traderAvatar = null,
    Object? bio = null,
    Object? joinTime = null,
    Object? subscriberCount = null,
    Object? followerCount = null,
    Object? totalViews = null,
    Object? spotStrategyCount = null,
    Object? futuresStrategyCount = null,
    Object? totalStrategyCount = null,
    Object? status = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as String,
      traderName: null == traderName
          ? _value.traderName
          : traderName // ignore: cast_nullable_to_non_nullable
              as String,
      traderAvatar: null == traderAvatar
          ? _value.traderAvatar
          : traderAvatar // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      joinTime: null == joinTime
          ? _value.joinTime
          : joinTime // ignore: cast_nullable_to_non_nullable
              as String,
      subscriberCount: null == subscriberCount
          ? _value.subscriberCount
          : subscriberCount // ignore: cast_nullable_to_non_nullable
              as int,
      followerCount: null == followerCount
          ? _value.followerCount
          : followerCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalViews: null == totalViews
          ? _value.totalViews
          : totalViews // ignore: cast_nullable_to_non_nullable
              as String,
      spotStrategyCount: null == spotStrategyCount
          ? _value.spotStrategyCount
          : spotStrategyCount // ignore: cast_nullable_to_non_nullable
              as int,
      futuresStrategyCount: null == futuresStrategyCount
          ? _value.futuresStrategyCount
          : futuresStrategyCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalStrategyCount: null == totalStrategyCount
          ? _value.totalStrategyCount
          : totalStrategyCount // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TraderItemImplCopyWith<$Res>
    implements $TraderItemCopyWith<$Res> {
  factory _$$TraderItemImplCopyWith(
          _$TraderItemImpl value, $Res Function(_$TraderItemImpl) then) =
      __$$TraderItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'memberId') String memberId,
      @JsonKey(name: 'traderName') String traderName,
      @JsonKey(name: 'traderAvatar') String traderAvatar,
      @JsonKey(name: 'bio') String bio,
      @JsonKey(name: 'joinTime') String joinTime,
      @JsonKey(name: 'subscriberCount') int subscriberCount,
      @JsonKey(name: 'followerCount') int followerCount,
      @JsonKey(name: 'totalViews') String totalViews,
      @JsonKey(name: 'spotStrategyCount') int spotStrategyCount,
      @JsonKey(name: 'futuresStrategyCount') int futuresStrategyCount,
      @JsonKey(name: 'totalStrategyCount') int totalStrategyCount,
      @JsonKey(name: 'status') int status,
      @JsonKey(name: 'createdAt') String createdAt});
}

/// @nodoc
class __$$TraderItemImplCopyWithImpl<$Res>
    extends _$TraderItemCopyWithImpl<$Res, _$TraderItemImpl>
    implements _$$TraderItemImplCopyWith<$Res> {
  __$$TraderItemImplCopyWithImpl(
      _$TraderItemImpl _value, $Res Function(_$TraderItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of TraderItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? memberId = null,
    Object? traderName = null,
    Object? traderAvatar = null,
    Object? bio = null,
    Object? joinTime = null,
    Object? subscriberCount = null,
    Object? followerCount = null,
    Object? totalViews = null,
    Object? spotStrategyCount = null,
    Object? futuresStrategyCount = null,
    Object? totalStrategyCount = null,
    Object? status = null,
    Object? createdAt = null,
  }) {
    return _then(_$TraderItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as String,
      traderName: null == traderName
          ? _value.traderName
          : traderName // ignore: cast_nullable_to_non_nullable
              as String,
      traderAvatar: null == traderAvatar
          ? _value.traderAvatar
          : traderAvatar // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      joinTime: null == joinTime
          ? _value.joinTime
          : joinTime // ignore: cast_nullable_to_non_nullable
              as String,
      subscriberCount: null == subscriberCount
          ? _value.subscriberCount
          : subscriberCount // ignore: cast_nullable_to_non_nullable
              as int,
      followerCount: null == followerCount
          ? _value.followerCount
          : followerCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalViews: null == totalViews
          ? _value.totalViews
          : totalViews // ignore: cast_nullable_to_non_nullable
              as String,
      spotStrategyCount: null == spotStrategyCount
          ? _value.spotStrategyCount
          : spotStrategyCount // ignore: cast_nullable_to_non_nullable
              as int,
      futuresStrategyCount: null == futuresStrategyCount
          ? _value.futuresStrategyCount
          : futuresStrategyCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalStrategyCount: null == totalStrategyCount
          ? _value.totalStrategyCount
          : totalStrategyCount // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TraderItemImpl implements _TraderItem {
  const _$TraderItemImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'memberId') required this.memberId,
      @JsonKey(name: 'traderName') required this.traderName,
      @JsonKey(name: 'traderAvatar') required this.traderAvatar,
      @JsonKey(name: 'bio') required this.bio,
      @JsonKey(name: 'joinTime') required this.joinTime,
      @JsonKey(name: 'subscriberCount') required this.subscriberCount,
      @JsonKey(name: 'followerCount') required this.followerCount,
      @JsonKey(name: 'totalViews') required this.totalViews,
      @JsonKey(name: 'spotStrategyCount') required this.spotStrategyCount,
      @JsonKey(name: 'futuresStrategyCount') required this.futuresStrategyCount,
      @JsonKey(name: 'totalStrategyCount') required this.totalStrategyCount,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'createdAt') required this.createdAt});

  factory _$TraderItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$TraderItemImplFromJson(json);

  /// 交易员ID
  @override
  @JsonKey(name: 'id')
  final String id;

  /// 会员ID
  @override
  @JsonKey(name: 'memberId')
  final String memberId;

  /// 交易员名称
  @override
  @JsonKey(name: 'traderName')
  final String traderName;

  /// 交易员头像
  @override
  @JsonKey(name: 'traderAvatar')
  final String traderAvatar;

  /// 个人简介
  @override
  @JsonKey(name: 'bio')
  final String bio;

  /// 加入时间
  @override
  @JsonKey(name: 'joinTime')
  final String joinTime;

  /// 订阅者数量
  @override
  @JsonKey(name: 'subscriberCount')
  final int subscriberCount;

  /// 关注者数量
  @override
  @JsonKey(name: 'followerCount')
  final int followerCount;

  /// 总浏览量
  @override
  @JsonKey(name: 'totalViews')
  final String totalViews;

  /// 现货策略数量
  @override
  @JsonKey(name: 'spotStrategyCount')
  final int spotStrategyCount;

  /// 期货策略数量
  @override
  @JsonKey(name: 'futuresStrategyCount')
  final int futuresStrategyCount;

  /// 总策略数量
  @override
  @JsonKey(name: 'totalStrategyCount')
  final int totalStrategyCount;

  /// 状态
  @override
  @JsonKey(name: 'status')
  final int status;

  /// 创建时间
  @override
  @JsonKey(name: 'createdAt')
  final String createdAt;

  @override
  String toString() {
    return 'TraderItem(id: $id, memberId: $memberId, traderName: $traderName, traderAvatar: $traderAvatar, bio: $bio, joinTime: $joinTime, subscriberCount: $subscriberCount, followerCount: $followerCount, totalViews: $totalViews, spotStrategyCount: $spotStrategyCount, futuresStrategyCount: $futuresStrategyCount, totalStrategyCount: $totalStrategyCount, status: $status, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TraderItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.traderName, traderName) ||
                other.traderName == traderName) &&
            (identical(other.traderAvatar, traderAvatar) ||
                other.traderAvatar == traderAvatar) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.joinTime, joinTime) ||
                other.joinTime == joinTime) &&
            (identical(other.subscriberCount, subscriberCount) ||
                other.subscriberCount == subscriberCount) &&
            (identical(other.followerCount, followerCount) ||
                other.followerCount == followerCount) &&
            (identical(other.totalViews, totalViews) ||
                other.totalViews == totalViews) &&
            (identical(other.spotStrategyCount, spotStrategyCount) ||
                other.spotStrategyCount == spotStrategyCount) &&
            (identical(other.futuresStrategyCount, futuresStrategyCount) ||
                other.futuresStrategyCount == futuresStrategyCount) &&
            (identical(other.totalStrategyCount, totalStrategyCount) ||
                other.totalStrategyCount == totalStrategyCount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      memberId,
      traderName,
      traderAvatar,
      bio,
      joinTime,
      subscriberCount,
      followerCount,
      totalViews,
      spotStrategyCount,
      futuresStrategyCount,
      totalStrategyCount,
      status,
      createdAt);

  /// Create a copy of TraderItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TraderItemImplCopyWith<_$TraderItemImpl> get copyWith =>
      __$$TraderItemImplCopyWithImpl<_$TraderItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TraderItemImplToJson(
      this,
    );
  }
}

abstract class _TraderItem implements TraderItem {
  const factory _TraderItem(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'memberId') required final String memberId,
      @JsonKey(name: 'traderName') required final String traderName,
      @JsonKey(name: 'traderAvatar') required final String traderAvatar,
      @JsonKey(name: 'bio') required final String bio,
      @JsonKey(name: 'joinTime') required final String joinTime,
      @JsonKey(name: 'subscriberCount') required final int subscriberCount,
      @JsonKey(name: 'followerCount') required final int followerCount,
      @JsonKey(name: 'totalViews') required final String totalViews,
      @JsonKey(name: 'spotStrategyCount') required final int spotStrategyCount,
      @JsonKey(name: 'futuresStrategyCount')
      required final int futuresStrategyCount,
      @JsonKey(name: 'totalStrategyCount')
      required final int totalStrategyCount,
      @JsonKey(name: 'status') required final int status,
      @JsonKey(name: 'createdAt')
      required final String createdAt}) = _$TraderItemImpl;

  factory _TraderItem.fromJson(Map<String, dynamic> json) =
      _$TraderItemImpl.fromJson;

  /// 交易员ID
  @override
  @JsonKey(name: 'id')
  String get id;

  /// 会员ID
  @override
  @JsonKey(name: 'memberId')
  String get memberId;

  /// 交易员名称
  @override
  @JsonKey(name: 'traderName')
  String get traderName;

  /// 交易员头像
  @override
  @JsonKey(name: 'traderAvatar')
  String get traderAvatar;

  /// 个人简介
  @override
  @JsonKey(name: 'bio')
  String get bio;

  /// 加入时间
  @override
  @JsonKey(name: 'joinTime')
  String get joinTime;

  /// 订阅者数量
  @override
  @JsonKey(name: 'subscriberCount')
  int get subscriberCount;

  /// 关注者数量
  @override
  @JsonKey(name: 'followerCount')
  int get followerCount;

  /// 总浏览量
  @override
  @JsonKey(name: 'totalViews')
  String get totalViews;

  /// 现货策略数量
  @override
  @JsonKey(name: 'spotStrategyCount')
  int get spotStrategyCount;

  /// 期货策略数量
  @override
  @JsonKey(name: 'futuresStrategyCount')
  int get futuresStrategyCount;

  /// 总策略数量
  @override
  @JsonKey(name: 'totalStrategyCount')
  int get totalStrategyCount;

  /// 状态
  @override
  @JsonKey(name: 'status')
  int get status;

  /// 创建时间
  @override
  @JsonKey(name: 'createdAt')
  String get createdAt;

  /// Create a copy of TraderItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TraderItemImplCopyWith<_$TraderItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
