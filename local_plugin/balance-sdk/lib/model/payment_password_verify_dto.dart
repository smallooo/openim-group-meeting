//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PaymentPasswordVerifyDTO {
  /// Returns a new [PaymentPasswordVerifyDTO] instance.
  PaymentPasswordVerifyDTO({
    required this.paymentPassword,
    required this.partnerOrderNo,
    this.amount = 0,
    this.currencyId,
  });

  /// 支付密码
  String paymentPassword;

  /// 合作方订单号
  String partnerOrderNo;

  /// 支付金额
  num amount;

  /// 货币类型
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? currencyId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PaymentPasswordVerifyDTO &&
          other.paymentPassword == paymentPassword &&
          other.partnerOrderNo == partnerOrderNo &&
          other.amount == amount &&
          other.currencyId == currencyId;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (paymentPassword.hashCode) +
      (partnerOrderNo.hashCode) +
      (amount.hashCode) +
      (currencyId == null ? 0 : currencyId!.hashCode);

  @override
  String toString() =>
      'PaymentPasswordVerifyDTO[paymentPassword=$paymentPassword, partnerOrderNo=$partnerOrderNo, amount=$amount, currencyId=$currencyId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'paymentPassword'] = this.paymentPassword;
    json[r'partnerOrderNo'] = this.partnerOrderNo;
    json[r'amount'] = this.amount;
    if (this.currencyId != null) {
      json[r'currencyId'] = this.currencyId;
    } else {
      json[r'currencyId'] = null;
    }
    return json;
  }

  /// Returns a new [PaymentPasswordVerifyDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PaymentPasswordVerifyDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "PaymentPasswordVerifyDTO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "PaymentPasswordVerifyDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PaymentPasswordVerifyDTO(
        paymentPassword: mapValueOfType<String>(json, r'paymentPassword')!,
        partnerOrderNo: mapValueOfType<String>(json, r'partnerOrderNo')!,
        amount:
            json[r'amount'] == null ? 0 : num.parse(json[r'amount'].toString()),
        currencyId: mapValueOfType<int>(json, r'currencyId'),
      );
    }
    return null;
  }

  static List<PaymentPasswordVerifyDTO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PaymentPasswordVerifyDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentPasswordVerifyDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PaymentPasswordVerifyDTO> mapFromJson(dynamic json) {
    final map = <String, PaymentPasswordVerifyDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaymentPasswordVerifyDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PaymentPasswordVerifyDTO-objects as value to a dart map
  static Map<String, List<PaymentPasswordVerifyDTO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PaymentPasswordVerifyDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PaymentPasswordVerifyDTO.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'paymentPassword',
    'partnerOrderNo',
    'amount',
  };
}
