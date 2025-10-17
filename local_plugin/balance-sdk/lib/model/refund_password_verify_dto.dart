//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RefundPasswordVerifyDTO {
  /// Returns a new [RefundPasswordVerifyDTO] instance.
  RefundPasswordVerifyDTO({
    required this.walletRefundNo,
    this.refundAmount = 0,
    required this.reason,
    this.notifyUrl,
    required this.paymentPassword,
  });

  /// 钱包退款单号
  String walletRefundNo;

  /// 退款金额(元)
  num refundAmount;

  /// 退款原因
  String reason;

  /// 退款通知地址
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? notifyUrl;

  /// 支付密码
  String paymentPassword;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RefundPasswordVerifyDTO &&
          other.walletRefundNo == walletRefundNo &&
          other.refundAmount == refundAmount &&
          other.reason == reason &&
          other.notifyUrl == notifyUrl &&
          other.paymentPassword == paymentPassword;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (walletRefundNo.hashCode) +
      (refundAmount.hashCode) +
      (reason.hashCode) +
      (notifyUrl == null ? 0 : notifyUrl!.hashCode) +
      (paymentPassword.hashCode);

  @override
  String toString() =>
      'RefundPasswordVerifyDTO[walletRefundNo=$walletRefundNo, refundAmount=$refundAmount, reason=$reason, notifyUrl=$notifyUrl, paymentPassword=$paymentPassword]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'walletRefundNo'] = this.walletRefundNo;
    json[r'refundAmount'] = this.refundAmount;
    json[r'reason'] = this.reason;
    if (this.notifyUrl != null) {
      json[r'notifyUrl'] = this.notifyUrl;
    } else {
      json[r'notifyUrl'] = null;
    }
    json[r'paymentPassword'] = this.paymentPassword;
    return json;
  }

  /// Returns a new [RefundPasswordVerifyDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RefundPasswordVerifyDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "RefundPasswordVerifyDTO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "RefundPasswordVerifyDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RefundPasswordVerifyDTO(
        walletRefundNo: mapValueOfType<String>(json, r'walletRefundNo')!,
        refundAmount: json[r'refundAmount'] == null
            ? 0
            : num.parse(json[r'refundAmount'].toString()),
        reason: mapValueOfType<String>(json, r'reason')!,
        notifyUrl: mapValueOfType<String>(json, r'notifyUrl'),
        paymentPassword: mapValueOfType<String>(json, r'paymentPassword')!,
      );
    }
    return null;
  }

  static List<RefundPasswordVerifyDTO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RefundPasswordVerifyDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RefundPasswordVerifyDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RefundPasswordVerifyDTO> mapFromJson(dynamic json) {
    final map = <String, RefundPasswordVerifyDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RefundPasswordVerifyDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RefundPasswordVerifyDTO-objects as value to a dart map
  static Map<String, List<RefundPasswordVerifyDTO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<RefundPasswordVerifyDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RefundPasswordVerifyDTO.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'walletRefundNo',
    'refundAmount',
    'reason',
    'paymentPassword',
  };
}
