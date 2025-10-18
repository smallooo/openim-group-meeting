import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_models.freezed.dart';
part 'product_models.g.dart';

/// 处理 skus 字段的转换，支持空字符串和列表
List<ProductSkuModel> _skusFromJson(dynamic json) {
  if (json == null) return [];
  if (json is String && json.isEmpty) return [];
  if (json is List) {
    return json.map((e) => ProductSkuModel.fromJson(e as Map<String, dynamic>)).toList();
  }
  return [];
}

/// 商品详情响应模型
@freezed
class ProductDetailResponse with _$ProductDetailResponse {
  const factory ProductDetailResponse({
    @Default(0) int errCode,
    @Default('') String errMsg,
    ProductDetailModel? data,
  }) = _ProductDetailResponse;

  factory ProductDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailResponseFromJson(json);
}

/// 商品详情模型
@freezed
class ProductDetailModel with _$ProductDetailModel {
  const factory ProductDetailModel({
    @Default('') String id,
    @Default('') String channelId,
    @Default('') String name,
    @Default('') String subName,
    @Default(0) int defaultPrice,
    @Default('') String defaultPic,
    @Default([]) List<String> picList,
    @Default('') String categoryId,
    @Default('') String categoryName,
    @Default('') String parentCategoryId,
    @Default('') String parentCategoryName,
    @Default('') String brandId,
    @Default('') String brandName,
    @Default('') String packageList,
    @Default('') String detailHtml,
    @Default('') String detailMobile,
    @Default(0) int publishStatus,
    @Default(0) int verifyStatus,
    @Default(0) int salesCount,
    @Default(0.0) double rating,
    @Default(0) int reviewCount,
    @Default('') String createdAt,
    @Default('') String updatedAt,
    @Default('') String sellerId,
    @Default('') String sellerName,
    @Default('') String sellerAvatar,
    @Default('') String sellerPhone,
    @Default('') String sellerEmail,
    @Default('') String shopId,
    @Default('') String shopName,
    @Default('') String shopLogo,
    @Default('') String shopDescription,
    @Default(0.0) double shopRating,
    @Default(0) int shopSalesCount,
    @Default('') String specifications,
    @JsonKey(fromJson: _skusFromJson) @Default([]) List<ProductSkuModel> skus,
  }) = _ProductDetailModel;

  factory ProductDetailModel.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailModelFromJson(json);
}

/// 商品SKU模型
@freezed
class ProductSkuModel with _$ProductSkuModel {
  const factory ProductSkuModel({
    @Default('') String id,
    @Default('') String name,
    @Default(0) int price,
    @Default('') String promotionPrice,
    @Default('') String stock,
    @Default('') String specs,
    @Default('') String skuCode,
    @Default(0) int status,
  }) = _ProductSkuModel;

  factory ProductSkuModel.fromJson(Map<String, dynamic> json) =>
      _$ProductSkuModelFromJson(json);
}
