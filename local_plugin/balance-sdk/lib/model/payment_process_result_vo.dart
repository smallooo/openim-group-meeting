//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PaymentProcessResultVO {
  /// Returns a new [PaymentProcessResultVO] instance.
  PaymentProcessResultVO({
    this.success,
    this.errorCode,
    this.errorMessage,
    this.partnerOrderNo,
    this.walletOrderNo,
    this.status,
    this.amount = 0,
    this.currencyId,
    this.paymentTime,
    this.createTime,
    this.userBalance = 0,
  });

  /// 是否成功
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? success;

  /// 错误码
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? errorCode;

  /// 错误信息
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? errorMessage;

  /// 合作方订单号
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? partnerOrderNo;

  /// 钱包订单号
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? walletOrderNo;

  /// 支付状态
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

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

  /// 支付完成时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? paymentTime;

  /// 创建时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createTime;

  /// 用户余额
  num userBalance;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PaymentProcessResultVO &&
          other.success == success &&
          other.errorCode == errorCode &&
          other.errorMessage == errorMessage &&
          other.partnerOrderNo == partnerOrderNo &&
          other.walletOrderNo == walletOrderNo &&
          other.status == status &&
          other.amount == amount &&
          other.currencyId == currencyId &&
          other.paymentTime == paymentTime &&
          other.createTime == createTime &&
          other.userBalance == userBalance;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (success == null ? 0 : success!.hashCode) +
      (errorCode == null ? 0 : errorCode!.hashCode) +
      (errorMessage == null ? 0 : errorMessage!.hashCode) +
      (partnerOrderNo == null ? 0 : partnerOrderNo!.hashCode) +
      (walletOrderNo == null ? 0 : walletOrderNo!.hashCode) +
      (status == null ? 0 : status!.hashCode) +
      (amount.hashCode) +
      (currencyId == null ? 0 : currencyId!.hashCode) +
      (paymentTime == null ? 0 : paymentTime!.hashCode) +
      (createTime == null ? 0 : createTime!.hashCode) +
      (userBalance.hashCode);

  @override
  String toString() =>
      'PaymentProcessResultVO[success=$success, errorCode=$errorCode, errorMessage=$errorMessage, partnerOrderNo=$partnerOrderNo, walletOrderNo=$walletOrderNo, status=$status, amount=$amount, currencyId=$currencyId, paymentTime=$paymentTime, createTime=$createTime, userBalance=$userBalance]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.success != null) {
      json[r'success'] = this.success;
    } else {
      json[r'success'] = null;
    }
    if (this.errorCode != null) {
      json[r'errorCode'] = this.errorCode;
    } else {
      json[r'errorCode'] = null;
    }
    if (this.errorMessage != null) {
      json[r'errorMessage'] = this.errorMessage;
    } else {
      json[r'errorMessage'] = null;
    }
    if (this.partnerOrderNo != null) {
      json[r'partnerOrderNo'] = this.partnerOrderNo;
    } else {
      json[r'partnerOrderNo'] = null;
    }
    if (this.walletOrderNo != null) {
      json[r'walletOrderNo'] = this.walletOrderNo;
    } else {
      json[r'walletOrderNo'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    json[r'amount'] = this.amount;
    if (this.currencyId != null) {
      json[r'currencyId'] = this.currencyId;
    } else {
      json[r'currencyId'] = null;
    }
    if (this.paymentTime != null) {
      json[r'paymentTime'] = this.paymentTime;
    } else {
      json[r'paymentTime'] = null;
    }
    if (this.createTime != null) {
      json[r'createTime'] = this.createTime;
    } else {
      json[r'createTime'] = null;
    }
    json[r'userBalance'] = this.userBalance;
    return json;
  }

  /// Returns a new [PaymentProcessResultVO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PaymentProcessResultVO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "PaymentProcessResultVO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "PaymentProcessResultVO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PaymentProcessResultVO(
        success: mapValueOfType<bool>(json, r'success'),
        errorCode: mapValueOfType<String>(json, r'errorCode'),
        errorMessage: mapValueOfType<String>(json, r'errorMessage'),
        partnerOrderNo: mapValueOfType<String>(json, r'partnerOrderNo'),
        walletOrderNo: mapValueOfType<String>(json, r'walletOrderNo'),
        status: mapValueOfType<String>(json, r'status'),
        amount:
            json[r'amount'] == null ? 0 : num.parse(json[r'amount'].toString()),
        currencyId: mapValueOfType<int>(json, r'currencyId'),
        paymentTime: mapValueOfType<int>(json, r'paymentTime'),
        createTime: mapValueOfType<int>(json, r'createTime'),
        userBalance: json[r'userBalance'] == null
            ? 0
            : num.parse(json[r'userBalance'].toString()),
      );
    }
    return null;
  }

  static List<PaymentProcessResultVO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PaymentProcessResultVO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentProcessResultVO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PaymentProcessResultVO> mapFromJson(dynamic json) {
    final map = <String, PaymentProcessResultVO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaymentProcessResultVO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PaymentProcessResultVO-objects as value to a dart map
  static Map<String, List<PaymentProcessResultVO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PaymentProcessResultVO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PaymentProcessResultVO.listFromJson(
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
