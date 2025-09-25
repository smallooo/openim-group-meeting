// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'strategy_pagination_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StrategyPaginationData _$StrategyPaginationDataFromJson(
    Map<String, dynamic> json) {
  return _StrategyPaginationData.fromJson(json);
}

/// @nodoc
mixin _$StrategyPaginationData {
  /// 策略记录列表
  @JsonKey(name: 'records')
  List<StrategyItem> get records => throw _privateConstructorUsedError;

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
  List<Map<String, dynamic>> get orders => throw _privateConstructorUsedError;

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

  /// Serializes this StrategyPaginationData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StrategyPaginationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StrategyPaginationDataCopyWith<StrategyPaginationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StrategyPaginationDataCopyWith<$Res> {
  factory $StrategyPaginationDataCopyWith(StrategyPaginationData value,
          $Res Function(StrategyPaginationData) then) =
      _$StrategyPaginationDataCopyWithImpl<$Res, StrategyPaginationData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'records') List<StrategyItem> records,
      @JsonKey(name: 'total') String total,
      @JsonKey(name: 'size') String size,
      @JsonKey(name: 'current') String current,
      @JsonKey(name: 'orders') List<Map<String, dynamic>> orders,
      @JsonKey(name: 'optimizeCountSql') bool optimizeCountSql,
      @JsonKey(name: 'searchCount') bool searchCount,
      @JsonKey(name: 'maxLimit') String maxLimit,
      @JsonKey(name: 'countId') String countId,
      @JsonKey(name: 'pages') String pages});
}

/// @nodoc
class _$StrategyPaginationDataCopyWithImpl<$Res,
        $Val extends StrategyPaginationData>
    implements $StrategyPaginationDataCopyWith<$Res> {
  _$StrategyPaginationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StrategyPaginationData
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
              as List<StrategyItem>,
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
              as List<Map<String, dynamic>>,
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
abstract class _$$StrategyPaginationDataImplCopyWith<$Res>
    implements $StrategyPaginationDataCopyWith<$Res> {
  factory _$$StrategyPaginationDataImplCopyWith(
          _$StrategyPaginationDataImpl value,
          $Res Function(_$StrategyPaginationDataImpl) then) =
      __$$StrategyPaginationDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'records') List<StrategyItem> records,
      @JsonKey(name: 'total') String total,
      @JsonKey(name: 'size') String size,
      @JsonKey(name: 'current') String current,
      @JsonKey(name: 'orders') List<Map<String, dynamic>> orders,
      @JsonKey(name: 'optimizeCountSql') bool optimizeCountSql,
      @JsonKey(name: 'searchCount') bool searchCount,
      @JsonKey(name: 'maxLimit') String maxLimit,
      @JsonKey(name: 'countId') String countId,
      @JsonKey(name: 'pages') String pages});
}

/// @nodoc
class __$$StrategyPaginationDataImplCopyWithImpl<$Res>
    extends _$StrategyPaginationDataCopyWithImpl<$Res,
        _$StrategyPaginationDataImpl>
    implements _$$StrategyPaginationDataImplCopyWith<$Res> {
  __$$StrategyPaginationDataImplCopyWithImpl(
      _$StrategyPaginationDataImpl _value,
      $Res Function(_$StrategyPaginationDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of StrategyPaginationData
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
    return _then(_$StrategyPaginationDataImpl(
      records: null == records
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<StrategyItem>,
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
              as List<Map<String, dynamic>>,
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
class _$StrategyPaginationDataImpl implements _StrategyPaginationData {
  const _$StrategyPaginationDataImpl(
      {@JsonKey(name: 'records') required final List<StrategyItem> records,
      @JsonKey(name: 'total') required this.total,
      @JsonKey(name: 'size') required this.size,
      @JsonKey(name: 'current') required this.current,
      @JsonKey(name: 'orders') required final List<Map<String, dynamic>> orders,
      @JsonKey(name: 'optimizeCountSql') required this.optimizeCountSql,
      @JsonKey(name: 'searchCount') required this.searchCount,
      @JsonKey(name: 'maxLimit') required this.maxLimit,
      @JsonKey(name: 'countId') required this.countId,
      @JsonKey(name: 'pages') required this.pages})
      : _records = records,
        _orders = orders;

  factory _$StrategyPaginationDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$StrategyPaginationDataImplFromJson(json);

  /// 策略记录列表
  final List<StrategyItem> _records;

  /// 策略记录列表
  @override
  @JsonKey(name: 'records')
  List<StrategyItem> get records {
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
  final List<Map<String, dynamic>> _orders;

  /// 排序信息
  @override
  @JsonKey(name: 'orders')
  List<Map<String, dynamic>> get orders {
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
    return 'StrategyPaginationData(records: $records, total: $total, size: $size, current: $current, orders: $orders, optimizeCountSql: $optimizeCountSql, searchCount: $searchCount, maxLimit: $maxLimit, countId: $countId, pages: $pages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StrategyPaginationDataImpl &&
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

  /// Create a copy of StrategyPaginationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StrategyPaginationDataImplCopyWith<_$StrategyPaginationDataImpl>
      get copyWith => __$$StrategyPaginationDataImplCopyWithImpl<
          _$StrategyPaginationDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StrategyPaginationDataImplToJson(
      this,
    );
  }
}

abstract class _StrategyPaginationData implements StrategyPaginationData {
  const factory _StrategyPaginationData(
      {@JsonKey(name: 'records') required final List<StrategyItem> records,
      @JsonKey(name: 'total') required final String total,
      @JsonKey(name: 'size') required final String size,
      @JsonKey(name: 'current') required final String current,
      @JsonKey(name: 'orders') required final List<Map<String, dynamic>> orders,
      @JsonKey(name: 'optimizeCountSql') required final bool optimizeCountSql,
      @JsonKey(name: 'searchCount') required final bool searchCount,
      @JsonKey(name: 'maxLimit') required final String maxLimit,
      @JsonKey(name: 'countId') required final String countId,
      @JsonKey(name: 'pages')
      required final String pages}) = _$StrategyPaginationDataImpl;

  factory _StrategyPaginationData.fromJson(Map<String, dynamic> json) =
      _$StrategyPaginationDataImpl.fromJson;

  /// 策略记录列表
  @override
  @JsonKey(name: 'records')
  List<StrategyItem> get records;

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
  List<Map<String, dynamic>> get orders;

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

  /// Create a copy of StrategyPaginationData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StrategyPaginationDataImplCopyWith<_$StrategyPaginationDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
