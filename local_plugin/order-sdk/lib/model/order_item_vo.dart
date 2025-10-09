//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderItemVO {
  /// Returns a new [OrderItemVO] instance.
  OrderItemVO({
    this.id,
    this.productId,
    this.skuId,
    this.productName,
    this.productPic,
    this.productSpecs,
    this.quantity,
    this.unitPrice,
    this.totalPrice,
  });

  /// 订单商品ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// 商品ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? productId;

  /// SKU ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? skuId;

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
  String? productPic;

  /// 商品规格
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? productSpecs;

  /// 购买数量
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? quantity;

  /// 商品单价
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? unitPrice;

  /// 商品总价
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? totalPrice;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderItemVO &&
          other.id == id &&
          other.productId == productId &&
          other.skuId == skuId &&
          other.productName == productName &&
          other.productPic == productPic &&
          other.productSpecs == productSpecs &&
          other.quantity == quantity &&
          other.unitPrice == unitPrice &&
          other.totalPrice == totalPrice;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (productId == null ? 0 : productId!.hashCode) +
      (skuId == null ? 0 : skuId!.hashCode) +
      (productName == null ? 0 : productName!.hashCode) +
      (productPic == null ? 0 : productPic!.hashCode) +
      (productSpecs == null ? 0 : productSpecs!.hashCode) +
      (quantity == null ? 0 : quantity!.hashCode) +
      (unitPrice == null ? 0 : unitPrice!.hashCode) +
      (totalPrice == null ? 0 : totalPrice!.hashCode);

  @override
  String toString() =>
      'OrderItemVO[id=$id, productId=$productId, skuId=$skuId, productName=$productName, productPic=$productPic, productSpecs=$productSpecs, quantity=$quantity, unitPrice=$unitPrice, totalPrice=$totalPrice]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.productId != null) {
      json[r'productId'] = this.productId;
    } else {
      json[r'productId'] = null;
    }
    if (this.skuId != null) {
      json[r'skuId'] = this.skuId;
    } else {
      json[r'skuId'] = null;
    }
    if (this.productName != null) {
      json[r'productName'] = this.productName;
    } else {
      json[r'productName'] = null;
    }
    if (this.productPic != null) {
      json[r'productPic'] = this.productPic;
    } else {
      json[r'productPic'] = null;
    }
    if (this.productSpecs != null) {
      json[r'productSpecs'] = this.productSpecs;
    } else {
      json[r'productSpecs'] = null;
    }
    if (this.quantity != null) {
      json[r'quantity'] = this.quantity;
    } else {
      json[r'quantity'] = null;
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
    return json;
  }

  /// Returns a new [OrderItemVO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderItemVO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "OrderItemVO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "OrderItemVO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrderItemVO(
        id: mapValueOfType<int>(json, r'id'),
        productId: mapValueOfType<int>(json, r'productId'),
        skuId: mapValueOfType<int>(json, r'skuId'),
        productName: mapValueOfType<String>(json, r'productName'),
        productPic: mapValueOfType<String>(json, r'productPic'),
        productSpecs: mapValueOfType<String>(json, r'productSpecs'),
        quantity: mapValueOfType<int>(json, r'quantity'),
        unitPrice: json[r'unitPrice'] == null
            ? null
            : num.parse(json[r'unitPrice'].toString()),
        totalPrice: json[r'totalPrice'] == null
            ? null
            : num.parse(json[r'totalPrice'].toString()),
      );
    }
    return null;
  }

  static List<OrderItemVO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <OrderItemVO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderItemVO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderItemVO> mapFromJson(dynamic json) {
    final map = <String, OrderItemVO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderItemVO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderItemVO-objects as value to a dart map
  static Map<String, List<OrderItemVO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<OrderItemVO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrderItemVO.listFromJson(
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
