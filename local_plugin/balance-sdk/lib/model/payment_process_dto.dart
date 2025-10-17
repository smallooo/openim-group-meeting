//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PaymentProcessDTO {
  /// Returns a new [PaymentProcessDTO] instance.
  PaymentProcessDTO({
    required this.walletOrderNo,
    required this.memberId,
    this.amount = 0,
    this.currencyId,
  });

  /// 钱包订单号
  String walletOrderNo;

  /// 用户ID
  int memberId;

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
      other is PaymentProcessDTO &&
          other.walletOrderNo == walletOrderNo &&
          other.memberId == memberId &&
          other.amount == amount &&
          other.currencyId == currencyId;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (walletOrderNo.hashCode) +
      (memberId.hashCode) +
      (amount.hashCode) +
      (currencyId == null ? 0 : currencyId!.hashCode);

  @override
  String toString() =>
      'PaymentProcessDTO[walletOrderNo=$walletOrderNo, memberId=$memberId, amount=$amount, currencyId=$currencyId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'walletOrderNo'] = this.walletOrderNo;
    json[r'memberId'] = this.memberId;
    json[r'amount'] = this.amount;
    if (this.currencyId != null) {
      json[r'currencyId'] = this.currencyId;
    } else {
      json[r'currencyId'] = null;
    }
    return json;
  }

  /// Returns a new [PaymentProcessDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PaymentProcessDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "PaymentProcessDTO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "PaymentProcessDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PaymentProcessDTO(
        walletOrderNo: mapValueOfType<String>(json, r'walletOrderNo')!,
        memberId: mapValueOfType<int>(json, r'memberId')!,
        amount:
            json[r'amount'] == null ? 0 : num.parse(json[r'amount'].toString()),
        currencyId: mapValueOfType<int>(json, r'currencyId'),
      );
    }
    return null;
  }

  static List<PaymentProcessDTO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PaymentProcessDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentProcessDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PaymentProcessDTO> mapFromJson(dynamic json) {
    final map = <String, PaymentProcessDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaymentProcessDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PaymentProcessDTO-objects as value to a dart map
  static Map<String, List<PaymentProcessDTO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PaymentProcessDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PaymentProcessDTO.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'walletOrderNo',
    'memberId',
    'amount',
  };
}
