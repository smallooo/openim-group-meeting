//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PaymentPasswordStatusVO {
  /// Returns a new [PaymentPasswordStatusVO] instance.
  PaymentPasswordStatusVO({
    this.hasPassword,
    this.isLocked,
  });

  /// 是否已设置支付密码
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasPassword;

  /// 是否被锁定
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isLocked;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PaymentPasswordStatusVO &&
          other.hasPassword == hasPassword &&
          other.isLocked == isLocked;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (hasPassword == null ? 0 : hasPassword!.hashCode) +
      (isLocked == null ? 0 : isLocked!.hashCode);

  @override
  String toString() =>
      'PaymentPasswordStatusVO[hasPassword=$hasPassword, isLocked=$isLocked]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.hasPassword != null) {
      json[r'hasPassword'] = this.hasPassword;
    } else {
      json[r'hasPassword'] = null;
    }
    if (this.isLocked != null) {
      json[r'isLocked'] = this.isLocked;
    } else {
      json[r'isLocked'] = null;
    }
    return json;
  }

  /// Returns a new [PaymentPasswordStatusVO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PaymentPasswordStatusVO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "PaymentPasswordStatusVO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "PaymentPasswordStatusVO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PaymentPasswordStatusVO(
        hasPassword: mapValueOfType<bool>(json, r'hasPassword'),
        isLocked: mapValueOfType<bool>(json, r'isLocked'),
      );
    }
    return null;
  }

  static List<PaymentPasswordStatusVO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PaymentPasswordStatusVO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentPasswordStatusVO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PaymentPasswordStatusVO> mapFromJson(dynamic json) {
    final map = <String, PaymentPasswordStatusVO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaymentPasswordStatusVO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PaymentPasswordStatusVO-objects as value to a dart map
  static Map<String, List<PaymentPasswordStatusVO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PaymentPasswordStatusVO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PaymentPasswordStatusVO.listFromJson(
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
