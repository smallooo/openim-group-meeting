import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_models.freezed.dart';
part 'product_models.g.dart';

/// 商品列表请求参数
@freezed
class ProductListRequest with _$ProductListRequest {
  const factory ProductListRequest({
    required int categoryId,
    required int page,
    required int size,
  }) = _ProductListRequest;

  factory ProductListRequest.fromJson(Map<String, dynamic> json) =>
      _$ProductListRequestFromJson(json);
}

/// 商品列表响应
@freezed
class ProductListResponse with _$ProductListResponse {
  const factory ProductListResponse({
    @Default(0) int errCode,
    @Default('') String errMsg,
    required ProductListData data,
  }) = _ProductListResponse;

  factory ProductListResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductListResponseFromJson(json);
}

/// 商品列表数据
@freezed
class ProductListData with _$ProductListData {
  const factory ProductListData({
    required String total,
    required List<ProductModel> list,
    @Default(1) int page,
    @Default(20) int size,
    @Default('') String totalPages,
  }) = _ProductListData;

  factory ProductListData.fromJson(Map<String, dynamic> json) =>
      _$ProductListDataFromJson(json);
}

/// 商品模型
@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    required String id,
    @Default('') String channelId,
    required String name,
    required String subName,
    @Default(0.0) double defaultPrice,
    required String defaultPic,
    required String categoryId,
    required String categoryName,
    @Default('') String parentCategoryId,
    @Default('') String parentCategoryName,
    required String brandId,
    required String brandName,
    @Default(0) int publishStatus,
    @Default(0) int verifyStatus,
    @Default(0) int salesCount,
    @Default(0.0) double rating,
    @Default(0) int reviewCount,
    required String createdAt,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
