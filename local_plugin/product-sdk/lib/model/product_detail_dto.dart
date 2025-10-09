//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProductDetailDTO {
  /// Returns a new [ProductDetailDTO] instance.
  ProductDetailDTO({
    this.id,
    this.channelId,
    this.name,
    this.subName,
    this.defaultPrice,
    this.defaultPic,
    this.picList = const [],
    this.categoryId,
    this.categoryName,
    this.parentCategoryId,
    this.parentCategoryName,
    this.brandId,
    this.brandName,
    this.packageList,
    this.detailHtml,
    this.detailMobile,
    this.publishStatus,
    this.verifyStatus,
    this.salesCount,
    this.rating,
    this.reviewCount,
    this.createdAt,
    this.updatedAt,
    this.sellerId,
    this.sellerName,
    this.sellerAvatar,
    this.sellerPhone,
    this.sellerEmail,
    this.shopId,
    this.shopName,
    this.shopLogo,
    this.shopDescription,
    this.shopRating,
    this.shopSalesCount,
    this.specifications = const [],
    this.skus = const [],
  });

  /// 商品ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// 频道ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? channelId;

  /// 商品名称
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// 商品副名称
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subName;

  /// 默认价格
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? defaultPrice;

  /// 默认图片地址
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? defaultPic;

  /// 商品图片列表
  List<String> picList;

  /// 分类ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? categoryId;

  /// 分类名称
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? categoryName;

  /// 父类目ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? parentCategoryId;

  /// 父类目名称
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? parentCategoryName;

  /// 品牌ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? brandId;

  /// 品牌名称
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? brandName;

  /// 包装清单
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? packageList;

  /// PC商品详情富文本内容
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? detailHtml;

  /// 移动端商品详情富文本内容
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? detailMobile;

  /// 上架状态:0->下架; 1->上架
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? publishStatus;

  /// 审核状态:0->未审核; 1->审核通过
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? verifyStatus;

  /// 销量
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? salesCount;

  /// 评分
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? rating;

  /// 评价数量
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? reviewCount;

  /// 创建时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  /// 更新时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  /// 商家ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sellerId;

  /// 商家名称
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sellerName;

  /// 商家头像
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sellerAvatar;

  /// 商家联系电话
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sellerPhone;

  /// 商家邮箱
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sellerEmail;

  /// 店铺ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? shopId;

  /// 店铺名称
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? shopName;

  /// 店铺Logo
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? shopLogo;

  /// 店铺描述
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? shopDescription;

  /// 店铺评分
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? shopRating;

  /// 店铺销量
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? shopSalesCount;

  /// 商品规格列表
  List<Specification> specifications;

  /// SKU列表
  List<SkuItem> skus;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductDetailDTO &&
          other.id == id &&
          other.channelId == channelId &&
          other.name == name &&
          other.subName == subName &&
          other.defaultPrice == defaultPrice &&
          other.defaultPic == defaultPic &&
          other.picList == picList &&
          other.categoryId == categoryId &&
          other.categoryName == categoryName &&
          other.parentCategoryId == parentCategoryId &&
          other.parentCategoryName == parentCategoryName &&
          other.brandId == brandId &&
          other.brandName == brandName &&
          other.packageList == packageList &&
          other.detailHtml == detailHtml &&
          other.detailMobile == detailMobile &&
          other.publishStatus == publishStatus &&
          other.verifyStatus == verifyStatus &&
          other.salesCount == salesCount &&
          other.rating == rating &&
          other.reviewCount == reviewCount &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.sellerId == sellerId &&
          other.sellerName == sellerName &&
          other.sellerAvatar == sellerAvatar &&
          other.sellerPhone == sellerPhone &&
          other.sellerEmail == sellerEmail &&
          other.shopId == shopId &&
          other.shopName == shopName &&
          other.shopLogo == shopLogo &&
          other.shopDescription == shopDescription &&
          other.shopRating == shopRating &&
          other.shopSalesCount == shopSalesCount &&
          other.specifications == specifications &&
          other.skus == skus;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (channelId == null ? 0 : channelId!.hashCode) +
      (name == null ? 0 : name!.hashCode) +
      (subName == null ? 0 : subName!.hashCode) +
      (defaultPrice == null ? 0 : defaultPrice!.hashCode) +
      (defaultPic == null ? 0 : defaultPic!.hashCode) +
      (picList.hashCode) +
      (categoryId == null ? 0 : categoryId!.hashCode) +
      (categoryName == null ? 0 : categoryName!.hashCode) +
      (parentCategoryId == null ? 0 : parentCategoryId!.hashCode) +
      (parentCategoryName == null ? 0 : parentCategoryName!.hashCode) +
      (brandId == null ? 0 : brandId!.hashCode) +
      (brandName == null ? 0 : brandName!.hashCode) +
      (packageList == null ? 0 : packageList!.hashCode) +
      (detailHtml == null ? 0 : detailHtml!.hashCode) +
      (detailMobile == null ? 0 : detailMobile!.hashCode) +
      (publishStatus == null ? 0 : publishStatus!.hashCode) +
      (verifyStatus == null ? 0 : verifyStatus!.hashCode) +
      (salesCount == null ? 0 : salesCount!.hashCode) +
      (rating == null ? 0 : rating!.hashCode) +
      (reviewCount == null ? 0 : reviewCount!.hashCode) +
      (createdAt == null ? 0 : createdAt!.hashCode) +
      (updatedAt == null ? 0 : updatedAt!.hashCode) +
      (sellerId == null ? 0 : sellerId!.hashCode) +
      (sellerName == null ? 0 : sellerName!.hashCode) +
      (sellerAvatar == null ? 0 : sellerAvatar!.hashCode) +
      (sellerPhone == null ? 0 : sellerPhone!.hashCode) +
      (sellerEmail == null ? 0 : sellerEmail!.hashCode) +
      (shopId == null ? 0 : shopId!.hashCode) +
      (shopName == null ? 0 : shopName!.hashCode) +
      (shopLogo == null ? 0 : shopLogo!.hashCode) +
      (shopDescription == null ? 0 : shopDescription!.hashCode) +
      (shopRating == null ? 0 : shopRating!.hashCode) +
      (shopSalesCount == null ? 0 : shopSalesCount!.hashCode) +
      (specifications.hashCode) +
      (skus.hashCode);

  @override
  String toString() =>
      'ProductDetailDTO[id=$id, channelId=$channelId, name=$name, subName=$subName, defaultPrice=$defaultPrice, defaultPic=$defaultPic, picList=$picList, categoryId=$categoryId, categoryName=$categoryName, parentCategoryId=$parentCategoryId, parentCategoryName=$parentCategoryName, brandId=$brandId, brandName=$brandName, packageList=$packageList, detailHtml=$detailHtml, detailMobile=$detailMobile, publishStatus=$publishStatus, verifyStatus=$verifyStatus, salesCount=$salesCount, rating=$rating, reviewCount=$reviewCount, createdAt=$createdAt, updatedAt=$updatedAt, sellerId=$sellerId, sellerName=$sellerName, sellerAvatar=$sellerAvatar, sellerPhone=$sellerPhone, sellerEmail=$sellerEmail, shopId=$shopId, shopName=$shopName, shopLogo=$shopLogo, shopDescription=$shopDescription, shopRating=$shopRating, shopSalesCount=$shopSalesCount, specifications=$specifications, skus=$skus]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.channelId != null) {
      json[r'channelId'] = this.channelId;
    } else {
      json[r'channelId'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.subName != null) {
      json[r'subName'] = this.subName;
    } else {
      json[r'subName'] = null;
    }
    if (this.defaultPrice != null) {
      json[r'defaultPrice'] = this.defaultPrice;
    } else {
      json[r'defaultPrice'] = null;
    }
    if (this.defaultPic != null) {
      json[r'defaultPic'] = this.defaultPic;
    } else {
      json[r'defaultPic'] = null;
    }
    json[r'picList'] = this.picList;
    if (this.categoryId != null) {
      json[r'categoryId'] = this.categoryId;
    } else {
      json[r'categoryId'] = null;
    }
    if (this.categoryName != null) {
      json[r'categoryName'] = this.categoryName;
    } else {
      json[r'categoryName'] = null;
    }
    if (this.parentCategoryId != null) {
      json[r'parentCategoryId'] = this.parentCategoryId;
    } else {
      json[r'parentCategoryId'] = null;
    }
    if (this.parentCategoryName != null) {
      json[r'parentCategoryName'] = this.parentCategoryName;
    } else {
      json[r'parentCategoryName'] = null;
    }
    if (this.brandId != null) {
      json[r'brandId'] = this.brandId;
    } else {
      json[r'brandId'] = null;
    }
    if (this.brandName != null) {
      json[r'brandName'] = this.brandName;
    } else {
      json[r'brandName'] = null;
    }
    if (this.packageList != null) {
      json[r'packageList'] = this.packageList;
    } else {
      json[r'packageList'] = null;
    }
    if (this.detailHtml != null) {
      json[r'detailHtml'] = this.detailHtml;
    } else {
      json[r'detailHtml'] = null;
    }
    if (this.detailMobile != null) {
      json[r'detailMobile'] = this.detailMobile;
    } else {
      json[r'detailMobile'] = null;
    }
    if (this.publishStatus != null) {
      json[r'publishStatus'] = this.publishStatus;
    } else {
      json[r'publishStatus'] = null;
    }
    if (this.verifyStatus != null) {
      json[r'verifyStatus'] = this.verifyStatus;
    } else {
      json[r'verifyStatus'] = null;
    }
    if (this.salesCount != null) {
      json[r'salesCount'] = this.salesCount;
    } else {
      json[r'salesCount'] = null;
    }
    if (this.rating != null) {
      json[r'rating'] = this.rating;
    } else {
      json[r'rating'] = null;
    }
    if (this.reviewCount != null) {
      json[r'reviewCount'] = this.reviewCount;
    } else {
      json[r'reviewCount'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'createdAt'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updatedAt'] = null;
    }
    if (this.sellerId != null) {
      json[r'sellerId'] = this.sellerId;
    } else {
      json[r'sellerId'] = null;
    }
    if (this.sellerName != null) {
      json[r'sellerName'] = this.sellerName;
    } else {
      json[r'sellerName'] = null;
    }
    if (this.sellerAvatar != null) {
      json[r'sellerAvatar'] = this.sellerAvatar;
    } else {
      json[r'sellerAvatar'] = null;
    }
    if (this.sellerPhone != null) {
      json[r'sellerPhone'] = this.sellerPhone;
    } else {
      json[r'sellerPhone'] = null;
    }
    if (this.sellerEmail != null) {
      json[r'sellerEmail'] = this.sellerEmail;
    } else {
      json[r'sellerEmail'] = null;
    }
    if (this.shopId != null) {
      json[r'shopId'] = this.shopId;
    } else {
      json[r'shopId'] = null;
    }
    if (this.shopName != null) {
      json[r'shopName'] = this.shopName;
    } else {
      json[r'shopName'] = null;
    }
    if (this.shopLogo != null) {
      json[r'shopLogo'] = this.shopLogo;
    } else {
      json[r'shopLogo'] = null;
    }
    if (this.shopDescription != null) {
      json[r'shopDescription'] = this.shopDescription;
    } else {
      json[r'shopDescription'] = null;
    }
    if (this.shopRating != null) {
      json[r'shopRating'] = this.shopRating;
    } else {
      json[r'shopRating'] = null;
    }
    if (this.shopSalesCount != null) {
      json[r'shopSalesCount'] = this.shopSalesCount;
    } else {
      json[r'shopSalesCount'] = null;
    }
    json[r'specifications'] = this.specifications;
    json[r'skus'] = this.skus;
    return json;
  }

  /// Returns a new [ProductDetailDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProductDetailDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ProductDetailDTO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ProductDetailDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProductDetailDTO(
        id: mapValueOfType<int>(json, r'id'),
        channelId: mapValueOfType<int>(json, r'channelId'),
        name: mapValueOfType<String>(json, r'name'),
        subName: mapValueOfType<String>(json, r'subName'),
        defaultPrice: json[r'defaultPrice'] == null
            ? null
            : num.parse(json[r'defaultPrice'].toString()),
        defaultPic: mapValueOfType<String>(json, r'defaultPic'),
        picList: json[r'picList'] is List
            ? (json[r'picList'] as List).cast<String>()
            : const [],
        categoryId: mapValueOfType<int>(json, r'categoryId'),
        categoryName: mapValueOfType<String>(json, r'categoryName'),
        parentCategoryId: mapValueOfType<int>(json, r'parentCategoryId'),
        parentCategoryName: mapValueOfType<String>(json, r'parentCategoryName'),
        brandId: mapValueOfType<int>(json, r'brandId'),
        brandName: mapValueOfType<String>(json, r'brandName'),
        packageList: mapValueOfType<String>(json, r'packageList'),
        detailHtml: mapValueOfType<String>(json, r'detailHtml'),
        detailMobile: mapValueOfType<String>(json, r'detailMobile'),
        publishStatus: mapValueOfType<int>(json, r'publishStatus'),
        verifyStatus: mapValueOfType<int>(json, r'verifyStatus'),
        salesCount: mapValueOfType<int>(json, r'salesCount'),
        rating: json[r'rating'] == null
            ? null
            : num.parse(json[r'rating'].toString()),
        reviewCount: mapValueOfType<int>(json, r'reviewCount'),
        createdAt: mapDateTime(json, r'createdAt', ''),
        updatedAt: mapDateTime(json, r'updatedAt', ''),
        sellerId: mapValueOfType<int>(json, r'sellerId'),
        sellerName: mapValueOfType<String>(json, r'sellerName'),
        sellerAvatar: mapValueOfType<String>(json, r'sellerAvatar'),
        sellerPhone: mapValueOfType<String>(json, r'sellerPhone'),
        sellerEmail: mapValueOfType<String>(json, r'sellerEmail'),
        shopId: mapValueOfType<int>(json, r'shopId'),
        shopName: mapValueOfType<String>(json, r'shopName'),
        shopLogo: mapValueOfType<String>(json, r'shopLogo'),
        shopDescription: mapValueOfType<String>(json, r'shopDescription'),
        shopRating: json[r'shopRating'] == null
            ? null
            : num.parse(json[r'shopRating'].toString()),
        shopSalesCount: mapValueOfType<int>(json, r'shopSalesCount'),
        specifications: Specification.listFromJson(json[r'specifications']),
        skus: SkuItem.listFromJson(json[r'skus']),
      );
    }
    return null;
  }

  static List<ProductDetailDTO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ProductDetailDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProductDetailDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProductDetailDTO> mapFromJson(dynamic json) {
    final map = <String, ProductDetailDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProductDetailDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProductDetailDTO-objects as value to a dart map
  static Map<String, List<ProductDetailDTO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ProductDetailDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProductDetailDTO.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{};
}
