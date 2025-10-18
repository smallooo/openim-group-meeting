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

ProductListRequest _$ProductListRequestFromJson(Map<String, dynamic> json) {
  return _ProductListRequest.fromJson(json);
}

/// @nodoc
mixin _$ProductListRequest {
  int get categoryId => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;

  /// Serializes this ProductListRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductListRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductListRequestCopyWith<ProductListRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductListRequestCopyWith<$Res> {
  factory $ProductListRequestCopyWith(
          ProductListRequest value, $Res Function(ProductListRequest) then) =
      _$ProductListRequestCopyWithImpl<$Res, ProductListRequest>;
  @useResult
  $Res call({int categoryId, int page, int size});
}

/// @nodoc
class _$ProductListRequestCopyWithImpl<$Res, $Val extends ProductListRequest>
    implements $ProductListRequestCopyWith<$Res> {
  _$ProductListRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductListRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? page = null,
    Object? size = null,
  }) {
    return _then(_value.copyWith(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductListRequestImplCopyWith<$Res>
    implements $ProductListRequestCopyWith<$Res> {
  factory _$$ProductListRequestImplCopyWith(_$ProductListRequestImpl value,
          $Res Function(_$ProductListRequestImpl) then) =
      __$$ProductListRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int categoryId, int page, int size});
}

/// @nodoc
class __$$ProductListRequestImplCopyWithImpl<$Res>
    extends _$ProductListRequestCopyWithImpl<$Res, _$ProductListRequestImpl>
    implements _$$ProductListRequestImplCopyWith<$Res> {
  __$$ProductListRequestImplCopyWithImpl(_$ProductListRequestImpl _value,
      $Res Function(_$ProductListRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductListRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? page = null,
    Object? size = null,
  }) {
    return _then(_$ProductListRequestImpl(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductListRequestImpl implements _ProductListRequest {
  const _$ProductListRequestImpl(
      {required this.categoryId, required this.page, required this.size});

  factory _$ProductListRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductListRequestImplFromJson(json);

  @override
  final int categoryId;
  @override
  final int page;
  @override
  final int size;

  @override
  String toString() {
    return 'ProductListRequest(categoryId: $categoryId, page: $page, size: $size)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductListRequestImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.size, size) || other.size == size));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, categoryId, page, size);

  /// Create a copy of ProductListRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductListRequestImplCopyWith<_$ProductListRequestImpl> get copyWith =>
      __$$ProductListRequestImplCopyWithImpl<_$ProductListRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductListRequestImplToJson(
      this,
    );
  }
}

abstract class _ProductListRequest implements ProductListRequest {
  const factory _ProductListRequest(
      {required final int categoryId,
      required final int page,
      required final int size}) = _$ProductListRequestImpl;

  factory _ProductListRequest.fromJson(Map<String, dynamic> json) =
      _$ProductListRequestImpl.fromJson;

  @override
  int get categoryId;
  @override
  int get page;
  @override
  int get size;

  /// Create a copy of ProductListRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductListRequestImplCopyWith<_$ProductListRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductListResponse _$ProductListResponseFromJson(Map<String, dynamic> json) {
  return _ProductListResponse.fromJson(json);
}

/// @nodoc
mixin _$ProductListResponse {
  int get errCode => throw _privateConstructorUsedError;
  String get errMsg => throw _privateConstructorUsedError;
  ProductListData get data => throw _privateConstructorUsedError;

  /// Serializes this ProductListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductListResponseCopyWith<ProductListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductListResponseCopyWith<$Res> {
  factory $ProductListResponseCopyWith(
          ProductListResponse value, $Res Function(ProductListResponse) then) =
      _$ProductListResponseCopyWithImpl<$Res, ProductListResponse>;
  @useResult
  $Res call({int errCode, String errMsg, ProductListData data});

  $ProductListDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ProductListResponseCopyWithImpl<$Res, $Val extends ProductListResponse>
    implements $ProductListResponseCopyWith<$Res> {
  _$ProductListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductListResponse
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
              as ProductListData,
    ) as $Val);
  }

  /// Create a copy of ProductListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductListDataCopyWith<$Res> get data {
    return $ProductListDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductListResponseImplCopyWith<$Res>
    implements $ProductListResponseCopyWith<$Res> {
  factory _$$ProductListResponseImplCopyWith(_$ProductListResponseImpl value,
          $Res Function(_$ProductListResponseImpl) then) =
      __$$ProductListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int errCode, String errMsg, ProductListData data});

  @override
  $ProductListDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ProductListResponseImplCopyWithImpl<$Res>
    extends _$ProductListResponseCopyWithImpl<$Res, _$ProductListResponseImpl>
    implements _$$ProductListResponseImplCopyWith<$Res> {
  __$$ProductListResponseImplCopyWithImpl(_$ProductListResponseImpl _value,
      $Res Function(_$ProductListResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errCode = null,
    Object? errMsg = null,
    Object? data = null,
  }) {
    return _then(_$ProductListResponseImpl(
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
              as ProductListData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductListResponseImpl implements _ProductListResponse {
  const _$ProductListResponseImpl(
      {this.errCode = 0, this.errMsg = '', required this.data});

  factory _$ProductListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductListResponseImplFromJson(json);

  @override
  @JsonKey()
  final int errCode;
  @override
  @JsonKey()
  final String errMsg;
  @override
  final ProductListData data;

  @override
  String toString() {
    return 'ProductListResponse(errCode: $errCode, errMsg: $errMsg, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductListResponseImpl &&
            (identical(other.errCode, errCode) || other.errCode == errCode) &&
            (identical(other.errMsg, errMsg) || other.errMsg == errMsg) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, errCode, errMsg, data);

  /// Create a copy of ProductListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductListResponseImplCopyWith<_$ProductListResponseImpl> get copyWith =>
      __$$ProductListResponseImplCopyWithImpl<_$ProductListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductListResponseImplToJson(
      this,
    );
  }
}

abstract class _ProductListResponse implements ProductListResponse {
  const factory _ProductListResponse(
      {final int errCode,
      final String errMsg,
      required final ProductListData data}) = _$ProductListResponseImpl;

  factory _ProductListResponse.fromJson(Map<String, dynamic> json) =
      _$ProductListResponseImpl.fromJson;

  @override
  int get errCode;
  @override
  String get errMsg;
  @override
  ProductListData get data;

  /// Create a copy of ProductListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductListResponseImplCopyWith<_$ProductListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductListData _$ProductListDataFromJson(Map<String, dynamic> json) {
  return _ProductListData.fromJson(json);
}

/// @nodoc
mixin _$ProductListData {
  String get total => throw _privateConstructorUsedError;
  List<ProductModel> get list => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  String get totalPages => throw _privateConstructorUsedError;

  /// Serializes this ProductListData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductListData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductListDataCopyWith<ProductListData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductListDataCopyWith<$Res> {
  factory $ProductListDataCopyWith(
          ProductListData value, $Res Function(ProductListData) then) =
      _$ProductListDataCopyWithImpl<$Res, ProductListData>;
  @useResult
  $Res call(
      {String total,
      List<ProductModel> list,
      int page,
      int size,
      String totalPages});
}

/// @nodoc
class _$ProductListDataCopyWithImpl<$Res, $Val extends ProductListData>
    implements $ProductListDataCopyWith<$Res> {
  _$ProductListDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductListData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? list = null,
    Object? page = null,
    Object? size = null,
    Object? totalPages = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductListDataImplCopyWith<$Res>
    implements $ProductListDataCopyWith<$Res> {
  factory _$$ProductListDataImplCopyWith(_$ProductListDataImpl value,
          $Res Function(_$ProductListDataImpl) then) =
      __$$ProductListDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String total,
      List<ProductModel> list,
      int page,
      int size,
      String totalPages});
}

/// @nodoc
class __$$ProductListDataImplCopyWithImpl<$Res>
    extends _$ProductListDataCopyWithImpl<$Res, _$ProductListDataImpl>
    implements _$$ProductListDataImplCopyWith<$Res> {
  __$$ProductListDataImplCopyWithImpl(
      _$ProductListDataImpl _value, $Res Function(_$ProductListDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductListData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? list = null,
    Object? page = null,
    Object? size = null,
    Object? totalPages = null,
  }) {
    return _then(_$ProductListDataImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductListDataImpl implements _ProductListData {
  const _$ProductListDataImpl(
      {required this.total,
      required final List<ProductModel> list,
      this.page = 1,
      this.size = 20,
      this.totalPages = ''})
      : _list = list;

  factory _$ProductListDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductListDataImplFromJson(json);

  @override
  final String total;
  final List<ProductModel> _list;
  @override
  List<ProductModel> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int size;
  @override
  @JsonKey()
  final String totalPages;

  @override
  String toString() {
    return 'ProductListData(total: $total, list: $list, page: $page, size: $size, totalPages: $totalPages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductListDataImpl &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total,
      const DeepCollectionEquality().hash(_list), page, size, totalPages);

  /// Create a copy of ProductListData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductListDataImplCopyWith<_$ProductListDataImpl> get copyWith =>
      __$$ProductListDataImplCopyWithImpl<_$ProductListDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductListDataImplToJson(
      this,
    );
  }
}

abstract class _ProductListData implements ProductListData {
  const factory _ProductListData(
      {required final String total,
      required final List<ProductModel> list,
      final int page,
      final int size,
      final String totalPages}) = _$ProductListDataImpl;

  factory _ProductListData.fromJson(Map<String, dynamic> json) =
      _$ProductListDataImpl.fromJson;

  @override
  String get total;
  @override
  List<ProductModel> get list;
  @override
  int get page;
  @override
  int get size;
  @override
  String get totalPages;

  /// Create a copy of ProductListData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductListDataImplCopyWith<_$ProductListDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
  String get id => throw _privateConstructorUsedError;
  String get channelId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get subName => throw _privateConstructorUsedError;
  double get defaultPrice => throw _privateConstructorUsedError;
  String get defaultPic => throw _privateConstructorUsedError;
  String get categoryId => throw _privateConstructorUsedError;
  String get categoryName => throw _privateConstructorUsedError;
  String get parentCategoryId => throw _privateConstructorUsedError;
  String get parentCategoryName => throw _privateConstructorUsedError;
  String get brandId => throw _privateConstructorUsedError;
  String get brandName => throw _privateConstructorUsedError;
  int get publishStatus => throw _privateConstructorUsedError;
  int get verifyStatus => throw _privateConstructorUsedError;
  int get salesCount => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  int get reviewCount => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  /// Serializes this ProductModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res, ProductModel>;
  @useResult
  $Res call(
      {String id,
      String channelId,
      String name,
      String subName,
      double defaultPrice,
      String defaultPic,
      String categoryId,
      String categoryName,
      String parentCategoryId,
      String parentCategoryName,
      String brandId,
      String brandName,
      int publishStatus,
      int verifyStatus,
      int salesCount,
      double rating,
      int reviewCount,
      String createdAt});
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductModel
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
    Object? categoryId = null,
    Object? categoryName = null,
    Object? parentCategoryId = null,
    Object? parentCategoryName = null,
    Object? brandId = null,
    Object? brandName = null,
    Object? publishStatus = null,
    Object? verifyStatus = null,
    Object? salesCount = null,
    Object? rating = null,
    Object? reviewCount = null,
    Object? createdAt = null,
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
              as double,
      defaultPic: null == defaultPic
          ? _value.defaultPic
          : defaultPic // ignore: cast_nullable_to_non_nullable
              as String,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductModelImplCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$$ProductModelImplCopyWith(
          _$ProductModelImpl value, $Res Function(_$ProductModelImpl) then) =
      __$$ProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String channelId,
      String name,
      String subName,
      double defaultPrice,
      String defaultPic,
      String categoryId,
      String categoryName,
      String parentCategoryId,
      String parentCategoryName,
      String brandId,
      String brandName,
      int publishStatus,
      int verifyStatus,
      int salesCount,
      double rating,
      int reviewCount,
      String createdAt});
}

/// @nodoc
class __$$ProductModelImplCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$ProductModelImpl>
    implements _$$ProductModelImplCopyWith<$Res> {
  __$$ProductModelImplCopyWithImpl(
      _$ProductModelImpl _value, $Res Function(_$ProductModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductModel
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
    Object? categoryId = null,
    Object? categoryName = null,
    Object? parentCategoryId = null,
    Object? parentCategoryName = null,
    Object? brandId = null,
    Object? brandName = null,
    Object? publishStatus = null,
    Object? verifyStatus = null,
    Object? salesCount = null,
    Object? rating = null,
    Object? reviewCount = null,
    Object? createdAt = null,
  }) {
    return _then(_$ProductModelImpl(
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
              as double,
      defaultPic: null == defaultPic
          ? _value.defaultPic
          : defaultPic // ignore: cast_nullable_to_non_nullable
              as String,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductModelImpl implements _ProductModel {
  const _$ProductModelImpl(
      {required this.id,
      this.channelId = '',
      required this.name,
      required this.subName,
      this.defaultPrice = 0.0,
      required this.defaultPic,
      required this.categoryId,
      required this.categoryName,
      this.parentCategoryId = '',
      this.parentCategoryName = '',
      required this.brandId,
      required this.brandName,
      this.publishStatus = 0,
      this.verifyStatus = 0,
      this.salesCount = 0,
      this.rating = 0.0,
      this.reviewCount = 0,
      required this.createdAt});

  factory _$ProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey()
  final String channelId;
  @override
  final String name;
  @override
  final String subName;
  @override
  @JsonKey()
  final double defaultPrice;
  @override
  final String defaultPic;
  @override
  final String categoryId;
  @override
  final String categoryName;
  @override
  @JsonKey()
  final String parentCategoryId;
  @override
  @JsonKey()
  final String parentCategoryName;
  @override
  final String brandId;
  @override
  final String brandName;
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
  final String createdAt;

  @override
  String toString() {
    return 'ProductModel(id: $id, channelId: $channelId, name: $name, subName: $subName, defaultPrice: $defaultPrice, defaultPic: $defaultPic, categoryId: $categoryId, categoryName: $categoryName, parentCategoryId: $parentCategoryId, parentCategoryName: $parentCategoryName, brandId: $brandId, brandName: $brandName, publishStatus: $publishStatus, verifyStatus: $verifyStatus, salesCount: $salesCount, rating: $rating, reviewCount: $reviewCount, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.subName, subName) || other.subName == subName) &&
            (identical(other.defaultPrice, defaultPrice) ||
                other.defaultPrice == defaultPrice) &&
            (identical(other.defaultPic, defaultPic) ||
                other.defaultPic == defaultPic) &&
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
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      channelId,
      name,
      subName,
      defaultPrice,
      defaultPic,
      categoryId,
      categoryName,
      parentCategoryId,
      parentCategoryName,
      brandId,
      brandName,
      publishStatus,
      verifyStatus,
      salesCount,
      rating,
      reviewCount,
      createdAt);

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      __$$ProductModelImplCopyWithImpl<_$ProductModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductModelImplToJson(
      this,
    );
  }
}

abstract class _ProductModel implements ProductModel {
  const factory _ProductModel(
      {required final String id,
      final String channelId,
      required final String name,
      required final String subName,
      final double defaultPrice,
      required final String defaultPic,
      required final String categoryId,
      required final String categoryName,
      final String parentCategoryId,
      final String parentCategoryName,
      required final String brandId,
      required final String brandName,
      final int publishStatus,
      final int verifyStatus,
      final int salesCount,
      final double rating,
      final int reviewCount,
      required final String createdAt}) = _$ProductModelImpl;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$ProductModelImpl.fromJson;

  @override
  String get id;
  @override
  String get channelId;
  @override
  String get name;
  @override
  String get subName;
  @override
  double get defaultPrice;
  @override
  String get defaultPic;
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

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
