//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RefundProcessDTO {
  /// Returns a new [RefundProcessDTO] instance.
  RefundProcessDTO({
    required this.memberId,
    required this.walletOrderNo,
    required this.walletRefundNo,
    this.refundAmount = 0,
    this.currencyId,
    required this.reason,
  });

  /// 用户ID
  String memberId;

  /// 原钱包订单号
  String walletOrderNo;

  /// 钱包退款单号
  String walletRefundNo;

  /// 退款金额(元)
  num refundAmount;

  /// 货币类型
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? currencyId;

  /// 退款原因
  String reason;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RefundProcessDTO &&
          other.memberId == memberId &&
          other.walletOrderNo == walletOrderNo &&
          other.walletRefundNo == walletRefundNo &&
          other.refundAmount == refundAmount &&
          other.currencyId == currencyId &&
          other.reason == reason;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (memberId.hashCode) +
      (walletOrderNo.hashCode) +
      (walletRefundNo.hashCode) +
      (refundAmount.hashCode) +
      (currencyId == null ? 0 : currencyId!.hashCode) +
      (reason.hashCode);

  @override
  String toString() =>
      'RefundProcessDTO[memberId=$memberId, walletOrderNo=$walletOrderNo, walletRefundNo=$walletRefundNo, refundAmount=$refundAmount, currencyId=$currencyId, reason=$reason]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'memberId'] = this.memberId;
    json[r'walletOrderNo'] = this.walletOrderNo;
    json[r'walletRefundNo'] = this.walletRefundNo;
    json[r'refundAmount'] = this.refundAmount;
    if (this.currencyId != null) {
      json[r'currencyId'] = this.currencyId;
    } else {
      json[r'currencyId'] = null;
    }
    json[r'reason'] = this.reason;
    return json;
  }

  /// Returns a new [RefundProcessDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RefundProcessDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "RefundProcessDTO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "RefundProcessDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RefundProcessDTO(
        memberId: mapValueOfType<String>(json, r'memberId')!,
        walletOrderNo: mapValueOfType<String>(json, r'walletOrderNo')!,
        walletRefundNo: mapValueOfType<String>(json, r'walletRefundNo')!,
        refundAmount: json[r'refundAmount'] == null
            ? 0
            : num.parse(json[r'refundAmount'].toString()),
        currencyId: mapValueOfType<int>(json, r'currencyId'),
        reason: mapValueOfType<String>(json, r'reason')!,
      );
    }
    return null;
  }

  static List<RefundProcessDTO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RefundProcessDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RefundProcessDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RefundProcessDTO> mapFromJson(dynamic json) {
    final map = <String, RefundProcessDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RefundProcessDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RefundProcessDTO-objects as value to a dart map
  static Map<String, List<RefundProcessDTO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<RefundProcessDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RefundProcessDTO.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'memberId',
    'walletOrderNo',
    'walletRefundNo',
    'refundAmount',
    'reason',
  };
}
