// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_list_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderRecord _$OrderRecordFromJson(Map<String, dynamic> json) {
  return _OrderRecord.fromJson(json);
}

/// @nodoc
mixin _$OrderRecord {
  String get orderId => throw _privateConstructorUsedError;
  String get orderNo => throw _privateConstructorUsedError;
  String get sellerName => throw _privateConstructorUsedError;
  double get totalAmount => throw _privateConstructorUsedError;
  double get payAmount => throw _privateConstructorUsedError;
  int get orderStatus => throw _privateConstructorUsedError;
  String get orderStatusText => throw _privateConstructorUsedError;
  String get productName => throw _privateConstructorUsedError;
  String get productPic => throw _privateConstructorUsedError;
  int get productCount => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get payTime => throw _privateConstructorUsedError;
  String get deliveryTime => throw _privateConstructorUsedError;
  String get receiveTime => throw _privateConstructorUsedError;
  String get cancelTime => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  String get buyerName => throw _privateConstructorUsedError;
  String get buyerAvatar => throw _privateConstructorUsedError;

  /// Serializes this OrderRecord to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderRecordCopyWith<OrderRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderRecordCopyWith<$Res> {
  factory $OrderRecordCopyWith(
          OrderRecord value, $Res Function(OrderRecord) then) =
      _$OrderRecordCopyWithImpl<$Res, OrderRecord>;
  @useResult
  $Res call(
      {String orderId,
      String orderNo,
      String sellerName,
      double totalAmount,
      double payAmount,
      int orderStatus,
      String orderStatusText,
      String productName,
      String productPic,
      int productCount,
      String createdAt,
      String payTime,
      String deliveryTime,
      String receiveTime,
      String cancelTime,
      String updatedAt,
      String buyerName,
      String buyerAvatar});
}

/// @nodoc
class _$OrderRecordCopyWithImpl<$Res, $Val extends OrderRecord>
    implements $OrderRecordCopyWith<$Res> {
  _$OrderRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? orderNo = null,
    Object? sellerName = null,
    Object? totalAmount = null,
    Object? payAmount = null,
    Object? orderStatus = null,
    Object? orderStatusText = null,
    Object? productName = null,
    Object? productPic = null,
    Object? productCount = null,
    Object? createdAt = null,
    Object? payTime = null,
    Object? deliveryTime = null,
    Object? receiveTime = null,
    Object? cancelTime = null,
    Object? updatedAt = null,
    Object? buyerName = null,
    Object? buyerAvatar = null,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      orderNo: null == orderNo
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as String,
      sellerName: null == sellerName
          ? _value.sellerName
          : sellerName // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      payAmount: null == payAmount
          ? _value.payAmount
          : payAmount // ignore: cast_nullable_to_non_nullable
              as double,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as int,
      orderStatusText: null == orderStatusText
          ? _value.orderStatusText
          : orderStatusText // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productPic: null == productPic
          ? _value.productPic
          : productPic // ignore: cast_nullable_to_non_nullable
              as String,
      productCount: null == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      payTime: null == payTime
          ? _value.payTime
          : payTime // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryTime: null == deliveryTime
          ? _value.deliveryTime
          : deliveryTime // ignore: cast_nullable_to_non_nullable
              as String,
      receiveTime: null == receiveTime
          ? _value.receiveTime
          : receiveTime // ignore: cast_nullable_to_non_nullable
              as String,
      cancelTime: null == cancelTime
          ? _value.cancelTime
          : cancelTime // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      buyerName: null == buyerName
          ? _value.buyerName
          : buyerName // ignore: cast_nullable_to_non_nullable
              as String,
      buyerAvatar: null == buyerAvatar
          ? _value.buyerAvatar
          : buyerAvatar // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderRecordImplCopyWith<$Res>
    implements $OrderRecordCopyWith<$Res> {
  factory _$$OrderRecordImplCopyWith(
          _$OrderRecordImpl value, $Res Function(_$OrderRecordImpl) then) =
      __$$OrderRecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String orderId,
      String orderNo,
      String sellerName,
      double totalAmount,
      double payAmount,
      int orderStatus,
      String orderStatusText,
      String productName,
      String productPic,
      int productCount,
      String createdAt,
      String payTime,
      String deliveryTime,
      String receiveTime,
      String cancelTime,
      String updatedAt,
      String buyerName,
      String buyerAvatar});
}

/// @nodoc
class __$$OrderRecordImplCopyWithImpl<$Res>
    extends _$OrderRecordCopyWithImpl<$Res, _$OrderRecordImpl>
    implements _$$OrderRecordImplCopyWith<$Res> {
  __$$OrderRecordImplCopyWithImpl(
      _$OrderRecordImpl _value, $Res Function(_$OrderRecordImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? orderNo = null,
    Object? sellerName = null,
    Object? totalAmount = null,
    Object? payAmount = null,
    Object? orderStatus = null,
    Object? orderStatusText = null,
    Object? productName = null,
    Object? productPic = null,
    Object? productCount = null,
    Object? createdAt = null,
    Object? payTime = null,
    Object? deliveryTime = null,
    Object? receiveTime = null,
    Object? cancelTime = null,
    Object? updatedAt = null,
    Object? buyerName = null,
    Object? buyerAvatar = null,
  }) {
    return _then(_$OrderRecordImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      orderNo: null == orderNo
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as String,
      sellerName: null == sellerName
          ? _value.sellerName
          : sellerName // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      payAmount: null == payAmount
          ? _value.payAmount
          : payAmount // ignore: cast_nullable_to_non_nullable
              as double,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as int,
      orderStatusText: null == orderStatusText
          ? _value.orderStatusText
          : orderStatusText // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productPic: null == productPic
          ? _value.productPic
          : productPic // ignore: cast_nullable_to_non_nullable
              as String,
      productCount: null == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      payTime: null == payTime
          ? _value.payTime
          : payTime // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryTime: null == deliveryTime
          ? _value.deliveryTime
          : deliveryTime // ignore: cast_nullable_to_non_nullable
              as String,
      receiveTime: null == receiveTime
          ? _value.receiveTime
          : receiveTime // ignore: cast_nullable_to_non_nullable
              as String,
      cancelTime: null == cancelTime
          ? _value.cancelTime
          : cancelTime // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      buyerName: null == buyerName
          ? _value.buyerName
          : buyerName // ignore: cast_nullable_to_non_nullable
              as String,
      buyerAvatar: null == buyerAvatar
          ? _value.buyerAvatar
          : buyerAvatar // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderRecordImpl implements _OrderRecord {
  const _$OrderRecordImpl(
      {required this.orderId,
      required this.orderNo,
      this.sellerName = "",
      required this.totalAmount,
      required this.payAmount,
      required this.orderStatus,
      required this.orderStatusText,
      required this.productName,
      this.productPic = "https://example.com/image.jpg",
      this.productCount = 1,
      required this.createdAt,
      this.payTime = "",
      this.deliveryTime = "",
      this.receiveTime = "",
      this.cancelTime = "",
      required this.updatedAt,
      this.buyerName = "",
      this.buyerAvatar = ""});

  factory _$OrderRecordImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderRecordImplFromJson(json);

  @override
  final String orderId;
  @override
  final String orderNo;
  @override
  @JsonKey()
  final String sellerName;
  @override
  final double totalAmount;
  @override
  final double payAmount;
  @override
  final int orderStatus;
  @override
  final String orderStatusText;
  @override
  final String productName;
  @override
  @JsonKey()
  final String productPic;
  @override
  @JsonKey()
  final int productCount;
  @override
  final String createdAt;
  @override
  @JsonKey()
  final String payTime;
  @override
  @JsonKey()
  final String deliveryTime;
  @override
  @JsonKey()
  final String receiveTime;
  @override
  @JsonKey()
  final String cancelTime;
  @override
  final String updatedAt;
  @override
  @JsonKey()
  final String buyerName;
  @override
  @JsonKey()
  final String buyerAvatar;

  @override
  String toString() {
    return 'OrderRecord(orderId: $orderId, orderNo: $orderNo, sellerName: $sellerName, totalAmount: $totalAmount, payAmount: $payAmount, orderStatus: $orderStatus, orderStatusText: $orderStatusText, productName: $productName, productPic: $productPic, productCount: $productCount, createdAt: $createdAt, payTime: $payTime, deliveryTime: $deliveryTime, receiveTime: $receiveTime, cancelTime: $cancelTime, updatedAt: $updatedAt, buyerName: $buyerName, buyerAvatar: $buyerAvatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderRecordImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.orderNo, orderNo) || other.orderNo == orderNo) &&
            (identical(other.sellerName, sellerName) ||
                other.sellerName == sellerName) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.payAmount, payAmount) ||
                other.payAmount == payAmount) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus) &&
            (identical(other.orderStatusText, orderStatusText) ||
                other.orderStatusText == orderStatusText) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productPic, productPic) ||
                other.productPic == productPic) &&
            (identical(other.productCount, productCount) ||
                other.productCount == productCount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.payTime, payTime) || other.payTime == payTime) &&
            (identical(other.deliveryTime, deliveryTime) ||
                other.deliveryTime == deliveryTime) &&
            (identical(other.receiveTime, receiveTime) ||
                other.receiveTime == receiveTime) &&
            (identical(other.cancelTime, cancelTime) ||
                other.cancelTime == cancelTime) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.buyerName, buyerName) ||
                other.buyerName == buyerName) &&
            (identical(other.buyerAvatar, buyerAvatar) ||
                other.buyerAvatar == buyerAvatar));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      orderId,
      orderNo,
      sellerName,
      totalAmount,
      payAmount,
      orderStatus,
      orderStatusText,
      productName,
      productPic,
      productCount,
      createdAt,
      payTime,
      deliveryTime,
      receiveTime,
      cancelTime,
      updatedAt,
      buyerName,
      buyerAvatar);

  /// Create a copy of OrderRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderRecordImplCopyWith<_$OrderRecordImpl> get copyWith =>
      __$$OrderRecordImplCopyWithImpl<_$OrderRecordImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderRecordImplToJson(
      this,
    );
  }
}

abstract class _OrderRecord implements OrderRecord {
  const factory _OrderRecord(
      {required final String orderId,
      required final String orderNo,
      final String sellerName,
      required final double totalAmount,
      required final double payAmount,
      required final int orderStatus,
      required final String orderStatusText,
      required final String productName,
      final String productPic,
      final int productCount,
      required final String createdAt,
      final String payTime,
      final String deliveryTime,
      final String receiveTime,
      final String cancelTime,
      required final String updatedAt,
      final String buyerName,
      final String buyerAvatar}) = _$OrderRecordImpl;

  factory _OrderRecord.fromJson(Map<String, dynamic> json) =
      _$OrderRecordImpl.fromJson;

  @override
  String get orderId;
  @override
  String get orderNo;
  @override
  String get sellerName;
  @override
  double get totalAmount;
  @override
  double get payAmount;
  @override
  int get orderStatus;
  @override
  String get orderStatusText;
  @override
  String get productName;
  @override
  String get productPic;
  @override
  int get productCount;
  @override
  String get createdAt;
  @override
  String get payTime;
  @override
  String get deliveryTime;
  @override
  String get receiveTime;
  @override
  String get cancelTime;
  @override
  String get updatedAt;
  @override
  String get buyerName;
  @override
  String get buyerAvatar;

  /// Create a copy of OrderRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderRecordImplCopyWith<_$OrderRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderListData _$OrderListDataFromJson(Map<String, dynamic> json) {
  return _OrderListData.fromJson(json);
}

/// @nodoc
mixin _$OrderListData {
  List<OrderRecord> get records => throw _privateConstructorUsedError;
  String get total => throw _privateConstructorUsedError;
  String get size => throw _privateConstructorUsedError;
  String get current => throw _privateConstructorUsedError;
  String get pages => throw _privateConstructorUsedError;
  bool get hasNext => throw _privateConstructorUsedError;
  bool get hasPrevious => throw _privateConstructorUsedError;
  bool get isEmpty => throw _privateConstructorUsedError;
  bool get isFirst => throw _privateConstructorUsedError;
  bool get isLast => throw _privateConstructorUsedError;

  /// Serializes this OrderListData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderListData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderListDataCopyWith<OrderListData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderListDataCopyWith<$Res> {
  factory $OrderListDataCopyWith(
          OrderListData value, $Res Function(OrderListData) then) =
      _$OrderListDataCopyWithImpl<$Res, OrderListData>;
  @useResult
  $Res call(
      {List<OrderRecord> records,
      String total,
      String size,
      String current,
      String pages,
      bool hasNext,
      bool hasPrevious,
      bool isEmpty,
      bool isFirst,
      bool isLast});
}

/// @nodoc
class _$OrderListDataCopyWithImpl<$Res, $Val extends OrderListData>
    implements $OrderListDataCopyWith<$Res> {
  _$OrderListDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderListData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
    Object? total = null,
    Object? size = null,
    Object? current = null,
    Object? pages = null,
    Object? hasNext = null,
    Object? hasPrevious = null,
    Object? isEmpty = null,
    Object? isFirst = null,
    Object? isLast = null,
  }) {
    return _then(_value.copyWith(
      records: null == records
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<OrderRecord>,
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
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as String,
      hasNext: null == hasNext
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPrevious: null == hasPrevious
          ? _value.hasPrevious
          : hasPrevious // ignore: cast_nullable_to_non_nullable
              as bool,
      isEmpty: null == isEmpty
          ? _value.isEmpty
          : isEmpty // ignore: cast_nullable_to_non_nullable
              as bool,
      isFirst: null == isFirst
          ? _value.isFirst
          : isFirst // ignore: cast_nullable_to_non_nullable
              as bool,
      isLast: null == isLast
          ? _value.isLast
          : isLast // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderListDataImplCopyWith<$Res>
    implements $OrderListDataCopyWith<$Res> {
  factory _$$OrderListDataImplCopyWith(
          _$OrderListDataImpl value, $Res Function(_$OrderListDataImpl) then) =
      __$$OrderListDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<OrderRecord> records,
      String total,
      String size,
      String current,
      String pages,
      bool hasNext,
      bool hasPrevious,
      bool isEmpty,
      bool isFirst,
      bool isLast});
}

/// @nodoc
class __$$OrderListDataImplCopyWithImpl<$Res>
    extends _$OrderListDataCopyWithImpl<$Res, _$OrderListDataImpl>
    implements _$$OrderListDataImplCopyWith<$Res> {
  __$$OrderListDataImplCopyWithImpl(
      _$OrderListDataImpl _value, $Res Function(_$OrderListDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderListData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
    Object? total = null,
    Object? size = null,
    Object? current = null,
    Object? pages = null,
    Object? hasNext = null,
    Object? hasPrevious = null,
    Object? isEmpty = null,
    Object? isFirst = null,
    Object? isLast = null,
  }) {
    return _then(_$OrderListDataImpl(
      records: null == records
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<OrderRecord>,
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
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as String,
      hasNext: null == hasNext
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPrevious: null == hasPrevious
          ? _value.hasPrevious
          : hasPrevious // ignore: cast_nullable_to_non_nullable
              as bool,
      isEmpty: null == isEmpty
          ? _value.isEmpty
          : isEmpty // ignore: cast_nullable_to_non_nullable
              as bool,
      isFirst: null == isFirst
          ? _value.isFirst
          : isFirst // ignore: cast_nullable_to_non_nullable
              as bool,
      isLast: null == isLast
          ? _value.isLast
          : isLast // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderListDataImpl implements _OrderListData {
  const _$OrderListDataImpl(
      {required final List<OrderRecord> records,
      required this.total,
      required this.size,
      required this.current,
      required this.pages,
      required this.hasNext,
      required this.hasPrevious,
      required this.isEmpty,
      required this.isFirst,
      required this.isLast})
      : _records = records;

  factory _$OrderListDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderListDataImplFromJson(json);

  final List<OrderRecord> _records;
  @override
  List<OrderRecord> get records {
    if (_records is EqualUnmodifiableListView) return _records;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_records);
  }

  @override
  final String total;
  @override
  final String size;
  @override
  final String current;
  @override
  final String pages;
  @override
  final bool hasNext;
  @override
  final bool hasPrevious;
  @override
  final bool isEmpty;
  @override
  final bool isFirst;
  @override
  final bool isLast;

  @override
  String toString() {
    return 'OrderListData(records: $records, total: $total, size: $size, current: $current, pages: $pages, hasNext: $hasNext, hasPrevious: $hasPrevious, isEmpty: $isEmpty, isFirst: $isFirst, isLast: $isLast)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderListDataImpl &&
            const DeepCollectionEquality().equals(other._records, _records) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext) &&
            (identical(other.hasPrevious, hasPrevious) ||
                other.hasPrevious == hasPrevious) &&
            (identical(other.isEmpty, isEmpty) || other.isEmpty == isEmpty) &&
            (identical(other.isFirst, isFirst) || other.isFirst == isFirst) &&
            (identical(other.isLast, isLast) || other.isLast == isLast));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_records),
      total,
      size,
      current,
      pages,
      hasNext,
      hasPrevious,
      isEmpty,
      isFirst,
      isLast);

  /// Create a copy of OrderListData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderListDataImplCopyWith<_$OrderListDataImpl> get copyWith =>
      __$$OrderListDataImplCopyWithImpl<_$OrderListDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderListDataImplToJson(
      this,
    );
  }
}

abstract class _OrderListData implements OrderListData {
  const factory _OrderListData(
      {required final List<OrderRecord> records,
      required final String total,
      required final String size,
      required final String current,
      required final String pages,
      required final bool hasNext,
      required final bool hasPrevious,
      required final bool isEmpty,
      required final bool isFirst,
      required final bool isLast}) = _$OrderListDataImpl;

  factory _OrderListData.fromJson(Map<String, dynamic> json) =
      _$OrderListDataImpl.fromJson;

  @override
  List<OrderRecord> get records;
  @override
  String get total;
  @override
  String get size;
  @override
  String get current;
  @override
  String get pages;
  @override
  bool get hasNext;
  @override
  bool get hasPrevious;
  @override
  bool get isEmpty;
  @override
  bool get isFirst;
  @override
  bool get isLast;

  /// Create a copy of OrderListData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderListDataImplCopyWith<_$OrderListDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderListResponse _$OrderListResponseFromJson(Map<String, dynamic> json) {
  return _OrderListResponse.fromJson(json);
}

/// @nodoc
mixin _$OrderListResponse {
  int get errCode => throw _privateConstructorUsedError;
  String get errMsg => throw _privateConstructorUsedError;
  OrderListData get data => throw _privateConstructorUsedError;

  /// Serializes this OrderListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderListResponseCopyWith<OrderListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderListResponseCopyWith<$Res> {
  factory $OrderListResponseCopyWith(
          OrderListResponse value, $Res Function(OrderListResponse) then) =
      _$OrderListResponseCopyWithImpl<$Res, OrderListResponse>;
  @useResult
  $Res call({int errCode, String errMsg, OrderListData data});

  $OrderListDataCopyWith<$Res> get data;
}

/// @nodoc
class _$OrderListResponseCopyWithImpl<$Res, $Val extends OrderListResponse>
    implements $OrderListResponseCopyWith<$Res> {
  _$OrderListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderListResponse
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
              as OrderListData,
    ) as $Val);
  }

  /// Create a copy of OrderListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderListDataCopyWith<$Res> get data {
    return $OrderListDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderListResponseImplCopyWith<$Res>
    implements $OrderListResponseCopyWith<$Res> {
  factory _$$OrderListResponseImplCopyWith(_$OrderListResponseImpl value,
          $Res Function(_$OrderListResponseImpl) then) =
      __$$OrderListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int errCode, String errMsg, OrderListData data});

  @override
  $OrderListDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$OrderListResponseImplCopyWithImpl<$Res>
    extends _$OrderListResponseCopyWithImpl<$Res, _$OrderListResponseImpl>
    implements _$$OrderListResponseImplCopyWith<$Res> {
  __$$OrderListResponseImplCopyWithImpl(_$OrderListResponseImpl _value,
      $Res Function(_$OrderListResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errCode = null,
    Object? errMsg = null,
    Object? data = null,
  }) {
    return _then(_$OrderListResponseImpl(
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
              as OrderListData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderListResponseImpl implements _OrderListResponse {
  const _$OrderListResponseImpl(
      {required this.errCode, required this.errMsg, required this.data});

  factory _$OrderListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderListResponseImplFromJson(json);

  @override
  final int errCode;
  @override
  final String errMsg;
  @override
  final OrderListData data;

  @override
  String toString() {
    return 'OrderListResponse(errCode: $errCode, errMsg: $errMsg, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderListResponseImpl &&
            (identical(other.errCode, errCode) || other.errCode == errCode) &&
            (identical(other.errMsg, errMsg) || other.errMsg == errMsg) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, errCode, errMsg, data);

  /// Create a copy of OrderListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderListResponseImplCopyWith<_$OrderListResponseImpl> get copyWith =>
      __$$OrderListResponseImplCopyWithImpl<_$OrderListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderListResponseImplToJson(
      this,
    );
  }
}

abstract class _OrderListResponse implements OrderListResponse {
  const factory _OrderListResponse(
      {required final int errCode,
      required final String errMsg,
      required final OrderListData data}) = _$OrderListResponseImpl;

  factory _OrderListResponse.fromJson(Map<String, dynamic> json) =
      _$OrderListResponseImpl.fromJson;

  @override
  int get errCode;
  @override
  String get errMsg;
  @override
  OrderListData get data;

  /// Create a copy of OrderListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderListResponseImplCopyWith<_$OrderListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
