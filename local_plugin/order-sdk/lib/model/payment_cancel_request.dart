//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PaymentCancelRequest {
  /// Returns a new [PaymentCancelRequest] instance.
  PaymentCancelRequest({
    required this.paymentId,
    required this.orderNo,
    this.reason,
  });

  /// 支付系统订单号
  String paymentId;

  /// 订单系统订单号
  String orderNo;

  /// 取消原因
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reason;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PaymentCancelRequest &&
          other.paymentId == paymentId &&
          other.orderNo == orderNo &&
          other.reason == reason;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (paymentId.hashCode) +
      (orderNo.hashCode) +
      (reason == null ? 0 : reason!.hashCode);

  @override
  String toString() =>
      'PaymentCancelRequest[paymentId=$paymentId, orderNo=$orderNo, reason=$reason]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'paymentId'] = this.paymentId;
    json[r'orderNo'] = this.orderNo;
    if (this.reason != null) {
      json[r'reason'] = this.reason;
    } else {
      json[r'reason'] = null;
    }
    return json;
  }

  /// Returns a new [PaymentCancelRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PaymentCancelRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "PaymentCancelRequest[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "PaymentCancelRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PaymentCancelRequest(
        paymentId: mapValueOfType<String>(json, r'paymentId')!,
        orderNo: mapValueOfType<String>(json, r'orderNo')!,
        reason: mapValueOfType<String>(json, r'reason'),
      );
    }
    return null;
  }

  static List<PaymentCancelRequest> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PaymentCancelRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentCancelRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PaymentCancelRequest> mapFromJson(dynamic json) {
    final map = <String, PaymentCancelRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaymentCancelRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PaymentCancelRequest-objects as value to a dart map
  static Map<String, List<PaymentCancelRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PaymentCancelRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PaymentCancelRequest.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'paymentId',
    'orderNo',
  };
}
