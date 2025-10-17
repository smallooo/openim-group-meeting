//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PaymentVO {
  /// Returns a new [PaymentVO] instance.
  PaymentVO({
    this.id,
    this.paymentId,
    this.amount,
    this.payType,
    this.paymentMethod,
    this.status,
    this.statusText,
    this.transactionId,
    this.paymentUrl,
    this.qrCode,
    this.payTime,
    this.expireTime,
    this.createdAt,
    this.updatedAt,
    this.thirdPartyOrderNo,
  });

  /// 支付ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// 支付单号
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? paymentId;

  /// 支付金额
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? amount;

  /// 支付方式：1-支付宝，2-微信，3-数字货币
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? payType;

  /// 支付方法:USDT->USDT;BTC->比特币;ETH->以太坊
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? paymentMethod;

  /// 支付状态：PENDING->待支付,SUCCESS->支付成功,FAILED->支付失败,CANCELLED->已取消
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// 支付状态描述
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? statusText;

  /// 第三方交易ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? transactionId;

  /// 支付URL
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? paymentUrl;

  /// 二维码
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? qrCode;

  /// 支付时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? payTime;

  /// 过期时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? expireTime;

  /// 创建时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  /// 更新时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedAt;

  /// 第三方支付订单号
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
      other is PaymentVO &&
          other.id == id &&
          other.paymentId == paymentId &&
          other.amount == amount &&
          other.payType == payType &&
          other.paymentMethod == paymentMethod &&
          other.status == status &&
          other.statusText == statusText &&
          other.transactionId == transactionId &&
          other.paymentUrl == paymentUrl &&
          other.qrCode == qrCode &&
          other.payTime == payTime &&
          other.expireTime == expireTime &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.thirdPartyOrderNo == thirdPartyOrderNo;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (paymentId == null ? 0 : paymentId!.hashCode) +
      (amount == null ? 0 : amount!.hashCode) +
      (payType == null ? 0 : payType!.hashCode) +
      (paymentMethod == null ? 0 : paymentMethod!.hashCode) +
      (status == null ? 0 : status!.hashCode) +
      (statusText == null ? 0 : statusText!.hashCode) +
      (transactionId == null ? 0 : transactionId!.hashCode) +
      (paymentUrl == null ? 0 : paymentUrl!.hashCode) +
      (qrCode == null ? 0 : qrCode!.hashCode) +
      (payTime == null ? 0 : payTime!.hashCode) +
      (expireTime == null ? 0 : expireTime!.hashCode) +
      (createdAt == null ? 0 : createdAt!.hashCode) +
      (updatedAt == null ? 0 : updatedAt!.hashCode) +
      (thirdPartyOrderNo == null ? 0 : thirdPartyOrderNo!.hashCode);

  @override
  String toString() =>
      'PaymentVO[id=$id, paymentId=$paymentId, amount=$amount, payType=$payType, paymentMethod=$paymentMethod, status=$status, statusText=$statusText, transactionId=$transactionId, paymentUrl=$paymentUrl, qrCode=$qrCode, payTime=$payTime, expireTime=$expireTime, createdAt=$createdAt, updatedAt=$updatedAt, thirdPartyOrderNo=$thirdPartyOrderNo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.paymentId != null) {
      json[r'paymentId'] = this.paymentId;
    } else {
      json[r'paymentId'] = null;
    }
    if (this.amount != null) {
      json[r'amount'] = this.amount;
    } else {
      json[r'amount'] = null;
    }
    if (this.payType != null) {
      json[r'payType'] = this.payType;
    } else {
      json[r'payType'] = null;
    }
    if (this.paymentMethod != null) {
      json[r'paymentMethod'] = this.paymentMethod;
    } else {
      json[r'paymentMethod'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.statusText != null) {
      json[r'statusText'] = this.statusText;
    } else {
      json[r'statusText'] = null;
    }
    if (this.transactionId != null) {
      json[r'transactionId'] = this.transactionId;
    } else {
      json[r'transactionId'] = null;
    }
    if (this.paymentUrl != null) {
      json[r'paymentUrl'] = this.paymentUrl;
    } else {
      json[r'paymentUrl'] = null;
    }
    if (this.qrCode != null) {
      json[r'qrCode'] = this.qrCode;
    } else {
      json[r'qrCode'] = null;
    }
    if (this.payTime != null) {
      json[r'payTime'] = this.payTime;
    } else {
      json[r'payTime'] = null;
    }
    if (this.expireTime != null) {
      json[r'expireTime'] = this.expireTime;
    } else {
      json[r'expireTime'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    if (this.thirdPartyOrderNo != null) {
      json[r'thirdPartyOrderNo'] = this.thirdPartyOrderNo;
    } else {
      json[r'thirdPartyOrderNo'] = null;
    }
    return json;
  }

  /// Returns a new [PaymentVO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PaymentVO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "PaymentVO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "PaymentVO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PaymentVO(
        id: mapValueOfType<int>(json, r'id'),
        paymentId: mapValueOfType<String>(json, r'paymentId'),
        amount: json[r'amount'] == null
            ? null
            : num.parse(json[r'amount'].toString()),
        payType: mapValueOfType<int>(json, r'payType'),
        paymentMethod: mapValueOfType<String>(json, r'paymentMethod'),
        status: mapValueOfType<String>(json, r'status'),
        statusText: mapValueOfType<String>(json, r'statusText'),
        transactionId: mapValueOfType<String>(json, r'transactionId'),
        paymentUrl: mapValueOfType<String>(json, r'paymentUrl'),
        qrCode: mapValueOfType<String>(json, r'qrCode'),
        payTime: mapValueOfType<String>(json, r'payTime'),
        expireTime: mapValueOfType<String>(json, r'expireTime'),
        createdAt: mapValueOfType<String>(json, r'createdAt'),
        updatedAt: mapValueOfType<String>(json, r'updatedAt'),
        thirdPartyOrderNo: mapValueOfType<String>(json, r'thirdPartyOrderNo'),
      );
    }
    return null;
  }

  static List<PaymentVO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PaymentVO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentVO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PaymentVO> mapFromJson(dynamic json) {
    final map = <String, PaymentVO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaymentVO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PaymentVO-objects as value to a dart map
  static Map<String, List<PaymentVO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PaymentVO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PaymentVO.listFromJson(
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
