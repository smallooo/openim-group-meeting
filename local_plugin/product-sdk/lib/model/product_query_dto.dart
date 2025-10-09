//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProductQueryDTO {
  /// Returns a new [ProductQueryDTO] instance.
  ProductQueryDTO({
    this.channelId,
    this.categoryId,
    this.brandId,
    this.shopId,
    this.sellerId,
    this.keyword,
    this.minPrice,
    this.maxPrice,
    this.name,
    this.publishStatus,
    this.verifyStatus,
    this.page = 1,
    this.size = 20,
    this.sortType,
    this.sortField,
    this.sortOrder,
  });

  /// 频道ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? channelId;

  /// 分类ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? categoryId;

  /// 品牌ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? brandId;

  /// 店铺ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? shopId;

  /// 商家ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sellerId;

  /// 搜索关键词
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? keyword;

  /// 最低价格
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? minPrice;

  /// 最高价格
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? maxPrice;

  /// 商品名称
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// 上架状态
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? publishStatus;

  /// 审核状态
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? verifyStatus;

  /// 页码
  int page;

  /// 每页数量
  int size;

  /// 排序类型
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sortType;

  /// 排序字段
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sortField;

  /// 排序方向
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sortOrder;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductQueryDTO &&
          other.channelId == channelId &&
          other.categoryId == categoryId &&
          other.brandId == brandId &&
          other.shopId == shopId &&
          other.sellerId == sellerId &&
          other.keyword == keyword &&
          other.minPrice == minPrice &&
          other.maxPrice == maxPrice &&
          other.name == name &&
          other.publishStatus == publishStatus &&
          other.verifyStatus == verifyStatus &&
          other.page == page &&
          other.size == size &&
          other.sortType == sortType &&
          other.sortField == sortField &&
          other.sortOrder == sortOrder;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (channelId == null ? 0 : channelId!.hashCode) +
      (categoryId == null ? 0 : categoryId!.hashCode) +
      (brandId == null ? 0 : brandId!.hashCode) +
      (shopId == null ? 0 : shopId!.hashCode) +
      (sellerId == null ? 0 : sellerId!.hashCode) +
      (keyword == null ? 0 : keyword!.hashCode) +
      (minPrice == null ? 0 : minPrice!.hashCode) +
      (maxPrice == null ? 0 : maxPrice!.hashCode) +
      (name == null ? 0 : name!.hashCode) +
      (publishStatus == null ? 0 : publishStatus!.hashCode) +
      (verifyStatus == null ? 0 : verifyStatus!.hashCode) +
      (page.hashCode) +
      (size.hashCode) +
      (sortType == null ? 0 : sortType!.hashCode) +
      (sortField == null ? 0 : sortField!.hashCode) +
      (sortOrder == null ? 0 : sortOrder!.hashCode);

  @override
  String toString() =>
      'ProductQueryDTO[channelId=$channelId, categoryId=$categoryId, brandId=$brandId, shopId=$shopId, sellerId=$sellerId, keyword=$keyword, minPrice=$minPrice, maxPrice=$maxPrice, name=$name, publishStatus=$publishStatus, verifyStatus=$verifyStatus, page=$page, size=$size, sortType=$sortType, sortField=$sortField, sortOrder=$sortOrder]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.channelId != null) {
      json[r'channelId'] = this.channelId;
    } else {
      json[r'channelId'] = null;
    }
    if (this.categoryId != null) {
      json[r'categoryId'] = this.categoryId;
    } else {
      json[r'categoryId'] = null;
    }
    if (this.brandId != null) {
      json[r'brandId'] = this.brandId;
    } else {
      json[r'brandId'] = null;
    }
    if (this.shopId != null) {
      json[r'shopId'] = this.shopId;
    } else {
      json[r'shopId'] = null;
    }
    if (this.sellerId != null) {
      json[r'sellerId'] = this.sellerId;
    } else {
      json[r'sellerId'] = null;
    }
    if (this.keyword != null) {
      json[r'keyword'] = this.keyword;
    } else {
      json[r'keyword'] = null;
    }
    if (this.minPrice != null) {
      json[r'minPrice'] = this.minPrice;
    } else {
      json[r'minPrice'] = null;
    }
    if (this.maxPrice != null) {
      json[r'maxPrice'] = this.maxPrice;
    } else {
      json[r'maxPrice'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
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
    json[r'page'] = this.page;
    json[r'size'] = this.size;
    if (this.sortType != null) {
      json[r'sortType'] = this.sortType;
    } else {
      json[r'sortType'] = null;
    }
    if (this.sortField != null) {
      json[r'sortField'] = this.sortField;
    } else {
      json[r'sortField'] = null;
    }
    if (this.sortOrder != null) {
      json[r'sortOrder'] = this.sortOrder;
    } else {
      json[r'sortOrder'] = null;
    }
    return json;
  }

  /// Returns a new [ProductQueryDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProductQueryDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ProductQueryDTO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ProductQueryDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProductQueryDTO(
        channelId: mapValueOfType<int>(json, r'channelId'),
        categoryId: mapValueOfType<int>(json, r'categoryId'),
        brandId: mapValueOfType<int>(json, r'brandId'),
        shopId: mapValueOfType<int>(json, r'shopId'),
        sellerId: mapValueOfType<int>(json, r'sellerId'),
        keyword: mapValueOfType<String>(json, r'keyword'),
        minPrice: json[r'minPrice'] == null
            ? null
            : num.parse(json[r'minPrice'].toString()),
        maxPrice: json[r'maxPrice'] == null
            ? null
            : num.parse(json[r'maxPrice'].toString()),
        name: mapValueOfType<String>(json, r'name'),
        publishStatus: mapValueOfType<int>(json, r'publishStatus'),
        verifyStatus: mapValueOfType<int>(json, r'verifyStatus'),
        page: mapValueOfType<int>(json, r'page') ?? 1,
        size: mapValueOfType<int>(json, r'size') ?? 20,
        sortType: mapValueOfType<String>(json, r'sortType'),
        sortField: mapValueOfType<String>(json, r'sortField'),
        sortOrder: mapValueOfType<String>(json, r'sortOrder'),
      );
    }
    return null;
  }

  static List<ProductQueryDTO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ProductQueryDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProductQueryDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProductQueryDTO> mapFromJson(dynamic json) {
    final map = <String, ProductQueryDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProductQueryDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProductQueryDTO-objects as value to a dart map
  static Map<String, List<ProductQueryDTO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ProductQueryDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProductQueryDTO.listFromJson(
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
