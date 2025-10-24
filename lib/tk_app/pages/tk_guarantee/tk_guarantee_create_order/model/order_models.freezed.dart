// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderItem _$OrderItemFromJson(Map<String, dynamic> json) {
  return _OrderItem.fromJson(json);
}

/// @nodoc
mixin _$OrderItem {
  int get productId => throw _privateConstructorUsedError;
  int get skuId => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  String get productName => throw _privateConstructorUsedError;
  String get productImage => throw _privateConstructorUsedError;
  String get productDescription => throw _privateConstructorUsedError;
  double get unitPrice => throw _privateConstructorUsedError;
  double get totalPrice => throw _privateConstructorUsedError;
  double get originalPrice => throw _privateConstructorUsedError;
  String get skuAttributes => throw _privateConstructorUsedError;
  String get skuCode => throw _privateConstructorUsedError;
  String get productCode => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  double get weight => throw _privateConstructorUsedError;
  double get volume => throw _privateConstructorUsedError;

  /// Serializes this OrderItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderItemCopyWith<OrderItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemCopyWith<$Res> {
  factory $OrderItemCopyWith(OrderItem value, $Res Function(OrderItem) then) =
      _$OrderItemCopyWithImpl<$Res, OrderItem>;
  @useResult
  $Res call(
      {int productId,
      int skuId,
      int quantity,
      String productName,
      String productImage,
      String productDescription,
      double unitPrice,
      double totalPrice,
      double originalPrice,
      String skuAttributes,
      String skuCode,
      String productCode,
      String brand,
      String category,
      double weight,
      double volume});
}

/// @nodoc
class _$OrderItemCopyWithImpl<$Res, $Val extends OrderItem>
    implements $OrderItemCopyWith<$Res> {
  _$OrderItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? skuId = null,
    Object? quantity = null,
    Object? productName = null,
    Object? productImage = null,
    Object? productDescription = null,
    Object? unitPrice = null,
    Object? totalPrice = null,
    Object? originalPrice = null,
    Object? skuAttributes = null,
    Object? skuCode = null,
    Object? productCode = null,
    Object? brand = null,
    Object? category = null,
    Object? weight = null,
    Object? volume = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      skuId: null == skuId
          ? _value.skuId
          : skuId // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productImage: null == productImage
          ? _value.productImage
          : productImage // ignore: cast_nullable_to_non_nullable
              as String,
      productDescription: null == productDescription
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as String,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      originalPrice: null == originalPrice
          ? _value.originalPrice
          : originalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      skuAttributes: null == skuAttributes
          ? _value.skuAttributes
          : skuAttributes // ignore: cast_nullable_to_non_nullable
              as String,
      skuCode: null == skuCode
          ? _value.skuCode
          : skuCode // ignore: cast_nullable_to_non_nullable
              as String,
      productCode: null == productCode
          ? _value.productCode
          : productCode // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderItemImplCopyWith<$Res>
    implements $OrderItemCopyWith<$Res> {
  factory _$$OrderItemImplCopyWith(
          _$OrderItemImpl value, $Res Function(_$OrderItemImpl) then) =
      __$$OrderItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int productId,
      int skuId,
      int quantity,
      String productName,
      String productImage,
      String productDescription,
      double unitPrice,
      double totalPrice,
      double originalPrice,
      String skuAttributes,
      String skuCode,
      String productCode,
      String brand,
      String category,
      double weight,
      double volume});
}

/// @nodoc
class __$$OrderItemImplCopyWithImpl<$Res>
    extends _$OrderItemCopyWithImpl<$Res, _$OrderItemImpl>
    implements _$$OrderItemImplCopyWith<$Res> {
  __$$OrderItemImplCopyWithImpl(
      _$OrderItemImpl _value, $Res Function(_$OrderItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? skuId = null,
    Object? quantity = null,
    Object? productName = null,
    Object? productImage = null,
    Object? productDescription = null,
    Object? unitPrice = null,
    Object? totalPrice = null,
    Object? originalPrice = null,
    Object? skuAttributes = null,
    Object? skuCode = null,
    Object? productCode = null,
    Object? brand = null,
    Object? category = null,
    Object? weight = null,
    Object? volume = null,
  }) {
    return _then(_$OrderItemImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      skuId: null == skuId
          ? _value.skuId
          : skuId // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productImage: null == productImage
          ? _value.productImage
          : productImage // ignore: cast_nullable_to_non_nullable
              as String,
      productDescription: null == productDescription
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as String,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      originalPrice: null == originalPrice
          ? _value.originalPrice
          : originalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      skuAttributes: null == skuAttributes
          ? _value.skuAttributes
          : skuAttributes // ignore: cast_nullable_to_non_nullable
              as String,
      skuCode: null == skuCode
          ? _value.skuCode
          : skuCode // ignore: cast_nullable_to_non_nullable
              as String,
      productCode: null == productCode
          ? _value.productCode
          : productCode // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderItemImpl implements _OrderItem {
  const _$OrderItemImpl(
      {this.productId = 1001,
      this.skuId = 2001,
      this.quantity = 1,
      required this.productName,
      this.productImage = "https://example.com/image.jpg",
      required this.productDescription,
      required this.unitPrice,
      required this.totalPrice,
      required this.originalPrice,
      this.skuAttributes = "{\"color\":\"红色\",\"size\":\"L\"}",
      this.skuCode = "SKU001",
      this.productCode = "PROD001",
      this.brand = "Apple",
      required this.category,
      this.weight = 0.2,
      this.volume = 0.001});

  factory _$OrderItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderItemImplFromJson(json);

  @override
  @JsonKey()
  final int productId;
  @override
  @JsonKey()
  final int skuId;
  @override
  @JsonKey()
  final int quantity;
  @override
  final String productName;
  @override
  @JsonKey()
  final String productImage;
  @override
  final String productDescription;
  @override
  final double unitPrice;
  @override
  final double totalPrice;
  @override
  final double originalPrice;
  @override
  @JsonKey()
  final String skuAttributes;
  @override
  @JsonKey()
  final String skuCode;
  @override
  @JsonKey()
  final String productCode;
  @override
  @JsonKey()
  final String brand;
  @override
  final String category;
  @override
  @JsonKey()
  final double weight;
  @override
  @JsonKey()
  final double volume;

  @override
  String toString() {
    return 'OrderItem(productId: $productId, skuId: $skuId, quantity: $quantity, productName: $productName, productImage: $productImage, productDescription: $productDescription, unitPrice: $unitPrice, totalPrice: $totalPrice, originalPrice: $originalPrice, skuAttributes: $skuAttributes, skuCode: $skuCode, productCode: $productCode, brand: $brand, category: $category, weight: $weight, volume: $volume)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderItemImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.skuId, skuId) || other.skuId == skuId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productImage, productImage) ||
                other.productImage == productImage) &&
            (identical(other.productDescription, productDescription) ||
                other.productDescription == productDescription) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.originalPrice, originalPrice) ||
                other.originalPrice == originalPrice) &&
            (identical(other.skuAttributes, skuAttributes) ||
                other.skuAttributes == skuAttributes) &&
            (identical(other.skuCode, skuCode) || other.skuCode == skuCode) &&
            (identical(other.productCode, productCode) ||
                other.productCode == productCode) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.volume, volume) || other.volume == volume));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      productId,
      skuId,
      quantity,
      productName,
      productImage,
      productDescription,
      unitPrice,
      totalPrice,
      originalPrice,
      skuAttributes,
      skuCode,
      productCode,
      brand,
      category,
      weight,
      volume);

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderItemImplCopyWith<_$OrderItemImpl> get copyWith =>
      __$$OrderItemImplCopyWithImpl<_$OrderItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderItemImplToJson(
      this,
    );
  }
}

abstract class _OrderItem implements OrderItem {
  const factory _OrderItem(
      {final int productId,
      final int skuId,
      final int quantity,
      required final String productName,
      final String productImage,
      required final String productDescription,
      required final double unitPrice,
      required final double totalPrice,
      required final double originalPrice,
      final String skuAttributes,
      final String skuCode,
      final String productCode,
      final String brand,
      required final String category,
      final double weight,
      final double volume}) = _$OrderItemImpl;

  factory _OrderItem.fromJson(Map<String, dynamic> json) =
      _$OrderItemImpl.fromJson;

  @override
  int get productId;
  @override
  int get skuId;
  @override
  int get quantity;
  @override
  String get productName;
  @override
  String get productImage;
  @override
  String get productDescription;
  @override
  double get unitPrice;
  @override
  double get totalPrice;
  @override
  double get originalPrice;
  @override
  String get skuAttributes;
  @override
  String get skuCode;
  @override
  String get productCode;
  @override
  String get brand;
  @override
  String get category;
  @override
  double get weight;
  @override
  double get volume;

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderItemImplCopyWith<_$OrderItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateOrderRequest _$CreateOrderRequestFromJson(Map<String, dynamic> json) {
  return _CreateOrderRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateOrderRequest {
  String get userOpenimUserId => throw _privateConstructorUsedError;
  int get sellerId => throw _privateConstructorUsedError;
  String get sellerName => throw _privateConstructorUsedError;
  String get sellerOpenimUserId => throw _privateConstructorUsedError;
  String get serviceOpenimUserId => throw _privateConstructorUsedError;
  String get orderType => throw _privateConstructorUsedError;
  int get payType => throw _privateConstructorUsedError;
  String get paymentMethod => throw _privateConstructorUsedError;
  int get currencyId => throw _privateConstructorUsedError;
  String get remark => throw _privateConstructorUsedError;
  int get deliveryDays => throw _privateConstructorUsedError;
  String get guaranteeType => throw _privateConstructorUsedError;
  String get productType => throw _privateConstructorUsedError;
  double get totalAmount => throw _privateConstructorUsedError;
  double get payAmount => throw _privateConstructorUsedError;
  double get shippingFee => throw _privateConstructorUsedError;
  double get discountAmount => throw _privateConstructorUsedError;
  double get actualPaymentAmount => throw _privateConstructorUsedError;
  String get priceAdjustmentId => throw _privateConstructorUsedError;
  String get conversationId => throw _privateConstructorUsedError;
  int get customerServiceId => throw _privateConstructorUsedError;
  List<OrderItem> get orderItems => throw _privateConstructorUsedError;
  int get memberId => throw _privateConstructorUsedError;
  int get buyerId => throw _privateConstructorUsedError;

  /// Serializes this CreateOrderRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateOrderRequestCopyWith<CreateOrderRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateOrderRequestCopyWith<$Res> {
  factory $CreateOrderRequestCopyWith(
          CreateOrderRequest value, $Res Function(CreateOrderRequest) then) =
      _$CreateOrderRequestCopyWithImpl<$Res, CreateOrderRequest>;
  @useResult
  $Res call(
      {String userOpenimUserId,
      int sellerId,
      String sellerName,
      String sellerOpenimUserId,
      String serviceOpenimUserId,
      String orderType,
      int payType,
      String paymentMethod,
      int currencyId,
      String remark,
      int deliveryDays,
      String guaranteeType,
      String productType,
      double totalAmount,
      double payAmount,
      double shippingFee,
      double discountAmount,
      double actualPaymentAmount,
      String priceAdjustmentId,
      String conversationId,
      int customerServiceId,
      List<OrderItem> orderItems,
      int memberId,
      int buyerId});
}

/// @nodoc
class _$CreateOrderRequestCopyWithImpl<$Res, $Val extends CreateOrderRequest>
    implements $CreateOrderRequestCopyWith<$Res> {
  _$CreateOrderRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userOpenimUserId = null,
    Object? sellerId = null,
    Object? sellerName = null,
    Object? sellerOpenimUserId = null,
    Object? serviceOpenimUserId = null,
    Object? orderType = null,
    Object? payType = null,
    Object? paymentMethod = null,
    Object? currencyId = null,
    Object? remark = null,
    Object? deliveryDays = null,
    Object? guaranteeType = null,
    Object? productType = null,
    Object? totalAmount = null,
    Object? payAmount = null,
    Object? shippingFee = null,
    Object? discountAmount = null,
    Object? actualPaymentAmount = null,
    Object? priceAdjustmentId = null,
    Object? conversationId = null,
    Object? customerServiceId = null,
    Object? orderItems = null,
    Object? memberId = null,
    Object? buyerId = null,
  }) {
    return _then(_value.copyWith(
      userOpenimUserId: null == userOpenimUserId
          ? _value.userOpenimUserId
          : userOpenimUserId // ignore: cast_nullable_to_non_nullable
              as String,
      sellerId: null == sellerId
          ? _value.sellerId
          : sellerId // ignore: cast_nullable_to_non_nullable
              as int,
      sellerName: null == sellerName
          ? _value.sellerName
          : sellerName // ignore: cast_nullable_to_non_nullable
              as String,
      sellerOpenimUserId: null == sellerOpenimUserId
          ? _value.sellerOpenimUserId
          : sellerOpenimUserId // ignore: cast_nullable_to_non_nullable
              as String,
      serviceOpenimUserId: null == serviceOpenimUserId
          ? _value.serviceOpenimUserId
          : serviceOpenimUserId // ignore: cast_nullable_to_non_nullable
              as String,
      orderType: null == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String,
      payType: null == payType
          ? _value.payType
          : payType // ignore: cast_nullable_to_non_nullable
              as int,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      currencyId: null == currencyId
          ? _value.currencyId
          : currencyId // ignore: cast_nullable_to_non_nullable
              as int,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryDays: null == deliveryDays
          ? _value.deliveryDays
          : deliveryDays // ignore: cast_nullable_to_non_nullable
              as int,
      guaranteeType: null == guaranteeType
          ? _value.guaranteeType
          : guaranteeType // ignore: cast_nullable_to_non_nullable
              as String,
      productType: null == productType
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      payAmount: null == payAmount
          ? _value.payAmount
          : payAmount // ignore: cast_nullable_to_non_nullable
              as double,
      shippingFee: null == shippingFee
          ? _value.shippingFee
          : shippingFee // ignore: cast_nullable_to_non_nullable
              as double,
      discountAmount: null == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as double,
      actualPaymentAmount: null == actualPaymentAmount
          ? _value.actualPaymentAmount
          : actualPaymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      priceAdjustmentId: null == priceAdjustmentId
          ? _value.priceAdjustmentId
          : priceAdjustmentId // ignore: cast_nullable_to_non_nullable
              as String,
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String,
      customerServiceId: null == customerServiceId
          ? _value.customerServiceId
          : customerServiceId // ignore: cast_nullable_to_non_nullable
              as int,
      orderItems: null == orderItems
          ? _value.orderItems
          : orderItems // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      buyerId: null == buyerId
          ? _value.buyerId
          : buyerId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateOrderRequestImplCopyWith<$Res>
    implements $CreateOrderRequestCopyWith<$Res> {
  factory _$$CreateOrderRequestImplCopyWith(_$CreateOrderRequestImpl value,
          $Res Function(_$CreateOrderRequestImpl) then) =
      __$$CreateOrderRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userOpenimUserId,
      int sellerId,
      String sellerName,
      String sellerOpenimUserId,
      String serviceOpenimUserId,
      String orderType,
      int payType,
      String paymentMethod,
      int currencyId,
      String remark,
      int deliveryDays,
      String guaranteeType,
      String productType,
      double totalAmount,
      double payAmount,
      double shippingFee,
      double discountAmount,
      double actualPaymentAmount,
      String priceAdjustmentId,
      String conversationId,
      int customerServiceId,
      List<OrderItem> orderItems,
      int memberId,
      int buyerId});
}

/// @nodoc
class __$$CreateOrderRequestImplCopyWithImpl<$Res>
    extends _$CreateOrderRequestCopyWithImpl<$Res, _$CreateOrderRequestImpl>
    implements _$$CreateOrderRequestImplCopyWith<$Res> {
  __$$CreateOrderRequestImplCopyWithImpl(_$CreateOrderRequestImpl _value,
      $Res Function(_$CreateOrderRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userOpenimUserId = null,
    Object? sellerId = null,
    Object? sellerName = null,
    Object? sellerOpenimUserId = null,
    Object? serviceOpenimUserId = null,
    Object? orderType = null,
    Object? payType = null,
    Object? paymentMethod = null,
    Object? currencyId = null,
    Object? remark = null,
    Object? deliveryDays = null,
    Object? guaranteeType = null,
    Object? productType = null,
    Object? totalAmount = null,
    Object? payAmount = null,
    Object? shippingFee = null,
    Object? discountAmount = null,
    Object? actualPaymentAmount = null,
    Object? priceAdjustmentId = null,
    Object? conversationId = null,
    Object? customerServiceId = null,
    Object? orderItems = null,
    Object? memberId = null,
    Object? buyerId = null,
  }) {
    return _then(_$CreateOrderRequestImpl(
      userOpenimUserId: null == userOpenimUserId
          ? _value.userOpenimUserId
          : userOpenimUserId // ignore: cast_nullable_to_non_nullable
              as String,
      sellerId: null == sellerId
          ? _value.sellerId
          : sellerId // ignore: cast_nullable_to_non_nullable
              as int,
      sellerName: null == sellerName
          ? _value.sellerName
          : sellerName // ignore: cast_nullable_to_non_nullable
              as String,
      sellerOpenimUserId: null == sellerOpenimUserId
          ? _value.sellerOpenimUserId
          : sellerOpenimUserId // ignore: cast_nullable_to_non_nullable
              as String,
      serviceOpenimUserId: null == serviceOpenimUserId
          ? _value.serviceOpenimUserId
          : serviceOpenimUserId // ignore: cast_nullable_to_non_nullable
              as String,
      orderType: null == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String,
      payType: null == payType
          ? _value.payType
          : payType // ignore: cast_nullable_to_non_nullable
              as int,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      currencyId: null == currencyId
          ? _value.currencyId
          : currencyId // ignore: cast_nullable_to_non_nullable
              as int,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryDays: null == deliveryDays
          ? _value.deliveryDays
          : deliveryDays // ignore: cast_nullable_to_non_nullable
              as int,
      guaranteeType: null == guaranteeType
          ? _value.guaranteeType
          : guaranteeType // ignore: cast_nullable_to_non_nullable
              as String,
      productType: null == productType
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      payAmount: null == payAmount
          ? _value.payAmount
          : payAmount // ignore: cast_nullable_to_non_nullable
              as double,
      shippingFee: null == shippingFee
          ? _value.shippingFee
          : shippingFee // ignore: cast_nullable_to_non_nullable
              as double,
      discountAmount: null == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as double,
      actualPaymentAmount: null == actualPaymentAmount
          ? _value.actualPaymentAmount
          : actualPaymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      priceAdjustmentId: null == priceAdjustmentId
          ? _value.priceAdjustmentId
          : priceAdjustmentId // ignore: cast_nullable_to_non_nullable
              as String,
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String,
      customerServiceId: null == customerServiceId
          ? _value.customerServiceId
          : customerServiceId // ignore: cast_nullable_to_non_nullable
              as int,
      orderItems: null == orderItems
          ? _value._orderItems
          : orderItems // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      buyerId: null == buyerId
          ? _value.buyerId
          : buyerId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateOrderRequestImpl implements _CreateOrderRequest {
  const _$CreateOrderRequestImpl(
      {this.userOpenimUserId = "",
      this.sellerId = 1001,
      this.sellerName = "张三",
      this.sellerOpenimUserId = "",
      this.serviceOpenimUserId = "",
      this.orderType = "B2C",
      this.payType = 1,
      this.paymentMethod = "alipay",
      this.currencyId = 7,
      this.remark = "客服协助下单",
      this.deliveryDays = 3,
      this.guaranteeType = "escrow",
      this.productType = "physical",
      required this.totalAmount,
      required this.payAmount,
      this.shippingFee = 10,
      this.discountAmount = 20,
      required this.actualPaymentAmount,
      this.priceAdjustmentId = "adj_123456789",
      this.conversationId = "conv_123456789",
      this.customerServiceId = 0,
      required final List<OrderItem> orderItems,
      this.memberId = 0,
      this.buyerId = 0})
      : _orderItems = orderItems;

  factory _$CreateOrderRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateOrderRequestImplFromJson(json);

  @override
  @JsonKey()
  final String userOpenimUserId;
  @override
  @JsonKey()
  final int sellerId;
  @override
  @JsonKey()
  final String sellerName;
  @override
  @JsonKey()
  final String sellerOpenimUserId;
  @override
  @JsonKey()
  final String serviceOpenimUserId;
  @override
  @JsonKey()
  final String orderType;
  @override
  @JsonKey()
  final int payType;
  @override
  @JsonKey()
  final String paymentMethod;
  @override
  @JsonKey()
  final int currencyId;
  @override
  @JsonKey()
  final String remark;
  @override
  @JsonKey()
  final int deliveryDays;
  @override
  @JsonKey()
  final String guaranteeType;
  @override
  @JsonKey()
  final String productType;
  @override
  final double totalAmount;
  @override
  final double payAmount;
  @override
  @JsonKey()
  final double shippingFee;
  @override
  @JsonKey()
  final double discountAmount;
  @override
  final double actualPaymentAmount;
  @override
  @JsonKey()
  final String priceAdjustmentId;
  @override
  @JsonKey()
  final String conversationId;
  @override
  @JsonKey()
  final int customerServiceId;
  final List<OrderItem> _orderItems;
  @override
  List<OrderItem> get orderItems {
    if (_orderItems is EqualUnmodifiableListView) return _orderItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderItems);
  }

  @override
  @JsonKey()
  final int memberId;
  @override
  @JsonKey()
  final int buyerId;

  @override
  String toString() {
    return 'CreateOrderRequest(userOpenimUserId: $userOpenimUserId, sellerId: $sellerId, sellerName: $sellerName, sellerOpenimUserId: $sellerOpenimUserId, serviceOpenimUserId: $serviceOpenimUserId, orderType: $orderType, payType: $payType, paymentMethod: $paymentMethod, currencyId: $currencyId, remark: $remark, deliveryDays: $deliveryDays, guaranteeType: $guaranteeType, productType: $productType, totalAmount: $totalAmount, payAmount: $payAmount, shippingFee: $shippingFee, discountAmount: $discountAmount, actualPaymentAmount: $actualPaymentAmount, priceAdjustmentId: $priceAdjustmentId, conversationId: $conversationId, customerServiceId: $customerServiceId, orderItems: $orderItems, memberId: $memberId, buyerId: $buyerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateOrderRequestImpl &&
            (identical(other.userOpenimUserId, userOpenimUserId) ||
                other.userOpenimUserId == userOpenimUserId) &&
            (identical(other.sellerId, sellerId) ||
                other.sellerId == sellerId) &&
            (identical(other.sellerName, sellerName) ||
                other.sellerName == sellerName) &&
            (identical(other.sellerOpenimUserId, sellerOpenimUserId) ||
                other.sellerOpenimUserId == sellerOpenimUserId) &&
            (identical(other.serviceOpenimUserId, serviceOpenimUserId) ||
                other.serviceOpenimUserId == serviceOpenimUserId) &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType) &&
            (identical(other.payType, payType) || other.payType == payType) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.currencyId, currencyId) ||
                other.currencyId == currencyId) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.deliveryDays, deliveryDays) ||
                other.deliveryDays == deliveryDays) &&
            (identical(other.guaranteeType, guaranteeType) ||
                other.guaranteeType == guaranteeType) &&
            (identical(other.productType, productType) ||
                other.productType == productType) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.payAmount, payAmount) ||
                other.payAmount == payAmount) &&
            (identical(other.shippingFee, shippingFee) ||
                other.shippingFee == shippingFee) &&
            (identical(other.discountAmount, discountAmount) ||
                other.discountAmount == discountAmount) &&
            (identical(other.actualPaymentAmount, actualPaymentAmount) ||
                other.actualPaymentAmount == actualPaymentAmount) &&
            (identical(other.priceAdjustmentId, priceAdjustmentId) ||
                other.priceAdjustmentId == priceAdjustmentId) &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.customerServiceId, customerServiceId) ||
                other.customerServiceId == customerServiceId) &&
            const DeepCollectionEquality()
                .equals(other._orderItems, _orderItems) &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.buyerId, buyerId) || other.buyerId == buyerId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        userOpenimUserId,
        sellerId,
        sellerName,
        sellerOpenimUserId,
        serviceOpenimUserId,
        orderType,
        payType,
        paymentMethod,
        currencyId,
        remark,
        deliveryDays,
        guaranteeType,
        productType,
        totalAmount,
        payAmount,
        shippingFee,
        discountAmount,
        actualPaymentAmount,
        priceAdjustmentId,
        conversationId,
        customerServiceId,
        const DeepCollectionEquality().hash(_orderItems),
        memberId,
        buyerId
      ]);

  /// Create a copy of CreateOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateOrderRequestImplCopyWith<_$CreateOrderRequestImpl> get copyWith =>
      __$$CreateOrderRequestImplCopyWithImpl<_$CreateOrderRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateOrderRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateOrderRequest implements CreateOrderRequest {
  const factory _CreateOrderRequest(
      {final String userOpenimUserId,
      final int sellerId,
      final String sellerName,
      final String sellerOpenimUserId,
      final String serviceOpenimUserId,
      final String orderType,
      final int payType,
      final String paymentMethod,
      final int currencyId,
      final String remark,
      final int deliveryDays,
      final String guaranteeType,
      final String productType,
      required final double totalAmount,
      required final double payAmount,
      final double shippingFee,
      final double discountAmount,
      required final double actualPaymentAmount,
      final String priceAdjustmentId,
      final String conversationId,
      final int customerServiceId,
      required final List<OrderItem> orderItems,
      final int memberId,
      final int buyerId}) = _$CreateOrderRequestImpl;

  factory _CreateOrderRequest.fromJson(Map<String, dynamic> json) =
      _$CreateOrderRequestImpl.fromJson;

  @override
  String get userOpenimUserId;
  @override
  int get sellerId;
  @override
  String get sellerName;
  @override
  String get sellerOpenimUserId;
  @override
  String get serviceOpenimUserId;
  @override
  String get orderType;
  @override
  int get payType;
  @override
  String get paymentMethod;
  @override
  int get currencyId;
  @override
  String get remark;
  @override
  int get deliveryDays;
  @override
  String get guaranteeType;
  @override
  String get productType;
  @override
  double get totalAmount;
  @override
  double get payAmount;
  @override
  double get shippingFee;
  @override
  double get discountAmount;
  @override
  double get actualPaymentAmount;
  @override
  String get priceAdjustmentId;
  @override
  String get conversationId;
  @override
  int get customerServiceId;
  @override
  List<OrderItem> get orderItems;
  @override
  int get memberId;
  @override
  int get buyerId;

  /// Create a copy of CreateOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateOrderRequestImplCopyWith<_$CreateOrderRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderData _$OrderDataFromJson(Map<String, dynamic> json) {
  return _OrderData.fromJson(json);
}

/// @nodoc
mixin _$OrderData {
  String get orderId => throw _privateConstructorUsedError;
  String get orderNo => throw _privateConstructorUsedError;
  double get totalAmount => throw _privateConstructorUsedError;
  double get payAmount => throw _privateConstructorUsedError;
  int get payType => throw _privateConstructorUsedError;
  String get paymentMethod => throw _privateConstructorUsedError;
  int get orderStatus => throw _privateConstructorUsedError;
  String get orderStatusText => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get paymentLink => throw _privateConstructorUsedError;
  String get expireTime => throw _privateConstructorUsedError;

  /// Serializes this OrderData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderDataCopyWith<OrderData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDataCopyWith<$Res> {
  factory $OrderDataCopyWith(OrderData value, $Res Function(OrderData) then) =
      _$OrderDataCopyWithImpl<$Res, OrderData>;
  @useResult
  $Res call(
      {String orderId,
      String orderNo,
      double totalAmount,
      double payAmount,
      int payType,
      String paymentMethod,
      int orderStatus,
      String orderStatusText,
      String createdAt,
      String paymentLink,
      String expireTime});
}

/// @nodoc
class _$OrderDataCopyWithImpl<$Res, $Val extends OrderData>
    implements $OrderDataCopyWith<$Res> {
  _$OrderDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? orderNo = null,
    Object? totalAmount = null,
    Object? payAmount = null,
    Object? payType = null,
    Object? paymentMethod = null,
    Object? orderStatus = null,
    Object? orderStatusText = null,
    Object? createdAt = null,
    Object? paymentLink = null,
    Object? expireTime = null,
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
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      payAmount: null == payAmount
          ? _value.payAmount
          : payAmount // ignore: cast_nullable_to_non_nullable
              as double,
      payType: null == payType
          ? _value.payType
          : payType // ignore: cast_nullable_to_non_nullable
              as int,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as int,
      orderStatusText: null == orderStatusText
          ? _value.orderStatusText
          : orderStatusText // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      paymentLink: null == paymentLink
          ? _value.paymentLink
          : paymentLink // ignore: cast_nullable_to_non_nullable
              as String,
      expireTime: null == expireTime
          ? _value.expireTime
          : expireTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderDataImplCopyWith<$Res>
    implements $OrderDataCopyWith<$Res> {
  factory _$$OrderDataImplCopyWith(
          _$OrderDataImpl value, $Res Function(_$OrderDataImpl) then) =
      __$$OrderDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String orderId,
      String orderNo,
      double totalAmount,
      double payAmount,
      int payType,
      String paymentMethod,
      int orderStatus,
      String orderStatusText,
      String createdAt,
      String paymentLink,
      String expireTime});
}

/// @nodoc
class __$$OrderDataImplCopyWithImpl<$Res>
    extends _$OrderDataCopyWithImpl<$Res, _$OrderDataImpl>
    implements _$$OrderDataImplCopyWith<$Res> {
  __$$OrderDataImplCopyWithImpl(
      _$OrderDataImpl _value, $Res Function(_$OrderDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? orderNo = null,
    Object? totalAmount = null,
    Object? payAmount = null,
    Object? payType = null,
    Object? paymentMethod = null,
    Object? orderStatus = null,
    Object? orderStatusText = null,
    Object? createdAt = null,
    Object? paymentLink = null,
    Object? expireTime = null,
  }) {
    return _then(_$OrderDataImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      orderNo: null == orderNo
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      payAmount: null == payAmount
          ? _value.payAmount
          : payAmount // ignore: cast_nullable_to_non_nullable
              as double,
      payType: null == payType
          ? _value.payType
          : payType // ignore: cast_nullable_to_non_nullable
              as int,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as int,
      orderStatusText: null == orderStatusText
          ? _value.orderStatusText
          : orderStatusText // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      paymentLink: null == paymentLink
          ? _value.paymentLink
          : paymentLink // ignore: cast_nullable_to_non_nullable
              as String,
      expireTime: null == expireTime
          ? _value.expireTime
          : expireTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderDataImpl implements _OrderData {
  const _$OrderDataImpl(
      {required this.orderId,
      required this.orderNo,
      required this.totalAmount,
      required this.payAmount,
      required this.payType,
      required this.paymentMethod,
      required this.orderStatus,
      required this.orderStatusText,
      required this.createdAt,
      required this.paymentLink,
      required this.expireTime});

  factory _$OrderDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderDataImplFromJson(json);

  @override
  final String orderId;
  @override
  final String orderNo;
  @override
  final double totalAmount;
  @override
  final double payAmount;
  @override
  final int payType;
  @override
  final String paymentMethod;
  @override
  final int orderStatus;
  @override
  final String orderStatusText;
  @override
  final String createdAt;
  @override
  final String paymentLink;
  @override
  final String expireTime;

  @override
  String toString() {
    return 'OrderData(orderId: $orderId, orderNo: $orderNo, totalAmount: $totalAmount, payAmount: $payAmount, payType: $payType, paymentMethod: $paymentMethod, orderStatus: $orderStatus, orderStatusText: $orderStatusText, createdAt: $createdAt, paymentLink: $paymentLink, expireTime: $expireTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderDataImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.orderNo, orderNo) || other.orderNo == orderNo) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.payAmount, payAmount) ||
                other.payAmount == payAmount) &&
            (identical(other.payType, payType) || other.payType == payType) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus) &&
            (identical(other.orderStatusText, orderStatusText) ||
                other.orderStatusText == orderStatusText) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.paymentLink, paymentLink) ||
                other.paymentLink == paymentLink) &&
            (identical(other.expireTime, expireTime) ||
                other.expireTime == expireTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      orderId,
      orderNo,
      totalAmount,
      payAmount,
      payType,
      paymentMethod,
      orderStatus,
      orderStatusText,
      createdAt,
      paymentLink,
      expireTime);

  /// Create a copy of OrderData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderDataImplCopyWith<_$OrderDataImpl> get copyWith =>
      __$$OrderDataImplCopyWithImpl<_$OrderDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderDataImplToJson(
      this,
    );
  }
}

abstract class _OrderData implements OrderData {
  const factory _OrderData(
      {required final String orderId,
      required final String orderNo,
      required final double totalAmount,
      required final double payAmount,
      required final int payType,
      required final String paymentMethod,
      required final int orderStatus,
      required final String orderStatusText,
      required final String createdAt,
      required final String paymentLink,
      required final String expireTime}) = _$OrderDataImpl;

  factory _OrderData.fromJson(Map<String, dynamic> json) =
      _$OrderDataImpl.fromJson;

  @override
  String get orderId;
  @override
  String get orderNo;
  @override
  double get totalAmount;
  @override
  double get payAmount;
  @override
  int get payType;
  @override
  String get paymentMethod;
  @override
  int get orderStatus;
  @override
  String get orderStatusText;
  @override
  String get createdAt;
  @override
  String get paymentLink;
  @override
  String get expireTime;

  /// Create a copy of OrderData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderDataImplCopyWith<_$OrderDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateOrderResponse _$CreateOrderResponseFromJson(Map<String, dynamic> json) {
  return _CreateOrderResponse.fromJson(json);
}

/// @nodoc
mixin _$CreateOrderResponse {
  int get errCode => throw _privateConstructorUsedError;
  String get errMsg => throw _privateConstructorUsedError;
  OrderData get data => throw _privateConstructorUsedError;

  /// Serializes this CreateOrderResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateOrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateOrderResponseCopyWith<CreateOrderResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateOrderResponseCopyWith<$Res> {
  factory $CreateOrderResponseCopyWith(
          CreateOrderResponse value, $Res Function(CreateOrderResponse) then) =
      _$CreateOrderResponseCopyWithImpl<$Res, CreateOrderResponse>;
  @useResult
  $Res call({int errCode, String errMsg, OrderData data});

  $OrderDataCopyWith<$Res> get data;
}

/// @nodoc
class _$CreateOrderResponseCopyWithImpl<$Res, $Val extends CreateOrderResponse>
    implements $CreateOrderResponseCopyWith<$Res> {
  _$CreateOrderResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateOrderResponse
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
              as OrderData,
    ) as $Val);
  }

  /// Create a copy of CreateOrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderDataCopyWith<$Res> get data {
    return $OrderDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateOrderResponseImplCopyWith<$Res>
    implements $CreateOrderResponseCopyWith<$Res> {
  factory _$$CreateOrderResponseImplCopyWith(_$CreateOrderResponseImpl value,
          $Res Function(_$CreateOrderResponseImpl) then) =
      __$$CreateOrderResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int errCode, String errMsg, OrderData data});

  @override
  $OrderDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$CreateOrderResponseImplCopyWithImpl<$Res>
    extends _$CreateOrderResponseCopyWithImpl<$Res, _$CreateOrderResponseImpl>
    implements _$$CreateOrderResponseImplCopyWith<$Res> {
  __$$CreateOrderResponseImplCopyWithImpl(_$CreateOrderResponseImpl _value,
      $Res Function(_$CreateOrderResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateOrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errCode = null,
    Object? errMsg = null,
    Object? data = null,
  }) {
    return _then(_$CreateOrderResponseImpl(
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
              as OrderData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateOrderResponseImpl implements _CreateOrderResponse {
  const _$CreateOrderResponseImpl(
      {required this.errCode, required this.errMsg, required this.data});

  factory _$CreateOrderResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateOrderResponseImplFromJson(json);

  @override
  final int errCode;
  @override
  final String errMsg;
  @override
  final OrderData data;

  @override
  String toString() {
    return 'CreateOrderResponse(errCode: $errCode, errMsg: $errMsg, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateOrderResponseImpl &&
            (identical(other.errCode, errCode) || other.errCode == errCode) &&
            (identical(other.errMsg, errMsg) || other.errMsg == errMsg) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, errCode, errMsg, data);

  /// Create a copy of CreateOrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateOrderResponseImplCopyWith<_$CreateOrderResponseImpl> get copyWith =>
      __$$CreateOrderResponseImplCopyWithImpl<_$CreateOrderResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateOrderResponseImplToJson(
      this,
    );
  }
}

abstract class _CreateOrderResponse implements CreateOrderResponse {
  const factory _CreateOrderResponse(
      {required final int errCode,
      required final String errMsg,
      required final OrderData data}) = _$CreateOrderResponseImpl;

  factory _CreateOrderResponse.fromJson(Map<String, dynamic> json) =
      _$CreateOrderResponseImpl.fromJson;

  @override
  int get errCode;
  @override
  String get errMsg;
  @override
  OrderData get data;

  /// Create a copy of CreateOrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateOrderResponseImplCopyWith<_$CreateOrderResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentData _$PaymentDataFromJson(Map<String, dynamic> json) {
  return _PaymentData.fromJson(json);
}

/// @nodoc
mixin _$PaymentData {
  String get id => throw _privateConstructorUsedError;
  String get paymentId => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  int get payType => throw _privateConstructorUsedError;
  String get paymentMethod => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get statusText => throw _privateConstructorUsedError;
  String get transactionId => throw _privateConstructorUsedError;
  String get paymentUrl => throw _privateConstructorUsedError;
  String get qrCode => throw _privateConstructorUsedError;
  String get payTime => throw _privateConstructorUsedError;
  String get expireTime => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  String get thirdPartyOrderNo => throw _privateConstructorUsedError;

  /// Serializes this PaymentData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentDataCopyWith<PaymentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentDataCopyWith<$Res> {
  factory $PaymentDataCopyWith(
          PaymentData value, $Res Function(PaymentData) then) =
      _$PaymentDataCopyWithImpl<$Res, PaymentData>;
  @useResult
  $Res call(
      {String id,
      String paymentId,
      double amount,
      int payType,
      String paymentMethod,
      String status,
      String statusText,
      String transactionId,
      String paymentUrl,
      String qrCode,
      String payTime,
      String expireTime,
      String createdAt,
      String updatedAt,
      String thirdPartyOrderNo});
}

/// @nodoc
class _$PaymentDataCopyWithImpl<$Res, $Val extends PaymentData>
    implements $PaymentDataCopyWith<$Res> {
  _$PaymentDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? paymentId = null,
    Object? amount = null,
    Object? payType = null,
    Object? paymentMethod = null,
    Object? status = null,
    Object? statusText = null,
    Object? transactionId = null,
    Object? paymentUrl = null,
    Object? qrCode = null,
    Object? payTime = null,
    Object? expireTime = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? thirdPartyOrderNo = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      paymentId: null == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      payType: null == payType
          ? _value.payType
          : payType // ignore: cast_nullable_to_non_nullable
              as int,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      statusText: null == statusText
          ? _value.statusText
          : statusText // ignore: cast_nullable_to_non_nullable
              as String,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentUrl: null == paymentUrl
          ? _value.paymentUrl
          : paymentUrl // ignore: cast_nullable_to_non_nullable
              as String,
      qrCode: null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
      payTime: null == payTime
          ? _value.payTime
          : payTime // ignore: cast_nullable_to_non_nullable
              as String,
      expireTime: null == expireTime
          ? _value.expireTime
          : expireTime // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      thirdPartyOrderNo: null == thirdPartyOrderNo
          ? _value.thirdPartyOrderNo
          : thirdPartyOrderNo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentDataImplCopyWith<$Res>
    implements $PaymentDataCopyWith<$Res> {
  factory _$$PaymentDataImplCopyWith(
          _$PaymentDataImpl value, $Res Function(_$PaymentDataImpl) then) =
      __$$PaymentDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String paymentId,
      double amount,
      int payType,
      String paymentMethod,
      String status,
      String statusText,
      String transactionId,
      String paymentUrl,
      String qrCode,
      String payTime,
      String expireTime,
      String createdAt,
      String updatedAt,
      String thirdPartyOrderNo});
}

/// @nodoc
class __$$PaymentDataImplCopyWithImpl<$Res>
    extends _$PaymentDataCopyWithImpl<$Res, _$PaymentDataImpl>
    implements _$$PaymentDataImplCopyWith<$Res> {
  __$$PaymentDataImplCopyWithImpl(
      _$PaymentDataImpl _value, $Res Function(_$PaymentDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? paymentId = null,
    Object? amount = null,
    Object? payType = null,
    Object? paymentMethod = null,
    Object? status = null,
    Object? statusText = null,
    Object? transactionId = null,
    Object? paymentUrl = null,
    Object? qrCode = null,
    Object? payTime = null,
    Object? expireTime = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? thirdPartyOrderNo = null,
  }) {
    return _then(_$PaymentDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      paymentId: null == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      payType: null == payType
          ? _value.payType
          : payType // ignore: cast_nullable_to_non_nullable
              as int,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      statusText: null == statusText
          ? _value.statusText
          : statusText // ignore: cast_nullable_to_non_nullable
              as String,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentUrl: null == paymentUrl
          ? _value.paymentUrl
          : paymentUrl // ignore: cast_nullable_to_non_nullable
              as String,
      qrCode: null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
      payTime: null == payTime
          ? _value.payTime
          : payTime // ignore: cast_nullable_to_non_nullable
              as String,
      expireTime: null == expireTime
          ? _value.expireTime
          : expireTime // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      thirdPartyOrderNo: null == thirdPartyOrderNo
          ? _value.thirdPartyOrderNo
          : thirdPartyOrderNo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentDataImpl implements _PaymentData {
  const _$PaymentDataImpl(
      {required this.id,
      required this.paymentId,
      required this.amount,
      required this.payType,
      required this.paymentMethod,
      required this.status,
      required this.statusText,
      required this.transactionId,
      required this.paymentUrl,
      required this.qrCode,
      required this.payTime,
      required this.expireTime,
      required this.createdAt,
      required this.updatedAt,
      required this.thirdPartyOrderNo});

  factory _$PaymentDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentDataImplFromJson(json);

  @override
  final String id;
  @override
  final String paymentId;
  @override
  final double amount;
  @override
  final int payType;
  @override
  final String paymentMethod;
  @override
  final String status;
  @override
  final String statusText;
  @override
  final String transactionId;
  @override
  final String paymentUrl;
  @override
  final String qrCode;
  @override
  final String payTime;
  @override
  final String expireTime;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final String thirdPartyOrderNo;

  @override
  String toString() {
    return 'PaymentData(id: $id, paymentId: $paymentId, amount: $amount, payType: $payType, paymentMethod: $paymentMethod, status: $status, statusText: $statusText, transactionId: $transactionId, paymentUrl: $paymentUrl, qrCode: $qrCode, payTime: $payTime, expireTime: $expireTime, createdAt: $createdAt, updatedAt: $updatedAt, thirdPartyOrderNo: $thirdPartyOrderNo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.payType, payType) || other.payType == payType) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusText, statusText) ||
                other.statusText == statusText) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.paymentUrl, paymentUrl) ||
                other.paymentUrl == paymentUrl) &&
            (identical(other.qrCode, qrCode) || other.qrCode == qrCode) &&
            (identical(other.payTime, payTime) || other.payTime == payTime) &&
            (identical(other.expireTime, expireTime) ||
                other.expireTime == expireTime) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.thirdPartyOrderNo, thirdPartyOrderNo) ||
                other.thirdPartyOrderNo == thirdPartyOrderNo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      paymentId,
      amount,
      payType,
      paymentMethod,
      status,
      statusText,
      transactionId,
      paymentUrl,
      qrCode,
      payTime,
      expireTime,
      createdAt,
      updatedAt,
      thirdPartyOrderNo);

  /// Create a copy of PaymentData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentDataImplCopyWith<_$PaymentDataImpl> get copyWith =>
      __$$PaymentDataImplCopyWithImpl<_$PaymentDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentDataImplToJson(
      this,
    );
  }
}

abstract class _PaymentData implements PaymentData {
  const factory _PaymentData(
      {required final String id,
      required final String paymentId,
      required final double amount,
      required final int payType,
      required final String paymentMethod,
      required final String status,
      required final String statusText,
      required final String transactionId,
      required final String paymentUrl,
      required final String qrCode,
      required final String payTime,
      required final String expireTime,
      required final String createdAt,
      required final String updatedAt,
      required final String thirdPartyOrderNo}) = _$PaymentDataImpl;

  factory _PaymentData.fromJson(Map<String, dynamic> json) =
      _$PaymentDataImpl.fromJson;

  @override
  String get id;
  @override
  String get paymentId;
  @override
  double get amount;
  @override
  int get payType;
  @override
  String get paymentMethod;
  @override
  String get status;
  @override
  String get statusText;
  @override
  String get transactionId;
  @override
  String get paymentUrl;
  @override
  String get qrCode;
  @override
  String get payTime;
  @override
  String get expireTime;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get thirdPartyOrderNo;

  /// Create a copy of PaymentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentDataImplCopyWith<_$PaymentDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentResponse _$PaymentResponseFromJson(Map<String, dynamic> json) {
  return _PaymentResponse.fromJson(json);
}

/// @nodoc
mixin _$PaymentResponse {
  int get errCode => throw _privateConstructorUsedError;
  String get errMsg => throw _privateConstructorUsedError;
  PaymentData get data => throw _privateConstructorUsedError;

  /// Serializes this PaymentResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentResponseCopyWith<PaymentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentResponseCopyWith<$Res> {
  factory $PaymentResponseCopyWith(
          PaymentResponse value, $Res Function(PaymentResponse) then) =
      _$PaymentResponseCopyWithImpl<$Res, PaymentResponse>;
  @useResult
  $Res call({int errCode, String errMsg, PaymentData data});

  $PaymentDataCopyWith<$Res> get data;
}

/// @nodoc
class _$PaymentResponseCopyWithImpl<$Res, $Val extends PaymentResponse>
    implements $PaymentResponseCopyWith<$Res> {
  _$PaymentResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentResponse
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
              as PaymentData,
    ) as $Val);
  }

  /// Create a copy of PaymentResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentDataCopyWith<$Res> get data {
    return $PaymentDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaymentResponseImplCopyWith<$Res>
    implements $PaymentResponseCopyWith<$Res> {
  factory _$$PaymentResponseImplCopyWith(_$PaymentResponseImpl value,
          $Res Function(_$PaymentResponseImpl) then) =
      __$$PaymentResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int errCode, String errMsg, PaymentData data});

  @override
  $PaymentDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$PaymentResponseImplCopyWithImpl<$Res>
    extends _$PaymentResponseCopyWithImpl<$Res, _$PaymentResponseImpl>
    implements _$$PaymentResponseImplCopyWith<$Res> {
  __$$PaymentResponseImplCopyWithImpl(
      _$PaymentResponseImpl _value, $Res Function(_$PaymentResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errCode = null,
    Object? errMsg = null,
    Object? data = null,
  }) {
    return _then(_$PaymentResponseImpl(
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
              as PaymentData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentResponseImpl implements _PaymentResponse {
  const _$PaymentResponseImpl(
      {required this.errCode, required this.errMsg, required this.data});

  factory _$PaymentResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentResponseImplFromJson(json);

  @override
  final int errCode;
  @override
  final String errMsg;
  @override
  final PaymentData data;

  @override
  String toString() {
    return 'PaymentResponse(errCode: $errCode, errMsg: $errMsg, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentResponseImpl &&
            (identical(other.errCode, errCode) || other.errCode == errCode) &&
            (identical(other.errMsg, errMsg) || other.errMsg == errMsg) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, errCode, errMsg, data);

  /// Create a copy of PaymentResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentResponseImplCopyWith<_$PaymentResponseImpl> get copyWith =>
      __$$PaymentResponseImplCopyWithImpl<_$PaymentResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentResponseImplToJson(
      this,
    );
  }
}

abstract class _PaymentResponse implements PaymentResponse {
  const factory _PaymentResponse(
      {required final int errCode,
      required final String errMsg,
      required final PaymentData data}) = _$PaymentResponseImpl;

  factory _PaymentResponse.fromJson(Map<String, dynamic> json) =
      _$PaymentResponseImpl.fromJson;

  @override
  int get errCode;
  @override
  String get errMsg;
  @override
  PaymentData get data;

  /// Create a copy of PaymentResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentResponseImplCopyWith<_$PaymentResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
