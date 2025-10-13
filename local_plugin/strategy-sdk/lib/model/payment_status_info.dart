//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PaymentStatusInfo {
  /// Returns a new [PaymentStatusInfo] instance.
  PaymentStatusInfo({
    this.status,
    this.paidTime,
    this.thirdPartyOrderNo,
  });

  /// 支付状态
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// 支付完成时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? paidTime;

  /// 第三方订单号
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? thirdPartyOrderNo;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PaymentStatusInfo &&
          other.status == status &&
          other.paidTime == paidTime &&
          other.thirdPartyOrderNo == thirdPartyOrderNo;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (status == null ? 0 : status!.hashCode) +
      (paidTime == null ? 0 : paidTime!.hashCode) +
      (thirdPartyOrderNo == null ? 0 : thirdPartyOrderNo!.hashCode);

  @override
  String toString() =>
      'PaymentStatusInfo[status=$status, paidTime=$paidTime, thirdPartyOrderNo=$thirdPartyOrderNo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.paidTime != null) {
      json[r'paidTime'] = this.paidTime!.toUtc().toIso8601String();
    } else {
      json[r'paidTime'] = null;
    }
    if (this.thirdPartyOrderNo != null) {
      json[r'thirdPartyOrderNo'] = this.thirdPartyOrderNo;
    } else {
      json[r'thirdPartyOrderNo'] = null;
    }
    return json;
  }

  /// Returns a new [PaymentStatusInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PaymentStatusInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "PaymentStatusInfo[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "PaymentStatusInfo[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PaymentStatusInfo(
        status: mapValueOfType<String>(json, r'status'),
        paidTime: mapDateTime(json, r'paidTime', ''),
        thirdPartyOrderNo: mapValueOfType<String>(json, r'thirdPartyOrderNo'),
      );
    }
    return null;
  }

  static List<PaymentStatusInfo> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PaymentStatusInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentStatusInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PaymentStatusInfo> mapFromJson(dynamic json) {
    final map = <String, PaymentStatusInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaymentStatusInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PaymentStatusInfo-objects as value to a dart map
  static Map<String, List<PaymentStatusInfo>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PaymentStatusInfo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PaymentStatusInfo.listFromJson(
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
