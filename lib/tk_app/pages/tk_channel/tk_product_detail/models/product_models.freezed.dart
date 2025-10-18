// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductDetailResponse _$ProductDetailResponseFromJson(
    Map<String, dynamic> json) {
  return _ProductDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$ProductDetailResponse {
  int get errCode => throw _privateConstructorUsedError;
  String get errMsg => throw _privateConstructorUsedError;
  ProductDetailModel? get data => throw _privateConstructorUsedError;

  /// Serializes this ProductDetailResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductDetailResponseCopyWith<ProductDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailResponseCopyWith<$Res> {
  factory $ProductDetailResponseCopyWith(ProductDetailResponse value,
          $Res Function(ProductDetailResponse) then) =
      _$ProductDetailResponseCopyWithImpl<$Res, ProductDetailResponse>;
  @useResult
  $Res call({int errCode, String errMsg, ProductDetailModel? data});

  $ProductDetailModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$ProductDetailResponseCopyWithImpl<$Res,
        $Val extends ProductDetailResponse>
    implements $ProductDetailResponseCopyWith<$Res> {
  _$ProductDetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errCode = null,
    Object? errMsg = null,
    Object? data = freezed,
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProductDetailModel?,
    ) as $Val);
  }

  /// Create a copy of ProductDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductDetailModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ProductDetailModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductDetailResponseImplCopyWith<$Res>
    implements $ProductDetailResponseCopyWith<$Res> {
  factory _$$ProductDetailResponseImplCopyWith(
          _$ProductDetailResponseImpl value,
          $Res Function(_$ProductDetailResponseImpl) then) =
      __$$ProductDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int errCode, String errMsg, ProductDetailModel? data});

  @override
  $ProductDetailModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ProductDetailResponseImplCopyWithImpl<$Res>
    extends _$ProductDetailResponseCopyWithImpl<$Res,
        _$ProductDetailResponseImpl>
    implements _$$ProductDetailResponseImplCopyWith<$Res> {
  __$$ProductDetailResponseImplCopyWithImpl(_$ProductDetailResponseImpl _value,
      $Res Function(_$ProductDetailResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errCode = null,
    Object? errMsg = null,
    Object? data = freezed,
  }) {
    return _then(_$ProductDetailResponseImpl(
      errCode: null == errCode
          ? _value.errCode
          : errCode // ignore: cast_nullable_to_non_nullable
              as int,
      errMsg: null == errMsg
          ? _value.errMsg
          : errMsg // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProductDetailModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDetailResponseImpl implements _ProductDetailResponse {
  const _$ProductDetailResponseImpl(
      {this.errCode = 0, this.errMsg = '', this.data});

  factory _$ProductDetailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDetailResponseImplFromJson(json);

  @override
  @JsonKey()
  final int errCode;
  @override
  @JsonKey()
  final String errMsg;
  @override
  final ProductDetailModel? data;

  @override
  String toString() {
    return 'ProductDetailResponse(errCode: $errCode, errMsg: $errMsg, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailResponseImpl &&
            (identical(other.errCode, errCode) || other.errCode == errCode) &&
            (identical(other.errMsg, errMsg) || other.errMsg == errMsg) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, errCode, errMsg, data);

  /// Create a copy of ProductDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailResponseImplCopyWith<_$ProductDetailResponseImpl>
      get copyWith => __$$ProductDetailResponseImplCopyWithImpl<
          _$ProductDetailResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDetailResponseImplToJson(
      this,
    );
  }
}

abstract class _ProductDetailResponse implements ProductDetailResponse {
  const factory _ProductDetailResponse(
      {final int errCode,
      final String errMsg,
      final ProductDetailModel? data}) = _$ProductDetailResponseImpl;

  factory _ProductDetailResponse.fromJson(Map<String, dynamic> json) =
      _$ProductDetailResponseImpl.fromJson;

  @override
  int get errCode;
  @override
  String get errMsg;
  @override
  ProductDetailModel? get data;

  /// Create a copy of ProductDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDetailResponseImplCopyWith<_$ProductDetailResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProductDetailModel _$ProductDetailModelFromJson(Map<String, dynamic> json) {
  return _ProductDetailModel.fromJson(json);
}

/// @nodoc
mixin _$ProductDetailModel {
  String get id => throw _privateConstructorUsedError;
  String get channelId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get subName => throw _privateConstructorUsedError;
  int get defaultPrice => throw _privateConstructorUsedError;
  String get defaultPic => throw _privateConstructorUsedError;
  List<String> get picList => throw _privateConstructorUsedError;
  String get categoryId => throw _privateConstructorUsedError;
  String get categoryName => throw _privateConstructorUsedError;
  String get parentCategoryId => throw _privateConstructorUsedError;
  String get parentCategoryName => throw _privateConstructorUsedError;
  String get brandId => throw _privateConstructorUsedError;
  String get brandName => throw _privateConstructorUsedError;
  String get packageList => throw _privateConstructorUsedError;
  String get detailHtml => throw _privateConstructorUsedError;
  String get detailMobile => throw _privateConstructorUsedError;
  int get publishStatus => throw _privateConstructorUsedError;
  int get verifyStatus => throw _privateConstructorUsedError;
  int get salesCount => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  int get reviewCount => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  String get sellerId => throw _privateConstructorUsedError;
  String get sellerName => throw _privateConstructorUsedError;
  String get sellerAvatar => throw _privateConstructorUsedError;
  String get sellerPhone => throw _privateConstructorUsedError;
  String get sellerEmail => throw _privateConstructorUsedError;
  String get shopId => throw _privateConstructorUsedError;
  String get shopName => throw _privateConstructorUsedError;
  String get shopLogo => throw _privateConstructorUsedError;
  String get shopDescription => throw _privateConstructorUsedError;
  double get shopRating => throw _privateConstructorUsedError;
  int get shopSalesCount => throw _privateConstructorUsedError;
  String get specifications => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _skusFromJson)
  List<ProductSkuModel> get skus => throw _privateConstructorUsedError;

  /// Serializes this ProductDetailModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductDetailModelCopyWith<ProductDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailModelCopyWith<$Res> {
  factory $ProductDetailModelCopyWith(
          ProductDetailModel value, $Res Function(ProductDetailModel) then) =
      _$ProductDetailModelCopyWithImpl<$Res, ProductDetailModel>;
  @useResult
  $Res call(
      {String id,
      String channelId,
      String name,
      String subName,
      int defaultPrice,
      String defaultPic,
      List<String> picList,
      String categoryId,
      String categoryName,
      String parentCategoryId,
      String parentCategoryName,
      String brandId,
      String brandName,
      String packageList,
      String detailHtml,
      String detailMobile,
      int publishStatus,
      int verifyStatus,
      int salesCount,
      double rating,
      int reviewCount,
      String createdAt,
      String updatedAt,
      String sellerId,
      String sellerName,
      String sellerAvatar,
      String sellerPhone,
      String sellerEmail,
      String shopId,
      String shopName,
      String shopLogo,
      String shopDescription,
      double shopRating,
      int shopSalesCount,
      String specifications,
      @JsonKey(fromJson: _skusFromJson) List<ProductSkuModel> skus});
}

/// @nodoc
class _$ProductDetailModelCopyWithImpl<$Res, $Val extends ProductDetailModel>
    implements $ProductDetailModelCopyWith<$Res> {
  _$ProductDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? channelId = null,
    Object? name = null,
    Object? subName = null,
    Object? defaultPrice = null,
    Object? defaultPic = null,
    Object? picList = null,
    Object? categoryId = null,
    Object? categoryName = null,
    Object? parentCategoryId = null,
    Object? parentCategoryName = null,
    Object? brandId = null,
    Object? brandName = null,
    Object? packageList = null,
    Object? detailHtml = null,
    Object? detailMobile = null,
    Object? publishStatus = null,
    Object? verifyStatus = null,
    Object? salesCount = null,
    Object? rating = null,
    Object? reviewCount = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? sellerId = null,
    Object? sellerName = null,
    Object? sellerAvatar = null,
    Object? sellerPhone = null,
    Object? sellerEmail = null,
    Object? shopId = null,
    Object? shopName = null,
    Object? shopLogo = null,
    Object? shopDescription = null,
    Object? shopRating = null,
    Object? shopSalesCount = null,
    Object? specifications = null,
    Object? skus = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      channelId: null == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      subName: null == subName
          ? _value.subName
          : subName // ignore: cast_nullable_to_non_nullable
              as String,
      defaultPrice: null == defaultPrice
          ? _value.defaultPrice
          : defaultPrice // ignore: cast_nullable_to_non_nullable
              as int,
      defaultPic: null == defaultPic
          ? _value.defaultPic
          : defaultPic // ignore: cast_nullable_to_non_nullable
              as String,
      picList: null == picList
          ? _value.picList
          : picList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      parentCategoryId: null == parentCategoryId
          ? _value.parentCategoryId
          : parentCategoryId // ignore: cast_nullable_to_non_nullable
              as String,
      parentCategoryName: null == parentCategoryName
          ? _value.parentCategoryName
          : parentCategoryName // ignore: cast_nullable_to_non_nullable
              as String,
      brandId: null == brandId
          ? _value.brandId
          : brandId // ignore: cast_nullable_to_non_nullable
              as String,
      brandName: null == brandName
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String,
      packageList: null == packageList
          ? _value.packageList
          : packageList // ignore: cast_nullable_to_non_nullable
              as String,
      detailHtml: null == detailHtml
          ? _value.detailHtml
          : detailHtml // ignore: cast_nullable_to_non_nullable
              as String,
      detailMobile: null == detailMobile
          ? _value.detailMobile
          : detailMobile // ignore: cast_nullable_to_non_nullable
              as String,
      publishStatus: null == publishStatus
          ? _value.publishStatus
          : publishStatus // ignore: cast_nullable_to_non_nullable
              as int,
      verifyStatus: null == verifyStatus
          ? _value.verifyStatus
          : verifyStatus // ignore: cast_nullable_to_non_nullable
              as int,
      salesCount: null == salesCount
          ? _value.salesCount
          : salesCount // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      reviewCount: null == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      sellerId: null == sellerId
          ? _value.sellerId
          : sellerId // ignore: cast_nullable_to_non_nullable
              as String,
      sellerName: null == sellerName
          ? _value.sellerName
          : sellerName // ignore: cast_nullable_to_non_nullable
              as String,
      sellerAvatar: null == sellerAvatar
          ? _value.sellerAvatar
          : sellerAvatar // ignore: cast_nullable_to_non_nullable
              as String,
      sellerPhone: null == sellerPhone
          ? _value.sellerPhone
          : sellerPhone // ignore: cast_nullable_to_non_nullable
              as String,
      sellerEmail: null == sellerEmail
          ? _value.sellerEmail
          : sellerEmail // ignore: cast_nullable_to_non_nullable
              as String,
      shopId: null == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String,
      shopName: null == shopName
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String,
      shopLogo: null == shopLogo
          ? _value.shopLogo
          : shopLogo // ignore: cast_nullable_to_non_nullable
              as String,
      shopDescription: null == shopDescription
          ? _value.shopDescription
          : shopDescription // ignore: cast_nullable_to_non_nullable
              as String,
      shopRating: null == shopRating
          ? _value.shopRating
          : shopRating // ignore: cast_nullable_to_non_nullable
              as double,
      shopSalesCount: null == shopSalesCount
          ? _value.shopSalesCount
          : shopSalesCount // ignore: cast_nullable_to_non_nullable
              as int,
      specifications: null == specifications
          ? _value.specifications
          : specifications // ignore: cast_nullable_to_non_nullable
              as String,
      skus: null == skus
          ? _value.skus
          : skus // ignore: cast_nullable_to_non_nullable
              as List<ProductSkuModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductDetailModelImplCopyWith<$Res>
    implements $ProductDetailModelCopyWith<$Res> {
  factory _$$ProductDetailModelImplCopyWith(_$ProductDetailModelImpl value,
          $Res Function(_$ProductDetailModelImpl) then) =
      __$$ProductDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String channelId,
      String name,
      String subName,
      int defaultPrice,
      String defaultPic,
      List<String> picList,
      String categoryId,
      String categoryName,
      String parentCategoryId,
      String parentCategoryName,
      String brandId,
      String brandName,
      String packageList,
      String detailHtml,
      String detailMobile,
      int publishStatus,
      int verifyStatus,
      int salesCount,
      double rating,
      int reviewCount,
      String createdAt,
      String updatedAt,
      String sellerId,
      String sellerName,
      String sellerAvatar,
      String sellerPhone,
      String sellerEmail,
      String shopId,
      String shopName,
      String shopLogo,
      String shopDescription,
      double shopRating,
      int shopSalesCount,
      String specifications,
      @JsonKey(fromJson: _skusFromJson) List<ProductSkuModel> skus});
}

/// @nodoc
class __$$ProductDetailModelImplCopyWithImpl<$Res>
    extends _$ProductDetailModelCopyWithImpl<$Res, _$ProductDetailModelImpl>
    implements _$$ProductDetailModelImplCopyWith<$Res> {
  __$$ProductDetailModelImplCopyWithImpl(_$ProductDetailModelImpl _value,
      $Res Function(_$ProductDetailModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? channelId = null,
    Object? name = null,
    Object? subName = null,
    Object? defaultPrice = null,
    Object? defaultPic = null,
    Object? picList = null,
    Object? categoryId = null,
    Object? categoryName = null,
    Object? parentCategoryId = null,
    Object? parentCategoryName = null,
    Object? brandId = null,
    Object? brandName = null,
    Object? packageList = null,
    Object? detailHtml = null,
    Object? detailMobile = null,
    Object? publishStatus = null,
    Object? verifyStatus = null,
    Object? salesCount = null,
    Object? rating = null,
    Object? reviewCount = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? sellerId = null,
    Object? sellerName = null,
    Object? sellerAvatar = null,
    Object? sellerPhone = null,
    Object? sellerEmail = null,
    Object? shopId = null,
    Object? shopName = null,
    Object? shopLogo = null,
    Object? shopDescription = null,
    Object? shopRating = null,
    Object? shopSalesCount = null,
    Object? specifications = null,
    Object? skus = null,
  }) {
    return _then(_$ProductDetailModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      channelId: null == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      subName: null == subName
          ? _value.subName
          : subName // ignore: cast_nullable_to_non_nullable
              as String,
      defaultPrice: null == defaultPrice
          ? _value.defaultPrice
          : defaultPrice // ignore: cast_nullable_to_non_nullable
              as int,
      defaultPic: null == defaultPic
          ? _value.defaultPic
          : defaultPic // ignore: cast_nullable_to_non_nullable
              as String,
      picList: null == picList
          ? _value._picList
          : picList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      parentCategoryId: null == parentCategoryId
          ? _value.parentCategoryId
          : parentCategoryId // ignore: cast_nullable_to_non_nullable
              as String,
      parentCategoryName: null == parentCategoryName
          ? _value.parentCategoryName
          : parentCategoryName // ignore: cast_nullable_to_non_nullable
              as String,
      brandId: null == brandId
          ? _value.brandId
          : brandId // ignore: cast_nullable_to_non_nullable
              as String,
      brandName: null == brandName
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String,
      packageList: null == packageList
          ? _value.packageList
          : packageList // ignore: cast_nullable_to_non_nullable
              as String,
      detailHtml: null == detailHtml
          ? _value.detailHtml
          : detailHtml // ignore: cast_nullable_to_non_nullable
              as String,
      detailMobile: null == detailMobile
          ? _value.detailMobile
          : detailMobile // ignore: cast_nullable_to_non_nullable
              as String,
      publishStatus: null == publishStatus
          ? _value.publishStatus
          : publishStatus // ignore: cast_nullable_to_non_nullable
              as int,
      verifyStatus: null == verifyStatus
          ? _value.verifyStatus
          : verifyStatus // ignore: cast_nullable_to_non_nullable
              as int,
      salesCount: null == salesCount
          ? _value.salesCount
          : salesCount // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      reviewCount: null == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      sellerId: null == sellerId
          ? _value.sellerId
          : sellerId // ignore: cast_nullable_to_non_nullable
              as String,
      sellerName: null == sellerName
          ? _value.sellerName
          : sellerName // ignore: cast_nullable_to_non_nullable
              as String,
      sellerAvatar: null == sellerAvatar
          ? _value.sellerAvatar
          : sellerAvatar // ignore: cast_nullable_to_non_nullable
              as String,
      sellerPhone: null == sellerPhone
          ? _value.sellerPhone
          : sellerPhone // ignore: cast_nullable_to_non_nullable
              as String,
      sellerEmail: null == sellerEmail
          ? _value.sellerEmail
          : sellerEmail // ignore: cast_nullable_to_non_nullable
              as String,
      shopId: null == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String,
      shopName: null == shopName
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String,
      shopLogo: null == shopLogo
          ? _value.shopLogo
          : shopLogo // ignore: cast_nullable_to_non_nullable
              as String,
      shopDescription: null == shopDescription
          ? _value.shopDescription
          : shopDescription // ignore: cast_nullable_to_non_nullable
              as String,
      shopRating: null == shopRating
          ? _value.shopRating
          : shopRating // ignore: cast_nullable_to_non_nullable
              as double,
      shopSalesCount: null == shopSalesCount
          ? _value.shopSalesCount
          : shopSalesCount // ignore: cast_nullable_to_non_nullable
              as int,
      specifications: null == specifications
          ? _value.specifications
          : specifications // ignore: cast_nullable_to_non_nullable
              as String,
      skus: null == skus
          ? _value._skus
          : skus // ignore: cast_nullable_to_non_nullable
              as List<ProductSkuModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDetailModelImpl implements _ProductDetailModel {
  const _$ProductDetailModelImpl(
      {this.id = '',
      this.channelId = '',
      this.name = '',
      this.subName = '',
      this.defaultPrice = 0,
      this.defaultPic = '',
      final List<String> picList = const [],
      this.categoryId = '',
      this.categoryName = '',
      this.parentCategoryId = '',
      this.parentCategoryName = '',
      this.brandId = '',
      this.brandName = '',
      this.packageList = '',
      this.detailHtml = '',
      this.detailMobile = '',
      this.publishStatus = 0,
      this.verifyStatus = 0,
      this.salesCount = 0,
      this.rating = 0.0,
      this.reviewCount = 0,
      this.createdAt = '',
      this.updatedAt = '',
      this.sellerId = '',
      this.sellerName = '',
      this.sellerAvatar = '',
      this.sellerPhone = '',
      this.sellerEmail = '',
      this.shopId = '',
      this.shopName = '',
      this.shopLogo = '',
      this.shopDescription = '',
      this.shopRating = 0.0,
      this.shopSalesCount = 0,
      this.specifications = '',
      @JsonKey(fromJson: _skusFromJson)
      final List<ProductSkuModel> skus = const []})
      : _picList = picList,
        _skus = skus;

  factory _$ProductDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDetailModelImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String channelId;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String subName;
  @override
  @JsonKey()
  final int defaultPrice;
  @override
  @JsonKey()
  final String defaultPic;
  final List<String> _picList;
  @override
  @JsonKey()
  List<String> get picList {
    if (_picList is EqualUnmodifiableListView) return _picList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_picList);
  }

  @override
  @JsonKey()
  final String categoryId;
  @override
  @JsonKey()
  final String categoryName;
  @override
  @JsonKey()
  final String parentCategoryId;
  @override
  @JsonKey()
  final String parentCategoryName;
  @override
  @JsonKey()
  final String brandId;
  @override
  @JsonKey()
  final String brandName;
  @override
  @JsonKey()
  final String packageList;
  @override
  @JsonKey()
  final String detailHtml;
  @override
  @JsonKey()
  final String detailMobile;
  @override
  @JsonKey()
  final int publishStatus;
  @override
  @JsonKey()
  final int verifyStatus;
  @override
  @JsonKey()
  final int salesCount;
  @override
  @JsonKey()
  final double rating;
  @override
  @JsonKey()
  final int reviewCount;
  @override
  @JsonKey()
  final String createdAt;
  @override
  @JsonKey()
  final String updatedAt;
  @override
  @JsonKey()
  final String sellerId;
  @override
  @JsonKey()
  final String sellerName;
  @override
  @JsonKey()
  final String sellerAvatar;
  @override
  @JsonKey()
  final String sellerPhone;
  @override
  @JsonKey()
  final String sellerEmail;
  @override
  @JsonKey()
  final String shopId;
  @override
  @JsonKey()
  final String shopName;
  @override
  @JsonKey()
  final String shopLogo;
  @override
  @JsonKey()
  final String shopDescription;
  @override
  @JsonKey()
  final double shopRating;
  @override
  @JsonKey()
  final int shopSalesCount;
  @override
  @JsonKey()
  final String specifications;
  final List<ProductSkuModel> _skus;
  @override
  @JsonKey(fromJson: _skusFromJson)
  List<ProductSkuModel> get skus {
    if (_skus is EqualUnmodifiableListView) return _skus;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_skus);
  }

  @override
  String toString() {
    return 'ProductDetailModel(id: $id, channelId: $channelId, name: $name, subName: $subName, defaultPrice: $defaultPrice, defaultPic: $defaultPic, picList: $picList, categoryId: $categoryId, categoryName: $categoryName, parentCategoryId: $parentCategoryId, parentCategoryName: $parentCategoryName, brandId: $brandId, brandName: $brandName, packageList: $packageList, detailHtml: $detailHtml, detailMobile: $detailMobile, publishStatus: $publishStatus, verifyStatus: $verifyStatus, salesCount: $salesCount, rating: $rating, reviewCount: $reviewCount, createdAt: $createdAt, updatedAt: $updatedAt, sellerId: $sellerId, sellerName: $sellerName, sellerAvatar: $sellerAvatar, sellerPhone: $sellerPhone, sellerEmail: $sellerEmail, shopId: $shopId, shopName: $shopName, shopLogo: $shopLogo, shopDescription: $shopDescription, shopRating: $shopRating, shopSalesCount: $shopSalesCount, specifications: $specifications, skus: $skus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.subName, subName) || other.subName == subName) &&
            (identical(other.defaultPrice, defaultPrice) ||
                other.defaultPrice == defaultPrice) &&
            (identical(other.defaultPic, defaultPic) ||
                other.defaultPic == defaultPic) &&
            const DeepCollectionEquality().equals(other._picList, _picList) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.parentCategoryId, parentCategoryId) ||
                other.parentCategoryId == parentCategoryId) &&
            (identical(other.parentCategoryName, parentCategoryName) ||
                other.parentCategoryName == parentCategoryName) &&
            (identical(other.brandId, brandId) || other.brandId == brandId) &&
            (identical(other.brandName, brandName) ||
                other.brandName == brandName) &&
            (identical(other.packageList, packageList) ||
                other.packageList == packageList) &&
            (identical(other.detailHtml, detailHtml) ||
                other.detailHtml == detailHtml) &&
            (identical(other.detailMobile, detailMobile) ||
                other.detailMobile == detailMobile) &&
            (identical(other.publishStatus, publishStatus) ||
                other.publishStatus == publishStatus) &&
            (identical(other.verifyStatus, verifyStatus) ||
                other.verifyStatus == verifyStatus) &&
            (identical(other.salesCount, salesCount) ||
                other.salesCount == salesCount) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.sellerId, sellerId) ||
                other.sellerId == sellerId) &&
            (identical(other.sellerName, sellerName) ||
                other.sellerName == sellerName) &&
            (identical(other.sellerAvatar, sellerAvatar) ||
                other.sellerAvatar == sellerAvatar) &&
            (identical(other.sellerPhone, sellerPhone) ||
                other.sellerPhone == sellerPhone) &&
            (identical(other.sellerEmail, sellerEmail) ||
                other.sellerEmail == sellerEmail) &&
            (identical(other.shopId, shopId) || other.shopId == shopId) &&
            (identical(other.shopName, shopName) ||
                other.shopName == shopName) &&
            (identical(other.shopLogo, shopLogo) ||
                other.shopLogo == shopLogo) &&
            (identical(other.shopDescription, shopDescription) ||
                other.shopDescription == shopDescription) &&
            (identical(other.shopRating, shopRating) ||
                other.shopRating == shopRating) &&
            (identical(other.shopSalesCount, shopSalesCount) ||
                other.shopSalesCount == shopSalesCount) &&
            (identical(other.specifications, specifications) ||
                other.specifications == specifications) &&
            const DeepCollectionEquality().equals(other._skus, _skus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        channelId,
        name,
        subName,
        defaultPrice,
        defaultPic,
        const DeepCollectionEquality().hash(_picList),
        categoryId,
        categoryName,
        parentCategoryId,
        parentCategoryName,
        brandId,
        brandName,
        packageList,
        detailHtml,
        detailMobile,
        publishStatus,
        verifyStatus,
        salesCount,
        rating,
        reviewCount,
        createdAt,
        updatedAt,
        sellerId,
        sellerName,
        sellerAvatar,
        sellerPhone,
        sellerEmail,
        shopId,
        shopName,
        shopLogo,
        shopDescription,
        shopRating,
        shopSalesCount,
        specifications,
        const DeepCollectionEquality().hash(_skus)
      ]);

  /// Create a copy of ProductDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailModelImplCopyWith<_$ProductDetailModelImpl> get copyWith =>
      __$$ProductDetailModelImplCopyWithImpl<_$ProductDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDetailModelImplToJson(
      this,
    );
  }
}

abstract class _ProductDetailModel implements ProductDetailModel {
  const factory _ProductDetailModel(
          {final String id,
          final String channelId,
          final String name,
          final String subName,
          final int defaultPrice,
          final String defaultPic,
          final List<String> picList,
          final String categoryId,
          final String categoryName,
          final String parentCategoryId,
          final String parentCategoryName,
          final String brandId,
          final String brandName,
          final String packageList,
          final String detailHtml,
          final String detailMobile,
          final int publishStatus,
          final int verifyStatus,
          final int salesCount,
          final double rating,
          final int reviewCount,
          final String createdAt,
          final String updatedAt,
          final String sellerId,
          final String sellerName,
          final String sellerAvatar,
          final String sellerPhone,
          final String sellerEmail,
          final String shopId,
          final String shopName,
          final String shopLogo,
          final String shopDescription,
          final double shopRating,
          final int shopSalesCount,
          final String specifications,
          @JsonKey(fromJson: _skusFromJson) final List<ProductSkuModel> skus}) =
      _$ProductDetailModelImpl;

  factory _ProductDetailModel.fromJson(Map<String, dynamic> json) =
      _$ProductDetailModelImpl.fromJson;

  @override
  String get id;
  @override
  String get channelId;
  @override
  String get name;
  @override
  String get subName;
  @override
  int get defaultPrice;
  @override
  String get defaultPic;
  @override
  List<String> get picList;
  @override
  String get categoryId;
  @override
  String get categoryName;
  @override
  String get parentCategoryId;
  @override
  String get parentCategoryName;
  @override
  String get brandId;
  @override
  String get brandName;
  @override
  String get packageList;
  @override
  String get detailHtml;
  @override
  String get detailMobile;
  @override
  int get publishStatus;
  @override
  int get verifyStatus;
  @override
  int get salesCount;
  @override
  double get rating;
  @override
  int get reviewCount;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get sellerId;
  @override
  String get sellerName;
  @override
  String get sellerAvatar;
  @override
  String get sellerPhone;
  @override
  String get sellerEmail;
  @override
  String get shopId;
  @override
  String get shopName;
  @override
  String get shopLogo;
  @override
  String get shopDescription;
  @override
  double get shopRating;
  @override
  int get shopSalesCount;
  @override
  String get specifications;
  @override
  @JsonKey(fromJson: _skusFromJson)
  List<ProductSkuModel> get skus;

  /// Create a copy of ProductDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDetailModelImplCopyWith<_$ProductDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductSkuModel _$ProductSkuModelFromJson(Map<String, dynamic> json) {
  return _ProductSkuModel.fromJson(json);
}

/// @nodoc
mixin _$ProductSkuModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get promotionPrice => throw _privateConstructorUsedError;
  String get stock => throw _privateConstructorUsedError;
  String get specs => throw _privateConstructorUsedError;
  String get skuCode => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;

  /// Serializes this ProductSkuModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductSkuModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductSkuModelCopyWith<ProductSkuModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductSkuModelCopyWith<$Res> {
  factory $ProductSkuModelCopyWith(
          ProductSkuModel value, $Res Function(ProductSkuModel) then) =
      _$ProductSkuModelCopyWithImpl<$Res, ProductSkuModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      int price,
      String promotionPrice,
      String stock,
      String specs,
      String skuCode,
      int status});
}

/// @nodoc
class _$ProductSkuModelCopyWithImpl<$Res, $Val extends ProductSkuModel>
    implements $ProductSkuModelCopyWith<$Res> {
  _$ProductSkuModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductSkuModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? promotionPrice = null,
    Object? stock = null,
    Object? specs = null,
    Object? skuCode = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      promotionPrice: null == promotionPrice
          ? _value.promotionPrice
          : promotionPrice // ignore: cast_nullable_to_non_nullable
              as String,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as String,
      specs: null == specs
          ? _value.specs
          : specs // ignore: cast_nullable_to_non_nullable
              as String,
      skuCode: null == skuCode
          ? _value.skuCode
          : skuCode // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductSkuModelImplCopyWith<$Res>
    implements $ProductSkuModelCopyWith<$Res> {
  factory _$$ProductSkuModelImplCopyWith(_$ProductSkuModelImpl value,
          $Res Function(_$ProductSkuModelImpl) then) =
      __$$ProductSkuModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      int price,
      String promotionPrice,
      String stock,
      String specs,
      String skuCode,
      int status});
}

/// @nodoc
class __$$ProductSkuModelImplCopyWithImpl<$Res>
    extends _$ProductSkuModelCopyWithImpl<$Res, _$ProductSkuModelImpl>
    implements _$$ProductSkuModelImplCopyWith<$Res> {
  __$$ProductSkuModelImplCopyWithImpl(
      _$ProductSkuModelImpl _value, $Res Function(_$ProductSkuModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductSkuModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? promotionPrice = null,
    Object? stock = null,
    Object? specs = null,
    Object? skuCode = null,
    Object? status = null,
  }) {
    return _then(_$ProductSkuModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      promotionPrice: null == promotionPrice
          ? _value.promotionPrice
          : promotionPrice // ignore: cast_nullable_to_non_nullable
              as String,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as String,
      specs: null == specs
          ? _value.specs
          : specs // ignore: cast_nullable_to_non_nullable
              as String,
      skuCode: null == skuCode
          ? _value.skuCode
          : skuCode // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductSkuModelImpl implements _ProductSkuModel {
  const _$ProductSkuModelImpl(
      {this.id = '',
      this.name = '',
      this.price = 0,
      this.promotionPrice = '',
      this.stock = '',
      this.specs = '',
      this.skuCode = '',
      this.status = 0});

  factory _$ProductSkuModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductSkuModelImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final int price;
  @override
  @JsonKey()
  final String promotionPrice;
  @override
  @JsonKey()
  final String stock;
  @override
  @JsonKey()
  final String specs;
  @override
  @JsonKey()
  final String skuCode;
  @override
  @JsonKey()
  final int status;

  @override
  String toString() {
    return 'ProductSkuModel(id: $id, name: $name, price: $price, promotionPrice: $promotionPrice, stock: $stock, specs: $specs, skuCode: $skuCode, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductSkuModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.promotionPrice, promotionPrice) ||
                other.promotionPrice == promotionPrice) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.specs, specs) || other.specs == specs) &&
            (identical(other.skuCode, skuCode) || other.skuCode == skuCode) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, price, promotionPrice,
      stock, specs, skuCode, status);

  /// Create a copy of ProductSkuModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductSkuModelImplCopyWith<_$ProductSkuModelImpl> get copyWith =>
      __$$ProductSkuModelImplCopyWithImpl<_$ProductSkuModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductSkuModelImplToJson(
      this,
    );
  }
}

abstract class _ProductSkuModel implements ProductSkuModel {
  const factory _ProductSkuModel(
      {final String id,
      final String name,
      final int price,
      final String promotionPrice,
      final String stock,
      final String specs,
      final String skuCode,
      final int status}) = _$ProductSkuModelImpl;

  factory _ProductSkuModel.fromJson(Map<String, dynamic> json) =
      _$ProductSkuModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  int get price;
  @override
  String get promotionPrice;
  @override
  String get stock;
  @override
  String get specs;
  @override
  String get skuCode;
  @override
  int get status;

  /// Create a copy of ProductSkuModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductSkuModelImplCopyWith<_$ProductSkuModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
