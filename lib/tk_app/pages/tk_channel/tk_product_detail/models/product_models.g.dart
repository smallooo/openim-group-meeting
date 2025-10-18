// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductDetailResponseImpl _$$ProductDetailResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductDetailResponseImpl(
      errCode: (json['errCode'] as num?)?.toInt() ?? 0,
      errMsg: json['errMsg'] as String? ?? '',
      data: json['data'] == null
          ? null
          : ProductDetailModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductDetailResponseImplToJson(
        _$ProductDetailResponseImpl instance) =>
    <String, dynamic>{
      'errCode': instance.errCode,
      'errMsg': instance.errMsg,
      'data': instance.data,
    };

_$ProductDetailModelImpl _$$ProductDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductDetailModelImpl(
      id: json['id'] as String? ?? '',
      channelId: json['channelId'] as String? ?? '',
      name: json['name'] as String? ?? '',
      subName: json['subName'] as String? ?? '',
      defaultPrice: (json['defaultPrice'] as num?)?.toInt() ?? 0,
      defaultPic: json['defaultPic'] as String? ?? '',
      picList: (json['picList'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      categoryId: json['categoryId'] as String? ?? '',
      categoryName: json['categoryName'] as String? ?? '',
      parentCategoryId: json['parentCategoryId'] as String? ?? '',
      parentCategoryName: json['parentCategoryName'] as String? ?? '',
      brandId: json['brandId'] as String? ?? '',
      brandName: json['brandName'] as String? ?? '',
      packageList: json['packageList'] as String? ?? '',
      detailHtml: json['detailHtml'] as String? ?? '',
      detailMobile: json['detailMobile'] as String? ?? '',
      publishStatus: (json['publishStatus'] as num?)?.toInt() ?? 0,
      verifyStatus: (json['verifyStatus'] as num?)?.toInt() ?? 0,
      salesCount: (json['salesCount'] as num?)?.toInt() ?? 0,
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
      reviewCount: (json['reviewCount'] as num?)?.toInt() ?? 0,
      createdAt: json['createdAt'] as String? ?? '',
      updatedAt: json['updatedAt'] as String? ?? '',
      sellerId: json['sellerId'] as String? ?? '',
      sellerName: json['sellerName'] as String? ?? '',
      sellerAvatar: json['sellerAvatar'] as String? ?? '',
      sellerPhone: json['sellerPhone'] as String? ?? '',
      sellerEmail: json['sellerEmail'] as String? ?? '',
      shopId: json['shopId'] as String? ?? '',
      shopName: json['shopName'] as String? ?? '',
      shopLogo: json['shopLogo'] as String? ?? '',
      shopDescription: json['shopDescription'] as String? ?? '',
      shopRating: (json['shopRating'] as num?)?.toDouble() ?? 0.0,
      shopSalesCount: (json['shopSalesCount'] as num?)?.toInt() ?? 0,
      specifications: json['specifications'] as String? ?? '',
      skus: json['skus'] == null ? const [] : _skusFromJson(json['skus']),
    );

Map<String, dynamic> _$$ProductDetailModelImplToJson(
        _$ProductDetailModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'channelId': instance.channelId,
      'name': instance.name,
      'subName': instance.subName,
      'defaultPrice': instance.defaultPrice,
      'defaultPic': instance.defaultPic,
      'picList': instance.picList,
      'categoryId': instance.categoryId,
      'categoryName': instance.categoryName,
      'parentCategoryId': instance.parentCategoryId,
      'parentCategoryName': instance.parentCategoryName,
      'brandId': instance.brandId,
      'brandName': instance.brandName,
      'packageList': instance.packageList,
      'detailHtml': instance.detailHtml,
      'detailMobile': instance.detailMobile,
      'publishStatus': instance.publishStatus,
      'verifyStatus': instance.verifyStatus,
      'salesCount': instance.salesCount,
      'rating': instance.rating,
      'reviewCount': instance.reviewCount,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'sellerId': instance.sellerId,
      'sellerName': instance.sellerName,
      'sellerAvatar': instance.sellerAvatar,
      'sellerPhone': instance.sellerPhone,
      'sellerEmail': instance.sellerEmail,
      'shopId': instance.shopId,
      'shopName': instance.shopName,
      'shopLogo': instance.shopLogo,
      'shopDescription': instance.shopDescription,
      'shopRating': instance.shopRating,
      'shopSalesCount': instance.shopSalesCount,
      'specifications': instance.specifications,
      'skus': instance.skus,
    };

_$ProductSkuModelImpl _$$ProductSkuModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductSkuModelImpl(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      price: (json['price'] as num?)?.toInt() ?? 0,
      promotionPrice: json['promotionPrice'] as String? ?? '',
      stock: json['stock'] as String? ?? '',
      specs: json['specs'] as String? ?? '',
      skuCode: json['skuCode'] as String? ?? '',
      status: (json['status'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ProductSkuModelImplToJson(
        _$ProductSkuModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'promotionPrice': instance.promotionPrice,
      'stock': instance.stock,
      'specs': instance.specs,
      'skuCode': instance.skuCode,
      'status': instance.status,
    };
