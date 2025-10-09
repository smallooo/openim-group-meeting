//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BuyerInfoVO {
  /// Returns a new [BuyerInfoVO] instance.
  BuyerInfoVO({
    this.buyerId,
    this.buyerName,
    this.buyerAvatar,
    this.buyerPhone,
  });

  /// 买家ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? buyerId;

  /// 买家姓名
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? buyerName;

  /// 买家头像
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? buyerAvatar;

  /// 买家手机号
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? buyerPhone;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BuyerInfoVO &&
          other.buyerId == buyerId &&
          other.buyerName == buyerName &&
          other.buyerAvatar == buyerAvatar &&
          other.buyerPhone == buyerPhone;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (buyerId == null ? 0 : buyerId!.hashCode) +
      (buyerName == null ? 0 : buyerName!.hashCode) +
      (buyerAvatar == null ? 0 : buyerAvatar!.hashCode) +
      (buyerPhone == null ? 0 : buyerPhone!.hashCode);

  @override
  String toString() =>
      'BuyerInfoVO[buyerId=$buyerId, buyerName=$buyerName, buyerAvatar=$buyerAvatar, buyerPhone=$buyerPhone]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.buyerId != null) {
      json[r'buyerId'] = this.buyerId;
    } else {
      json[r'buyerId'] = null;
    }
    if (this.buyerName != null) {
      json[r'buyerName'] = this.buyerName;
    } else {
      json[r'buyerName'] = null;
    }
    if (this.buyerAvatar != null) {
      json[r'buyerAvatar'] = this.buyerAvatar;
    } else {
      json[r'buyerAvatar'] = null;
    }
    if (this.buyerPhone != null) {
      json[r'buyerPhone'] = this.buyerPhone;
    } else {
      json[r'buyerPhone'] = null;
    }
    return json;
  }

  /// Returns a new [BuyerInfoVO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BuyerInfoVO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "BuyerInfoVO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "BuyerInfoVO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BuyerInfoVO(
        buyerId: mapValueOfType<int>(json, r'buyerId'),
        buyerName: mapValueOfType<String>(json, r'buyerName'),
        buyerAvatar: mapValueOfType<String>(json, r'buyerAvatar'),
        buyerPhone: mapValueOfType<String>(json, r'buyerPhone'),
      );
    }
    return null;
  }

  static List<BuyerInfoVO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <BuyerInfoVO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BuyerInfoVO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BuyerInfoVO> mapFromJson(dynamic json) {
    final map = <String, BuyerInfoVO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BuyerInfoVO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BuyerInfoVO-objects as value to a dart map
  static Map<String, List<BuyerInfoVO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<BuyerInfoVO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BuyerInfoVO.listFromJson(
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
