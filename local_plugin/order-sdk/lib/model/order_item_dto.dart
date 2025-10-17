//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderItemDTO {
  /// Returns a new [OrderItemDTO] instance.
  OrderItemDTO({
    required this.productId,
    required this.skuId,
    required this.quantity,
    this.productName,
    this.productImage,
    this.productDescription,
    this.unitPrice,
    this.totalPrice,
    this.originalPrice,
    this.skuAttributes,
    this.skuCode,
    this.productCode,
    this.brand,
    this.category,
    this.weight,
    this.volume,
  });

  /// 商品ID
  int productId;

  /// SKU ID
  int skuId;

  /// 商品数量
  int quantity;

  /// 商品名称
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? productName;

  /// 商品图片
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? productImage;

  /// 商品描述
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? productDescription;

  /// 单价
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? unitPrice;

  /// 总价
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? totalPrice;

  /// 原价
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? originalPrice;

  /// SKU属性JSON字符串
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? skuAttributes;

  /// SKU编码
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? skuCode;

  /// 商品编码
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? productCode;

  /// 品牌
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? brand;

  /// 分类
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? category;

  /// 重量(kg)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? weight;

  /// 体积(m³)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? volume;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderItemDTO &&
          other.productId == productId &&
          other.skuId == skuId &&
          other.quantity == quantity &&
          other.productName == productName &&
          other.productImage == productImage &&
          other.productDescription == productDescription &&
          other.unitPrice == unitPrice &&
          other.totalPrice == totalPrice &&
          other.originalPrice == originalPrice &&
          other.skuAttributes == skuAttributes &&
          other.skuCode == skuCode &&
          other.productCode == productCode &&
          other.brand == brand &&
          other.category == category &&
          other.weight == weight &&
          other.volume == volume;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (productId.hashCode) +
      (skuId.hashCode) +
      (quantity.hashCode) +
      (productName == null ? 0 : productName!.hashCode) +
      (productImage == null ? 0 : productImage!.hashCode) +
      (productDescription == null ? 0 : productDescription!.hashCode) +
      (unitPrice == null ? 0 : unitPrice!.hashCode) +
      (totalPrice == null ? 0 : totalPrice!.hashCode) +
      (originalPrice == null ? 0 : originalPrice!.hashCode) +
      (skuAttributes == null ? 0 : skuAttributes!.hashCode) +
      (skuCode == null ? 0 : skuCode!.hashCode) +
      (productCode == null ? 0 : productCode!.hashCode) +
      (brand == null ? 0 : brand!.hashCode) +
      (category == null ? 0 : category!.hashCode) +
      (weight == null ? 0 : weight!.hashCode) +
      (volume == null ? 0 : volume!.hashCode);

  @override
  String toString() =>
      'OrderItemDTO[productId=$productId, skuId=$skuId, quantity=$quantity, productName=$productName, productImage=$productImage, productDescription=$productDescription, unitPrice=$unitPrice, totalPrice=$totalPrice, originalPrice=$originalPrice, skuAttributes=$skuAttributes, skuCode=$skuCode, productCode=$productCode, brand=$brand, category=$category, weight=$weight, volume=$volume]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'productId'] = this.productId;
    json[r'skuId'] = this.skuId;
    json[r'quantity'] = this.quantity;
    if (this.productName != null) {
      json[r'productName'] = this.productName;
    } else {
      json[r'productName'] = null;
    }
    if (this.productImage != null) {
      json[r'productImage'] = this.productImage;
    } else {
      json[r'productImage'] = null;
    }
    if (this.productDescription != null) {
      json[r'productDescription'] = this.productDescription;
    } else {
      json[r'productDescription'] = null;
    }
    if (this.unitPrice != null) {
      json[r'unitPrice'] = this.unitPrice;
    } else {
      json[r'unitPrice'] = null;
    }
    if (this.totalPrice != null) {
      json[r'totalPrice'] = this.totalPrice;
    } else {
      json[r'totalPrice'] = null;
    }
    if (this.originalPrice != null) {
      json[r'originalPrice'] = this.originalPrice;
    } else {
      json[r'originalPrice'] = null;
    }
    if (this.skuAttributes != null) {
      json[r'skuAttributes'] = this.skuAttributes;
    } else {
      json[r'skuAttributes'] = null;
    }
    if (this.skuCode != null) {
      json[r'skuCode'] = this.skuCode;
    } else {
      json[r'skuCode'] = null;
    }
    if (this.productCode != null) {
      json[r'productCode'] = this.productCode;
    } else {
      json[r'productCode'] = null;
    }
    if (this.brand != null) {
      json[r'brand'] = this.brand;
    } else {
      json[r'brand'] = null;
    }
    if (this.category != null) {
      json[r'category'] = this.category;
    } else {
      json[r'category'] = null;
    }
    if (this.weight != null) {
      json[r'weight'] = this.weight;
    } else {
      json[r'weight'] = null;
    }
    if (this.volume != null) {
      json[r'volume'] = this.volume;
    } else {
      json[r'volume'] = null;
    }
    return json;
  }

  /// Returns a new [OrderItemDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderItemDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "OrderItemDTO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "OrderItemDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrderItemDTO(
        productId: mapValueOfType<int>(json, r'productId')!,
        skuId: mapValueOfType<int>(json, r'skuId')!,
        quantity: mapValueOfType<int>(json, r'quantity')!,
        productName: mapValueOfType<String>(json, r'productName'),
        productImage: mapValueOfType<String>(json, r'productImage'),
        productDescription: mapValueOfType<String>(json, r'productDescription'),
        unitPrice: json[r'unitPrice'] == null
            ? null
            : num.parse(json[r'unitPrice'].toString()),
        totalPrice: json[r'totalPrice'] == null
            ? null
            : num.parse(json[r'totalPrice'].toString()),
        originalPrice: json[r'originalPrice'] == null
            ? null
            : num.parse(json[r'originalPrice'].toString()),
        skuAttributes: mapValueOfType<String>(json, r'skuAttributes'),
        skuCode: mapValueOfType<String>(json, r'skuCode'),
        productCode: mapValueOfType<String>(json, r'productCode'),
        brand: mapValueOfType<String>(json, r'brand'),
        category: mapValueOfType<String>(json, r'category'),
        weight: json[r'weight'] == null
            ? null
            : num.parse(json[r'weight'].toString()),
        volume: json[r'volume'] == null
            ? null
            : num.parse(json[r'volume'].toString()),
      );
    }
    return null;
  }

  static List<OrderItemDTO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <OrderItemDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderItemDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderItemDTO> mapFromJson(dynamic json) {
    final map = <String, OrderItemDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderItemDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderItemDTO-objects as value to a dart map
  static Map<String, List<OrderItemDTO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<OrderItemDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrderItemDTO.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'productId',
    'skuId',
    'quantity',
  };
}
