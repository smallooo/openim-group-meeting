//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RefundConfirmRequest {
  /// Returns a new [RefundConfirmRequest] instance.
  RefundConfirmRequest({
    required this.refundNo,
    required this.sellerId,
    this.confirmRemark,
    this.refundAmount,
    this.refundMethod,
  });

  /// 退款申请编号
  String refundNo;

  /// 商家ID
  int sellerId;

  /// 确认备注
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? confirmRemark;

  /// 退款金额
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? refundAmount;

  /// 退款方式
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? refundMethod;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RefundConfirmRequest &&
          other.refundNo == refundNo &&
          other.sellerId == sellerId &&
          other.confirmRemark == confirmRemark &&
          other.refundAmount == refundAmount &&
          other.refundMethod == refundMethod;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (refundNo.hashCode) +
      (sellerId.hashCode) +
      (confirmRemark == null ? 0 : confirmRemark!.hashCode) +
      (refundAmount == null ? 0 : refundAmount!.hashCode) +
      (refundMethod == null ? 0 : refundMethod!.hashCode);

  @override
  String toString() =>
      'RefundConfirmRequest[refundNo=$refundNo, sellerId=$sellerId, confirmRemark=$confirmRemark, refundAmount=$refundAmount, refundMethod=$refundMethod]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'refundNo'] = this.refundNo;
    json[r'sellerId'] = this.sellerId;
    if (this.confirmRemark != null) {
      json[r'confirmRemark'] = this.confirmRemark;
    } else {
      json[r'confirmRemark'] = null;
    }
    if (this.refundAmount != null) {
      json[r'refundAmount'] = this.refundAmount;
    } else {
      json[r'refundAmount'] = null;
    }
    if (this.refundMethod != null) {
      json[r'refundMethod'] = this.refundMethod;
    } else {
      json[r'refundMethod'] = null;
    }
    return json;
  }

  /// Returns a new [RefundConfirmRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RefundConfirmRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "RefundConfirmRequest[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "RefundConfirmRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RefundConfirmRequest(
        refundNo: mapValueOfType<String>(json, r'refundNo')!,
        sellerId: mapValueOfType<int>(json, r'sellerId')!,
        confirmRemark: mapValueOfType<String>(json, r'confirmRemark'),
        refundAmount: json[r'refundAmount'] == null
            ? null
            : num.parse(json[r'refundAmount'].toString()),
        refundMethod: mapValueOfType<String>(json, r'refundMethod'),
      );
    }
    return null;
  }

  static List<RefundConfirmRequest> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RefundConfirmRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RefundConfirmRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RefundConfirmRequest> mapFromJson(dynamic json) {
    final map = <String, RefundConfirmRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RefundConfirmRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RefundConfirmRequest-objects as value to a dart map
  static Map<String, List<RefundConfirmRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<RefundConfirmRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RefundConfirmRequest.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'refundNo',
    'sellerId',
  };
}
