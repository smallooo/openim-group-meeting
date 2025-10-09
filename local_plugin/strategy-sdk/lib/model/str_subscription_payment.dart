//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StrSubscriptionPayment {
  /// Returns a new [StrSubscriptionPayment] instance.
  StrSubscriptionPayment({
    this.id,
    this.subscriptionId,
    this.paymentOrderNo,
    this.paySystemOrderId,
    this.userId,
    this.amount,
    this.paymentMethod,
    this.paymentStatus,
    this.notifyUrl,
    this.returnUrl,
    this.paymentUrl,
    this.qrCode,
    this.thirdPartyOrderNo,
    this.paidTime,
    this.expireTime,
    this.extra,
    this.version,
    this.isDeleted,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
  });

  /// 主键ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// 订阅ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? subscriptionId;

  /// 支付订单号
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? paymentOrderNo;

  /// 支付系统订单ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? paySystemOrderId;

  /// 发起人用户ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? userId;

  /// 支付金额
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? amount;

  /// 支付方式:WECHAT,ALIPAY,UNIONPAY,WALLET
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? paymentMethod;

  /// 支付状态:PENDING,SUCCESS,FAILED,CANCELLED
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? paymentStatus;

  /// 异步通知地址
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? notifyUrl;

  /// 同步返回地址
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? returnUrl;

  /// 支付链接
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? paymentUrl;

  /// 二维码内容
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? qrCode;

  /// 第三方订单号
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

  /// 订单过期时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? expireTime;

  /// 扩展参数JSON
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? extra;

  /// 乐观锁版本号
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? version;

  /// 逻辑删除:0-未删除,1-已删除
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? isDeleted;

  /// 创建人
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdBy;

  /// 更新人
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedBy;

  /// 创建时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  /// 更新时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StrSubscriptionPayment &&
          other.id == id &&
          other.subscriptionId == subscriptionId &&
          other.paymentOrderNo == paymentOrderNo &&
          other.paySystemOrderId == paySystemOrderId &&
          other.userId == userId &&
          other.amount == amount &&
          other.paymentMethod == paymentMethod &&
          other.paymentStatus == paymentStatus &&
          other.notifyUrl == notifyUrl &&
          other.returnUrl == returnUrl &&
          other.paymentUrl == paymentUrl &&
          other.qrCode == qrCode &&
          other.thirdPartyOrderNo == thirdPartyOrderNo &&
          other.paidTime == paidTime &&
          other.expireTime == expireTime &&
          other.extra == extra &&
          other.version == version &&
          other.isDeleted == isDeleted &&
          other.createdBy == createdBy &&
          other.updatedBy == updatedBy &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (subscriptionId == null ? 0 : subscriptionId!.hashCode) +
      (paymentOrderNo == null ? 0 : paymentOrderNo!.hashCode) +
      (paySystemOrderId == null ? 0 : paySystemOrderId!.hashCode) +
      (userId == null ? 0 : userId!.hashCode) +
      (amount == null ? 0 : amount!.hashCode) +
      (paymentMethod == null ? 0 : paymentMethod!.hashCode) +
      (paymentStatus == null ? 0 : paymentStatus!.hashCode) +
      (notifyUrl == null ? 0 : notifyUrl!.hashCode) +
      (returnUrl == null ? 0 : returnUrl!.hashCode) +
      (paymentUrl == null ? 0 : paymentUrl!.hashCode) +
      (qrCode == null ? 0 : qrCode!.hashCode) +
      (thirdPartyOrderNo == null ? 0 : thirdPartyOrderNo!.hashCode) +
      (paidTime == null ? 0 : paidTime!.hashCode) +
      (expireTime == null ? 0 : expireTime!.hashCode) +
      (extra == null ? 0 : extra!.hashCode) +
      (version == null ? 0 : version!.hashCode) +
      (isDeleted == null ? 0 : isDeleted!.hashCode) +
      (createdBy == null ? 0 : createdBy!.hashCode) +
      (updatedBy == null ? 0 : updatedBy!.hashCode) +
      (createdAt == null ? 0 : createdAt!.hashCode) +
      (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() =>
      'StrSubscriptionPayment[id=$id, subscriptionId=$subscriptionId, paymentOrderNo=$paymentOrderNo, paySystemOrderId=$paySystemOrderId, userId=$userId, amount=$amount, paymentMethod=$paymentMethod, paymentStatus=$paymentStatus, notifyUrl=$notifyUrl, returnUrl=$returnUrl, paymentUrl=$paymentUrl, qrCode=$qrCode, thirdPartyOrderNo=$thirdPartyOrderNo, paidTime=$paidTime, expireTime=$expireTime, extra=$extra, version=$version, isDeleted=$isDeleted, createdBy=$createdBy, updatedBy=$updatedBy, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.subscriptionId != null) {
      json[r'subscriptionId'] = this.subscriptionId;
    } else {
      json[r'subscriptionId'] = null;
    }
    if (this.paymentOrderNo != null) {
      json[r'paymentOrderNo'] = this.paymentOrderNo;
    } else {
      json[r'paymentOrderNo'] = null;
    }
    if (this.paySystemOrderId != null) {
      json[r'paySystemOrderId'] = this.paySystemOrderId;
    } else {
      json[r'paySystemOrderId'] = null;
    }
    if (this.userId != null) {
      json[r'userId'] = this.userId;
    } else {
      json[r'userId'] = null;
    }
    if (this.amount != null) {
      json[r'amount'] = this.amount;
    } else {
      json[r'amount'] = null;
    }
    if (this.paymentMethod != null) {
      json[r'paymentMethod'] = this.paymentMethod;
    } else {
      json[r'paymentMethod'] = null;
    }
    if (this.paymentStatus != null) {
      json[r'paymentStatus'] = this.paymentStatus;
    } else {
      json[r'paymentStatus'] = null;
    }
    if (this.notifyUrl != null) {
      json[r'notifyUrl'] = this.notifyUrl;
    } else {
      json[r'notifyUrl'] = null;
    }
    if (this.returnUrl != null) {
      json[r'returnUrl'] = this.returnUrl;
    } else {
      json[r'returnUrl'] = null;
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
    if (this.expireTime != null) {
      json[r'expireTime'] = this.expireTime!.toUtc().toIso8601String();
    } else {
      json[r'expireTime'] = null;
    }
    if (this.extra != null) {
      json[r'extra'] = this.extra;
    } else {
      json[r'extra'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    if (this.isDeleted != null) {
      json[r'isDeleted'] = this.isDeleted;
    } else {
      json[r'isDeleted'] = null;
    }
    if (this.createdBy != null) {
      json[r'createdBy'] = this.createdBy;
    } else {
      json[r'createdBy'] = null;
    }
    if (this.updatedBy != null) {
      json[r'updatedBy'] = this.updatedBy;
    } else {
      json[r'updatedBy'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'createdAt'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [StrSubscriptionPayment] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StrSubscriptionPayment? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "StrSubscriptionPayment[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "StrSubscriptionPayment[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StrSubscriptionPayment(
        id: mapValueOfType<int>(json, r'id'),
        subscriptionId: mapValueOfType<int>(json, r'subscriptionId'),
        paymentOrderNo: mapValueOfType<String>(json, r'paymentOrderNo'),
        paySystemOrderId: mapValueOfType<String>(json, r'paySystemOrderId'),
        userId: mapValueOfType<int>(json, r'userId'),
        amount: json[r'amount'] == null
            ? null
            : num.parse(json[r'amount'].toString()),
        paymentMethod: mapValueOfType<String>(json, r'paymentMethod'),
        paymentStatus: mapValueOfType<String>(json, r'paymentStatus'),
        notifyUrl: mapValueOfType<String>(json, r'notifyUrl'),
        returnUrl: mapValueOfType<String>(json, r'returnUrl'),
        paymentUrl: mapValueOfType<String>(json, r'paymentUrl'),
        qrCode: mapValueOfType<String>(json, r'qrCode'),
        thirdPartyOrderNo: mapValueOfType<String>(json, r'thirdPartyOrderNo'),
        paidTime: mapDateTime(json, r'paidTime', ''),
        expireTime: mapDateTime(json, r'expireTime', ''),
        extra: mapValueOfType<String>(json, r'extra'),
        version: mapValueOfType<int>(json, r'version'),
        isDeleted: mapValueOfType<int>(json, r'isDeleted'),
        createdBy: mapValueOfType<String>(json, r'createdBy'),
        updatedBy: mapValueOfType<String>(json, r'updatedBy'),
        createdAt: mapDateTime(json, r'createdAt', ''),
        updatedAt: mapDateTime(json, r'updatedAt', ''),
      );
    }
    return null;
  }

  static List<StrSubscriptionPayment> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <StrSubscriptionPayment>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StrSubscriptionPayment.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StrSubscriptionPayment> mapFromJson(dynamic json) {
    final map = <String, StrSubscriptionPayment>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StrSubscriptionPayment.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StrSubscriptionPayment-objects as value to a dart map
  static Map<String, List<StrSubscriptionPayment>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<StrSubscriptionPayment>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StrSubscriptionPayment.listFromJson(
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
