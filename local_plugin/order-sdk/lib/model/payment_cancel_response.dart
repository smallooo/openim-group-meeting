//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PaymentCancelResponse {
  /// Returns a new [PaymentCancelResponse] instance.
  PaymentCancelResponse({
    this.paymentId,
    this.orderNo,
    this.status,
    this.cancelTime,
  });

  /// 支付系统订单号
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? paymentId;

  /// 订单系统订单号
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? orderNo;

  /// 订单状态：CANCELLED(已取消)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// 取消时间戳
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? cancelTime;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PaymentCancelResponse &&
          other.paymentId == paymentId &&
          other.orderNo == orderNo &&
          other.status == status &&
          other.cancelTime == cancelTime;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (paymentId == null ? 0 : paymentId!.hashCode) +
      (orderNo == null ? 0 : orderNo!.hashCode) +
      (status == null ? 0 : status!.hashCode) +
      (cancelTime == null ? 0 : cancelTime!.hashCode);

  @override
  String toString() =>
      'PaymentCancelResponse[paymentId=$paymentId, orderNo=$orderNo, status=$status, cancelTime=$cancelTime]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.paymentId != null) {
      json[r'paymentId'] = this.paymentId;
    } else {
      json[r'paymentId'] = null;
    }
    if (this.orderNo != null) {
      json[r'orderNo'] = this.orderNo;
    } else {
      json[r'orderNo'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.cancelTime != null) {
      json[r'cancelTime'] = this.cancelTime;
    } else {
      json[r'cancelTime'] = null;
    }
    return json;
  }

  /// Returns a new [PaymentCancelResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PaymentCancelResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "PaymentCancelResponse[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "PaymentCancelResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PaymentCancelResponse(
        paymentId: mapValueOfType<String>(json, r'paymentId'),
        orderNo: mapValueOfType<String>(json, r'orderNo'),
        status: mapValueOfType<String>(json, r'status'),
        cancelTime: mapValueOfType<int>(json, r'cancelTime'),
      );
    }
    return null;
  }

  static List<PaymentCancelResponse> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PaymentCancelResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentCancelResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PaymentCancelResponse> mapFromJson(dynamic json) {
    final map = <String, PaymentCancelResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaymentCancelResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PaymentCancelResponse-objects as value to a dart map
  static Map<String, List<PaymentCancelResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PaymentCancelResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PaymentCancelResponse.listFromJson(
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
