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

RefundApplyRequest _$RefundApplyRequestFromJson(Map<String, dynamic> json) {
  return _RefundApplyRequest.fromJson(json);
}

/// @nodoc
mixin _$RefundApplyRequest {
  int get orderId => throw _privateConstructorUsedError;
  String get refundType => throw _privateConstructorUsedError;
  String get refundAmount => throw _privateConstructorUsedError;
  String get refundReason => throw _privateConstructorUsedError;

  /// Serializes this RefundApplyRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RefundApplyRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefundApplyRequestCopyWith<RefundApplyRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefundApplyRequestCopyWith<$Res> {
  factory $RefundApplyRequestCopyWith(
          RefundApplyRequest value, $Res Function(RefundApplyRequest) then) =
      _$RefundApplyRequestCopyWithImpl<$Res, RefundApplyRequest>;
  @useResult
  $Res call(
      {int orderId,
      String refundType,
      String refundAmount,
      String refundReason});
}

/// @nodoc
class _$RefundApplyRequestCopyWithImpl<$Res, $Val extends RefundApplyRequest>
    implements $RefundApplyRequestCopyWith<$Res> {
  _$RefundApplyRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefundApplyRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? refundType = null,
    Object? refundAmount = null,
    Object? refundReason = null,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      refundType: null == refundType
          ? _value.refundType
          : refundType // ignore: cast_nullable_to_non_nullable
              as String,
      refundAmount: null == refundAmount
          ? _value.refundAmount
          : refundAmount // ignore: cast_nullable_to_non_nullable
              as String,
      refundReason: null == refundReason
          ? _value.refundReason
          : refundReason // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RefundApplyRequestImplCopyWith<$Res>
    implements $RefundApplyRequestCopyWith<$Res> {
  factory _$$RefundApplyRequestImplCopyWith(_$RefundApplyRequestImpl value,
          $Res Function(_$RefundApplyRequestImpl) then) =
      __$$RefundApplyRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int orderId,
      String refundType,
      String refundAmount,
      String refundReason});
}

/// @nodoc
class __$$RefundApplyRequestImplCopyWithImpl<$Res>
    extends _$RefundApplyRequestCopyWithImpl<$Res, _$RefundApplyRequestImpl>
    implements _$$RefundApplyRequestImplCopyWith<$Res> {
  __$$RefundApplyRequestImplCopyWithImpl(_$RefundApplyRequestImpl _value,
      $Res Function(_$RefundApplyRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefundApplyRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? refundType = null,
    Object? refundAmount = null,
    Object? refundReason = null,
  }) {
    return _then(_$RefundApplyRequestImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      refundType: null == refundType
          ? _value.refundType
          : refundType // ignore: cast_nullable_to_non_nullable
              as String,
      refundAmount: null == refundAmount
          ? _value.refundAmount
          : refundAmount // ignore: cast_nullable_to_non_nullable
              as String,
      refundReason: null == refundReason
          ? _value.refundReason
          : refundReason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RefundApplyRequestImpl implements _RefundApplyRequest {
  const _$RefundApplyRequestImpl(
      {required this.orderId,
      required this.refundType,
      required this.refundAmount,
      required this.refundReason});

  factory _$RefundApplyRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefundApplyRequestImplFromJson(json);

  @override
  final int orderId;
  @override
  final String refundType;
  @override
  final String refundAmount;
  @override
  final String refundReason;

  @override
  String toString() {
    return 'RefundApplyRequest(orderId: $orderId, refundType: $refundType, refundAmount: $refundAmount, refundReason: $refundReason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefundApplyRequestImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.refundType, refundType) ||
                other.refundType == refundType) &&
            (identical(other.refundAmount, refundAmount) ||
                other.refundAmount == refundAmount) &&
            (identical(other.refundReason, refundReason) ||
                other.refundReason == refundReason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, orderId, refundType, refundAmount, refundReason);

  /// Create a copy of RefundApplyRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefundApplyRequestImplCopyWith<_$RefundApplyRequestImpl> get copyWith =>
      __$$RefundApplyRequestImplCopyWithImpl<_$RefundApplyRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefundApplyRequestImplToJson(
      this,
    );
  }
}

abstract class _RefundApplyRequest implements RefundApplyRequest {
  const factory _RefundApplyRequest(
      {required final int orderId,
      required final String refundType,
      required final String refundAmount,
      required final String refundReason}) = _$RefundApplyRequestImpl;

  factory _RefundApplyRequest.fromJson(Map<String, dynamic> json) =
      _$RefundApplyRequestImpl.fromJson;

  @override
  int get orderId;
  @override
  String get refundType;
  @override
  String get refundAmount;
  @override
  String get refundReason;

  /// Create a copy of RefundApplyRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefundApplyRequestImplCopyWith<_$RefundApplyRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RefundApplyResponse _$RefundApplyResponseFromJson(Map<String, dynamic> json) {
  return _RefundApplyResponse.fromJson(json);
}

/// @nodoc
mixin _$RefundApplyResponse {
  @JsonKey(name: 'code')
  int get errCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get errMsg => throw _privateConstructorUsedError;
  bool get ok => throw _privateConstructorUsedError;
  @JsonKey(name: 'data', fromJson: _dataFromJson)
  RefundApplyData? get data => throw _privateConstructorUsedError;

  /// Serializes this RefundApplyResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RefundApplyResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefundApplyResponseCopyWith<RefundApplyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefundApplyResponseCopyWith<$Res> {
  factory $RefundApplyResponseCopyWith(
          RefundApplyResponse value, $Res Function(RefundApplyResponse) then) =
      _$RefundApplyResponseCopyWithImpl<$Res, RefundApplyResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int errCode,
      @JsonKey(name: 'message') String errMsg,
      bool ok,
      @JsonKey(name: 'data', fromJson: _dataFromJson) RefundApplyData? data});

  $RefundApplyDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$RefundApplyResponseCopyWithImpl<$Res, $Val extends RefundApplyResponse>
    implements $RefundApplyResponseCopyWith<$Res> {
  _$RefundApplyResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefundApplyResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errCode = null,
    Object? errMsg = null,
    Object? ok = null,
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
      ok: null == ok
          ? _value.ok
          : ok // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RefundApplyData?,
    ) as $Val);
  }

  /// Create a copy of RefundApplyResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RefundApplyDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $RefundApplyDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RefundApplyResponseImplCopyWith<$Res>
    implements $RefundApplyResponseCopyWith<$Res> {
  factory _$$RefundApplyResponseImplCopyWith(_$RefundApplyResponseImpl value,
          $Res Function(_$RefundApplyResponseImpl) then) =
      __$$RefundApplyResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int errCode,
      @JsonKey(name: 'message') String errMsg,
      bool ok,
      @JsonKey(name: 'data', fromJson: _dataFromJson) RefundApplyData? data});

  @override
  $RefundApplyDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$RefundApplyResponseImplCopyWithImpl<$Res>
    extends _$RefundApplyResponseCopyWithImpl<$Res, _$RefundApplyResponseImpl>
    implements _$$RefundApplyResponseImplCopyWith<$Res> {
  __$$RefundApplyResponseImplCopyWithImpl(_$RefundApplyResponseImpl _value,
      $Res Function(_$RefundApplyResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefundApplyResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errCode = null,
    Object? errMsg = null,
    Object? ok = null,
    Object? data = freezed,
  }) {
    return _then(_$RefundApplyResponseImpl(
      errCode: null == errCode
          ? _value.errCode
          : errCode // ignore: cast_nullable_to_non_nullable
              as int,
      errMsg: null == errMsg
          ? _value.errMsg
          : errMsg // ignore: cast_nullable_to_non_nullable
              as String,
      ok: null == ok
          ? _value.ok
          : ok // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RefundApplyData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RefundApplyResponseImpl implements _RefundApplyResponse {
  const _$RefundApplyResponseImpl(
      {@JsonKey(name: 'code') this.errCode = 0,
      @JsonKey(name: 'message') this.errMsg = '',
      this.ok = true,
      @JsonKey(name: 'data', fromJson: _dataFromJson) this.data});

  factory _$RefundApplyResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefundApplyResponseImplFromJson(json);

  @override
  @JsonKey(name: 'code')
  final int errCode;
  @override
  @JsonKey(name: 'message')
  final String errMsg;
  @override
  @JsonKey()
  final bool ok;
  @override
  @JsonKey(name: 'data', fromJson: _dataFromJson)
  final RefundApplyData? data;

  @override
  String toString() {
    return 'RefundApplyResponse(errCode: $errCode, errMsg: $errMsg, ok: $ok, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefundApplyResponseImpl &&
            (identical(other.errCode, errCode) || other.errCode == errCode) &&
            (identical(other.errMsg, errMsg) || other.errMsg == errMsg) &&
            (identical(other.ok, ok) || other.ok == ok) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, errCode, errMsg, ok, data);

  /// Create a copy of RefundApplyResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefundApplyResponseImplCopyWith<_$RefundApplyResponseImpl> get copyWith =>
      __$$RefundApplyResponseImplCopyWithImpl<_$RefundApplyResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefundApplyResponseImplToJson(
      this,
    );
  }
}

abstract class _RefundApplyResponse implements RefundApplyResponse {
  const factory _RefundApplyResponse(
      {@JsonKey(name: 'code') final int errCode,
      @JsonKey(name: 'message') final String errMsg,
      final bool ok,
      @JsonKey(name: 'data', fromJson: _dataFromJson)
      final RefundApplyData? data}) = _$RefundApplyResponseImpl;

  factory _RefundApplyResponse.fromJson(Map<String, dynamic> json) =
      _$RefundApplyResponseImpl.fromJson;

  @override
  @JsonKey(name: 'code')
  int get errCode;
  @override
  @JsonKey(name: 'message')
  String get errMsg;
  @override
  bool get ok;
  @override
  @JsonKey(name: 'data', fromJson: _dataFromJson)
  RefundApplyData? get data;

  /// Create a copy of RefundApplyResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefundApplyResponseImplCopyWith<_$RefundApplyResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RefundApplyData _$RefundApplyDataFromJson(Map<String, dynamic> json) {
  return _RefundApplyData.fromJson(json);
}

/// @nodoc
mixin _$RefundApplyData {
  String get id => throw _privateConstructorUsedError;
  String get refundNo => throw _privateConstructorUsedError;
  String get orderId => throw _privateConstructorUsedError;
  String get orderNo => throw _privateConstructorUsedError;
  String get refundType => throw _privateConstructorUsedError;
  double get refundAmount => throw _privateConstructorUsedError;
  String get refundReason => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get evidenceImages => throw _privateConstructorUsedError;
  String get evidenceVideos => throw _privateConstructorUsedError;
  String get evidenceFiles => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get statusText => throw _privateConstructorUsedError;
  String get reviewTime => throw _privateConstructorUsedError;
  String get reviewerName => throw _privateConstructorUsedError;
  String get reviewRemark => throw _privateConstructorUsedError;
  String get reviewComment => throw _privateConstructorUsedError;
  String get completeTime => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this RefundApplyData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RefundApplyData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefundApplyDataCopyWith<RefundApplyData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefundApplyDataCopyWith<$Res> {
  factory $RefundApplyDataCopyWith(
          RefundApplyData value, $Res Function(RefundApplyData) then) =
      _$RefundApplyDataCopyWithImpl<$Res, RefundApplyData>;
  @useResult
  $Res call(
      {String id,
      String refundNo,
      String orderId,
      String orderNo,
      String refundType,
      double refundAmount,
      String refundReason,
      String description,
      String evidenceImages,
      String evidenceVideos,
      String evidenceFiles,
      String status,
      String statusText,
      String reviewTime,
      String reviewerName,
      String reviewRemark,
      String reviewComment,
      String completeTime,
      String createdAt,
      String updatedAt});
}

/// @nodoc
class _$RefundApplyDataCopyWithImpl<$Res, $Val extends RefundApplyData>
    implements $RefundApplyDataCopyWith<$Res> {
  _$RefundApplyDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefundApplyData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? refundNo = null,
    Object? orderId = null,
    Object? orderNo = null,
    Object? refundType = null,
    Object? refundAmount = null,
    Object? refundReason = null,
    Object? description = null,
    Object? evidenceImages = null,
    Object? evidenceVideos = null,
    Object? evidenceFiles = null,
    Object? status = null,
    Object? statusText = null,
    Object? reviewTime = null,
    Object? reviewerName = null,
    Object? reviewRemark = null,
    Object? reviewComment = null,
    Object? completeTime = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      refundNo: null == refundNo
          ? _value.refundNo
          : refundNo // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      orderNo: null == orderNo
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as String,
      refundType: null == refundType
          ? _value.refundType
          : refundType // ignore: cast_nullable_to_non_nullable
              as String,
      refundAmount: null == refundAmount
          ? _value.refundAmount
          : refundAmount // ignore: cast_nullable_to_non_nullable
              as double,
      refundReason: null == refundReason
          ? _value.refundReason
          : refundReason // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      evidenceImages: null == evidenceImages
          ? _value.evidenceImages
          : evidenceImages // ignore: cast_nullable_to_non_nullable
              as String,
      evidenceVideos: null == evidenceVideos
          ? _value.evidenceVideos
          : evidenceVideos // ignore: cast_nullable_to_non_nullable
              as String,
      evidenceFiles: null == evidenceFiles
          ? _value.evidenceFiles
          : evidenceFiles // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      statusText: null == statusText
          ? _value.statusText
          : statusText // ignore: cast_nullable_to_non_nullable
              as String,
      reviewTime: null == reviewTime
          ? _value.reviewTime
          : reviewTime // ignore: cast_nullable_to_non_nullable
              as String,
      reviewerName: null == reviewerName
          ? _value.reviewerName
          : reviewerName // ignore: cast_nullable_to_non_nullable
              as String,
      reviewRemark: null == reviewRemark
          ? _value.reviewRemark
          : reviewRemark // ignore: cast_nullable_to_non_nullable
              as String,
      reviewComment: null == reviewComment
          ? _value.reviewComment
          : reviewComment // ignore: cast_nullable_to_non_nullable
              as String,
      completeTime: null == completeTime
          ? _value.completeTime
          : completeTime // ignore: cast_nullable_to_non_nullable
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
abstract class _$$RefundApplyDataImplCopyWith<$Res>
    implements $RefundApplyDataCopyWith<$Res> {
  factory _$$RefundApplyDataImplCopyWith(_$RefundApplyDataImpl value,
          $Res Function(_$RefundApplyDataImpl) then) =
      __$$RefundApplyDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String refundNo,
      String orderId,
      String orderNo,
      String refundType,
      double refundAmount,
      String refundReason,
      String description,
      String evidenceImages,
      String evidenceVideos,
      String evidenceFiles,
      String status,
      String statusText,
      String reviewTime,
      String reviewerName,
      String reviewRemark,
      String reviewComment,
      String completeTime,
      String createdAt,
      String updatedAt});
}

/// @nodoc
class __$$RefundApplyDataImplCopyWithImpl<$Res>
    extends _$RefundApplyDataCopyWithImpl<$Res, _$RefundApplyDataImpl>
    implements _$$RefundApplyDataImplCopyWith<$Res> {
  __$$RefundApplyDataImplCopyWithImpl(
      _$RefundApplyDataImpl _value, $Res Function(_$RefundApplyDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefundApplyData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? refundNo = null,
    Object? orderId = null,
    Object? orderNo = null,
    Object? refundType = null,
    Object? refundAmount = null,
    Object? refundReason = null,
    Object? description = null,
    Object? evidenceImages = null,
    Object? evidenceVideos = null,
    Object? evidenceFiles = null,
    Object? status = null,
    Object? statusText = null,
    Object? reviewTime = null,
    Object? reviewerName = null,
    Object? reviewRemark = null,
    Object? reviewComment = null,
    Object? completeTime = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$RefundApplyDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      refundNo: null == refundNo
          ? _value.refundNo
          : refundNo // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      orderNo: null == orderNo
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as String,
      refundType: null == refundType
          ? _value.refundType
          : refundType // ignore: cast_nullable_to_non_nullable
              as String,
      refundAmount: null == refundAmount
          ? _value.refundAmount
          : refundAmount // ignore: cast_nullable_to_non_nullable
              as double,
      refundReason: null == refundReason
          ? _value.refundReason
          : refundReason // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      evidenceImages: null == evidenceImages
          ? _value.evidenceImages
          : evidenceImages // ignore: cast_nullable_to_non_nullable
              as String,
      evidenceVideos: null == evidenceVideos
          ? _value.evidenceVideos
          : evidenceVideos // ignore: cast_nullable_to_non_nullable
              as String,
      evidenceFiles: null == evidenceFiles
          ? _value.evidenceFiles
          : evidenceFiles // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      statusText: null == statusText
          ? _value.statusText
          : statusText // ignore: cast_nullable_to_non_nullable
              as String,
      reviewTime: null == reviewTime
          ? _value.reviewTime
          : reviewTime // ignore: cast_nullable_to_non_nullable
              as String,
      reviewerName: null == reviewerName
          ? _value.reviewerName
          : reviewerName // ignore: cast_nullable_to_non_nullable
              as String,
      reviewRemark: null == reviewRemark
          ? _value.reviewRemark
          : reviewRemark // ignore: cast_nullable_to_non_nullable
              as String,
      reviewComment: null == reviewComment
          ? _value.reviewComment
          : reviewComment // ignore: cast_nullable_to_non_nullable
              as String,
      completeTime: null == completeTime
          ? _value.completeTime
          : completeTime // ignore: cast_nullable_to_non_nullable
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
class _$RefundApplyDataImpl implements _RefundApplyData {
  const _$RefundApplyDataImpl(
      {required this.id,
      required this.refundNo,
      required this.orderId,
      required this.orderNo,
      required this.refundType,
      required this.refundAmount,
      required this.refundReason,
      this.description = '',
      this.evidenceImages = '',
      this.evidenceVideos = '',
      this.evidenceFiles = '',
      required this.status,
      required this.statusText,
      this.reviewTime = '',
      this.reviewerName = '',
      this.reviewRemark = '',
      this.reviewComment = '',
      this.completeTime = '',
      required this.createdAt,
      required this.updatedAt});

  factory _$RefundApplyDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefundApplyDataImplFromJson(json);

  @override
  final String id;
  @override
  final String refundNo;
  @override
  final String orderId;
  @override
  final String orderNo;
  @override
  final String refundType;
  @override
  final double refundAmount;
  @override
  final String refundReason;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String evidenceImages;
  @override
  @JsonKey()
  final String evidenceVideos;
  @override
  @JsonKey()
  final String evidenceFiles;
  @override
  final String status;
  @override
  final String statusText;
  @override
  @JsonKey()
  final String reviewTime;
  @override
  @JsonKey()
  final String reviewerName;
  @override
  @JsonKey()
  final String reviewRemark;
  @override
  @JsonKey()
  final String reviewComment;
  @override
  @JsonKey()
  final String completeTime;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  @override
  String toString() {
    return 'RefundApplyData(id: $id, refundNo: $refundNo, orderId: $orderId, orderNo: $orderNo, refundType: $refundType, refundAmount: $refundAmount, refundReason: $refundReason, description: $description, evidenceImages: $evidenceImages, evidenceVideos: $evidenceVideos, evidenceFiles: $evidenceFiles, status: $status, statusText: $statusText, reviewTime: $reviewTime, reviewerName: $reviewerName, reviewRemark: $reviewRemark, reviewComment: $reviewComment, completeTime: $completeTime, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefundApplyDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.refundNo, refundNo) ||
                other.refundNo == refundNo) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.orderNo, orderNo) || other.orderNo == orderNo) &&
            (identical(other.refundType, refundType) ||
                other.refundType == refundType) &&
            (identical(other.refundAmount, refundAmount) ||
                other.refundAmount == refundAmount) &&
            (identical(other.refundReason, refundReason) ||
                other.refundReason == refundReason) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.evidenceImages, evidenceImages) ||
                other.evidenceImages == evidenceImages) &&
            (identical(other.evidenceVideos, evidenceVideos) ||
                other.evidenceVideos == evidenceVideos) &&
            (identical(other.evidenceFiles, evidenceFiles) ||
                other.evidenceFiles == evidenceFiles) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusText, statusText) ||
                other.statusText == statusText) &&
            (identical(other.reviewTime, reviewTime) ||
                other.reviewTime == reviewTime) &&
            (identical(other.reviewerName, reviewerName) ||
                other.reviewerName == reviewerName) &&
            (identical(other.reviewRemark, reviewRemark) ||
                other.reviewRemark == reviewRemark) &&
            (identical(other.reviewComment, reviewComment) ||
                other.reviewComment == reviewComment) &&
            (identical(other.completeTime, completeTime) ||
                other.completeTime == completeTime) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        refundNo,
        orderId,
        orderNo,
        refundType,
        refundAmount,
        refundReason,
        description,
        evidenceImages,
        evidenceVideos,
        evidenceFiles,
        status,
        statusText,
        reviewTime,
        reviewerName,
        reviewRemark,
        reviewComment,
        completeTime,
        createdAt,
        updatedAt
      ]);

  /// Create a copy of RefundApplyData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefundApplyDataImplCopyWith<_$RefundApplyDataImpl> get copyWith =>
      __$$RefundApplyDataImplCopyWithImpl<_$RefundApplyDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefundApplyDataImplToJson(
      this,
    );
  }
}

abstract class _RefundApplyData implements RefundApplyData {
  const factory _RefundApplyData(
      {required final String id,
      required final String refundNo,
      required final String orderId,
      required final String orderNo,
      required final String refundType,
      required final double refundAmount,
      required final String refundReason,
      final String description,
      final String evidenceImages,
      final String evidenceVideos,
      final String evidenceFiles,
      required final String status,
      required final String statusText,
      final String reviewTime,
      final String reviewerName,
      final String reviewRemark,
      final String reviewComment,
      final String completeTime,
      required final String createdAt,
      required final String updatedAt}) = _$RefundApplyDataImpl;

  factory _RefundApplyData.fromJson(Map<String, dynamic> json) =
      _$RefundApplyDataImpl.fromJson;

  @override
  String get id;
  @override
  String get refundNo;
  @override
  String get orderId;
  @override
  String get orderNo;
  @override
  String get refundType;
  @override
  double get refundAmount;
  @override
  String get refundReason;
  @override
  String get description;
  @override
  String get evidenceImages;
  @override
  String get evidenceVideos;
  @override
  String get evidenceFiles;
  @override
  String get status;
  @override
  String get statusText;
  @override
  String get reviewTime;
  @override
  String get reviewerName;
  @override
  String get reviewRemark;
  @override
  String get reviewComment;
  @override
  String get completeTime;
  @override
  String get createdAt;
  @override
  String get updatedAt;

  /// Create a copy of RefundApplyData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefundApplyDataImplCopyWith<_$RefundApplyDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
