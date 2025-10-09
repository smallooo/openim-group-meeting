//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PaymentQueryResponse {
  /// Returns a new [PaymentQueryResponse] instance.
  PaymentQueryResponse({
    this.paymentId,
    this.orderNo,
    this.amount,
    this.status,
    this.paymentMethod,
    this.thirdPartyOrderNo,
    this.paidTime,
    this.createTime,
    this.updateTime,
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

  /// 支付金额
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? amount;

  /// 订单状态：PENDING(待支付),SUCCESS(支付成功),FAILED(支付失败),CANCELLED(已取消)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// 支付方式
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? paymentMethod;

  /// 第三方支付订单号
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? thirdPartyOrderNo;

  /// 支付完成时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? paidTime;

  /// 创建时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createTime;

  /// 更新时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updateTime;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PaymentQueryResponse &&
          other.paymentId == paymentId &&
          other.orderNo == orderNo &&
          other.amount == amount &&
          other.status == status &&
          other.paymentMethod == paymentMethod &&
          other.thirdPartyOrderNo == thirdPartyOrderNo &&
          other.paidTime == paidTime &&
          other.createTime == createTime &&
          other.updateTime == updateTime;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (paymentId == null ? 0 : paymentId!.hashCode) +
      (orderNo == null ? 0 : orderNo!.hashCode) +
      (amount == null ? 0 : amount!.hashCode) +
      (status == null ? 0 : status!.hashCode) +
      (paymentMethod == null ? 0 : paymentMethod!.hashCode) +
      (thirdPartyOrderNo == null ? 0 : thirdPartyOrderNo!.hashCode) +
      (paidTime == null ? 0 : paidTime!.hashCode) +
      (createTime == null ? 0 : createTime!.hashCode) +
      (updateTime == null ? 0 : updateTime!.hashCode);

  @override
  String toString() =>
      'PaymentQueryResponse[paymentId=$paymentId, orderNo=$orderNo, amount=$amount, status=$status, paymentMethod=$paymentMethod, thirdPartyOrderNo=$thirdPartyOrderNo, paidTime=$paidTime, createTime=$createTime, updateTime=$updateTime]';

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
    if (this.amount != null) {
      json[r'amount'] = this.amount;
    } else {
      json[r'amount'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.paymentMethod != null) {
      json[r'paymentMethod'] = this.paymentMethod;
    } else {
      json[r'paymentMethod'] = null;
    }
    if (this.thirdPartyOrderNo != null) {
      json[r'thirdPartyOrderNo'] = this.thirdPartyOrderNo;
    } else {
      json[r'thirdPartyOrderNo'] = null;
    }
    if (this.paidTime != null) {
      json[r'paidTime'] = this.paidTime!.toUtc().toIso8601String();
    } else {
      json[r'paidTime'] = null;
    }
    if (this.createTime != null) {
      json[r'createTime'] = this.createTime!.toUtc().toIso8601String();
    } else {
      json[r'createTime'] = null;
    }
    if (this.updateTime != null) {
      json[r'updateTime'] = this.updateTime!.toUtc().toIso8601String();
    } else {
      json[r'updateTime'] = null;
    }
    return json;
  }

  /// Returns a new [PaymentQueryResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PaymentQueryResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "PaymentQueryResponse[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "PaymentQueryResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PaymentQueryResponse(
        paymentId: mapValueOfType<String>(json, r'paymentId'),
        orderNo: mapValueOfType<String>(json, r'orderNo'),
        amount: json[r'amount'] == null
            ? null
            : num.parse(json[r'amount'].toString()),
        status: mapValueOfType<String>(json, r'status'),
        paymentMethod: mapValueOfType<String>(json, r'paymentMethod'),
        thirdPartyOrderNo: mapValueOfType<String>(json, r'thirdPartyOrderNo'),
        paidTime: mapDateTime(json, r'paidTime', ''),
        createTime: mapDateTime(json, r'createTime', ''),
        updateTime: mapDateTime(json, r'updateTime', ''),
      );
    }
    return null;
  }

  static List<PaymentQueryResponse> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PaymentQueryResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentQueryResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PaymentQueryResponse> mapFromJson(dynamic json) {
    final map = <String, PaymentQueryResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaymentQueryResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PaymentQueryResponse-objects as value to a dart map
  static Map<String, List<PaymentQueryResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PaymentQueryResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PaymentQueryResponse.listFromJson(
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
