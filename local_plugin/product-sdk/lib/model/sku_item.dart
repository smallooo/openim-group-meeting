//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SkuItem {
  /// Returns a new [SkuItem] instance.
  SkuItem({
    this.id,
    this.name,
    this.price,
    this.promotionPrice,
    this.stock,
    this.specs = const {},
    this.skuCode,
    this.status,
  });

  /// SKU ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// SKU名称
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// SKU价格
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? price;

  /// 促销价格
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? promotionPrice;

  /// 库存数量
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? stock;

  /// SKU规格组合
  Map<String, String> specs;

  /// SKU编码
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? skuCode;

  /// 状态:1-启用,0-禁用
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? status;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SkuItem &&
          other.id == id &&
          other.name == name &&
          other.price == price &&
          other.promotionPrice == promotionPrice &&
          other.stock == stock &&
          other.specs == specs &&
          other.skuCode == skuCode &&
          other.status == status;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (name == null ? 0 : name!.hashCode) +
      (price == null ? 0 : price!.hashCode) +
      (promotionPrice == null ? 0 : promotionPrice!.hashCode) +
      (stock == null ? 0 : stock!.hashCode) +
      (specs.hashCode) +
      (skuCode == null ? 0 : skuCode!.hashCode) +
      (status == null ? 0 : status!.hashCode);

  @override
  String toString() =>
      'SkuItem[id=$id, name=$name, price=$price, promotionPrice=$promotionPrice, stock=$stock, specs=$specs, skuCode=$skuCode, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.price != null) {
      json[r'price'] = this.price;
    } else {
      json[r'price'] = null;
    }
    if (this.promotionPrice != null) {
      json[r'promotionPrice'] = this.promotionPrice;
    } else {
      json[r'promotionPrice'] = null;
    }
    if (this.stock != null) {
      json[r'stock'] = this.stock;
    } else {
      json[r'stock'] = null;
    }
    json[r'specs'] = this.specs;
    if (this.skuCode != null) {
      json[r'skuCode'] = this.skuCode;
    } else {
      json[r'skuCode'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [SkuItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SkuItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "SkuItem[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "SkuItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SkuItem(
        id: mapValueOfType<int>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        price: json[r'price'] == null
            ? null
            : num.parse(json[r'price'].toString()),
        promotionPrice: json[r'promotionPrice'] == null
            ? null
            : num.parse(json[r'promotionPrice'].toString()),
        stock: mapValueOfType<int>(json, r'stock'),
        specs: mapCastOfType<String, String>(json, r'specs') ?? const {},
        skuCode: mapValueOfType<String>(json, r'skuCode'),
        status: mapValueOfType<int>(json, r'status'),
      );
    }
    return null;
  }

  static List<SkuItem> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SkuItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SkuItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SkuItem> mapFromJson(dynamic json) {
    final map = <String, SkuItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SkuItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SkuItem-objects as value to a dart map
  static Map<String, List<SkuItem>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<SkuItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SkuItem.listFromJson(
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
