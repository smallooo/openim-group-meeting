//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SellerInfoVO {
  /// Returns a new [SellerInfoVO] instance.
  SellerInfoVO({
    this.sellerId,
    this.sellerName,
    this.sellerAvatar,
    this.sellerPhone,
    this.shopId,
    this.shopName,
  });

  /// 卖家ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sellerId;

  /// 卖家姓名
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sellerName;

  /// 卖家头像
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sellerAvatar;

  /// 卖家手机号
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sellerPhone;

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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SellerInfoVO &&
          other.sellerId == sellerId &&
          other.sellerName == sellerName &&
          other.sellerAvatar == sellerAvatar &&
          other.sellerPhone == sellerPhone &&
          other.shopId == shopId &&
          other.shopName == shopName;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (sellerId == null ? 0 : sellerId!.hashCode) +
      (sellerName == null ? 0 : sellerName!.hashCode) +
      (sellerAvatar == null ? 0 : sellerAvatar!.hashCode) +
      (sellerPhone == null ? 0 : sellerPhone!.hashCode) +
      (shopId == null ? 0 : shopId!.hashCode) +
      (shopName == null ? 0 : shopName!.hashCode);

  @override
  String toString() =>
      'SellerInfoVO[sellerId=$sellerId, sellerName=$sellerName, sellerAvatar=$sellerAvatar, sellerPhone=$sellerPhone, shopId=$shopId, shopName=$shopName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    return json;
  }

  /// Returns a new [SellerInfoVO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SellerInfoVO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "SellerInfoVO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "SellerInfoVO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SellerInfoVO(
        sellerId: mapValueOfType<int>(json, r'sellerId'),
        sellerName: mapValueOfType<String>(json, r'sellerName'),
        sellerAvatar: mapValueOfType<String>(json, r'sellerAvatar'),
        sellerPhone: mapValueOfType<String>(json, r'sellerPhone'),
        shopId: mapValueOfType<int>(json, r'shopId'),
        shopName: mapValueOfType<String>(json, r'shopName'),
      );
    }
    return null;
  }

  static List<SellerInfoVO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SellerInfoVO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SellerInfoVO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SellerInfoVO> mapFromJson(dynamic json) {
    final map = <String, SellerInfoVO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SellerInfoVO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SellerInfoVO-objects as value to a dart map
  static Map<String, List<SellerInfoVO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<SellerInfoVO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SellerInfoVO.listFromJson(
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
