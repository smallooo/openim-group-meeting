//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ChannelPayOrder {
  /// Returns a new [ChannelPayOrder] instance.
  ChannelPayOrder({
    this.id,
    this.orderNo,
    this.paymentId,
    this.instOrderNo,
    this.amount,
    this.currencyName,
    this.currencyId,
    this.paymentMethod,
    this.subject,
    this.description,
    this.notifyUrl,
    this.returnUrl,
    this.clientIp,
    this.memberId,
    this.status,
    this.paymentUrl,
    this.qrCode,
    this.expireTime,
    this.thirdPartyOrderNo,
    this.paidTime,
    this.failReason,
    this.createTime,
    this.updateTime,
    this.extra,
  });

  /// 主键ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// 订单系统订单号
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? orderNo;

  /// 支付系统订单号
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? paymentId;

  /// 机构订单号
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? instOrderNo;

  /// 支付金额(元)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? amount;

  /// 币种
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currencyName;

  /// 币种ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? currencyId;

  /// 支付方式：WECHAT,ALIPAY,UNIONPAY,WALLET
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? paymentMethod;

  /// 订单标题
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subject;

  /// 订单描述
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// 异步通知地址
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? notifyUrl;

  /// 同步跳转地址
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? returnUrl;

  /// 用户IP地址
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientIp;

  /// 用户ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? memberId;

  /// 订单状态：PENDING,SUCCESS,FAILED,CANCELLED
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

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

  /// 订单过期时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? expireTime;

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

  /// 失败原因
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? failReason;

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

  /// 扩展参数
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? extra;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChannelPayOrder &&
          other.id == id &&
          other.orderNo == orderNo &&
          other.paymentId == paymentId &&
          other.instOrderNo == instOrderNo &&
          other.amount == amount &&
          other.currencyName == currencyName &&
          other.currencyId == currencyId &&
          other.paymentMethod == paymentMethod &&
          other.subject == subject &&
          other.description == description &&
          other.notifyUrl == notifyUrl &&
          other.returnUrl == returnUrl &&
          other.clientIp == clientIp &&
          other.memberId == memberId &&
          other.status == status &&
          other.paymentUrl == paymentUrl &&
          other.qrCode == qrCode &&
          other.expireTime == expireTime &&
          other.thirdPartyOrderNo == thirdPartyOrderNo &&
          other.paidTime == paidTime &&
          other.failReason == failReason &&
          other.createTime == createTime &&
          other.updateTime == updateTime &&
          other.extra == extra;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (orderNo == null ? 0 : orderNo!.hashCode) +
      (paymentId == null ? 0 : paymentId!.hashCode) +
      (instOrderNo == null ? 0 : instOrderNo!.hashCode) +
      (amount == null ? 0 : amount!.hashCode) +
      (currencyName == null ? 0 : currencyName!.hashCode) +
      (currencyId == null ? 0 : currencyId!.hashCode) +
      (paymentMethod == null ? 0 : paymentMethod!.hashCode) +
      (subject == null ? 0 : subject!.hashCode) +
      (description == null ? 0 : description!.hashCode) +
      (notifyUrl == null ? 0 : notifyUrl!.hashCode) +
      (returnUrl == null ? 0 : returnUrl!.hashCode) +
      (clientIp == null ? 0 : clientIp!.hashCode) +
      (memberId == null ? 0 : memberId!.hashCode) +
      (status == null ? 0 : status!.hashCode) +
      (paymentUrl == null ? 0 : paymentUrl!.hashCode) +
      (qrCode == null ? 0 : qrCode!.hashCode) +
      (expireTime == null ? 0 : expireTime!.hashCode) +
      (thirdPartyOrderNo == null ? 0 : thirdPartyOrderNo!.hashCode) +
      (paidTime == null ? 0 : paidTime!.hashCode) +
      (failReason == null ? 0 : failReason!.hashCode) +
      (createTime == null ? 0 : createTime!.hashCode) +
      (updateTime == null ? 0 : updateTime!.hashCode) +
      (extra == null ? 0 : extra!.hashCode);

  @override
  String toString() =>
      'ChannelPayOrder[id=$id, orderNo=$orderNo, paymentId=$paymentId, instOrderNo=$instOrderNo, amount=$amount, currencyName=$currencyName, currencyId=$currencyId, paymentMethod=$paymentMethod, subject=$subject, description=$description, notifyUrl=$notifyUrl, returnUrl=$returnUrl, clientIp=$clientIp, memberId=$memberId, status=$status, paymentUrl=$paymentUrl, qrCode=$qrCode, expireTime=$expireTime, thirdPartyOrderNo=$thirdPartyOrderNo, paidTime=$paidTime, failReason=$failReason, createTime=$createTime, updateTime=$updateTime, extra=$extra]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.orderNo != null) {
      json[r'orderNo'] = this.orderNo;
    } else {
      json[r'orderNo'] = null;
    }
    if (this.paymentId != null) {
      json[r'paymentId'] = this.paymentId;
    } else {
      json[r'paymentId'] = null;
    }
    if (this.instOrderNo != null) {
      json[r'instOrderNo'] = this.instOrderNo;
    } else {
      json[r'instOrderNo'] = null;
    }
    if (this.amount != null) {
      json[r'amount'] = this.amount;
    } else {
      json[r'amount'] = null;
    }
    if (this.currencyName != null) {
      json[r'currencyName'] = this.currencyName;
    } else {
      json[r'currencyName'] = null;
    }
    if (this.currencyId != null) {
      json[r'currencyId'] = this.currencyId;
    } else {
      json[r'currencyId'] = null;
    }
    if (this.paymentMethod != null) {
      json[r'paymentMethod'] = this.paymentMethod;
    } else {
      json[r'paymentMethod'] = null;
    }
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
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
    if (this.clientIp != null) {
      json[r'clientIp'] = this.clientIp;
    } else {
      json[r'clientIp'] = null;
    }
    if (this.memberId != null) {
      json[r'memberId'] = this.memberId;
    } else {
      json[r'memberId'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
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
    if (this.expireTime != null) {
      json[r'expireTime'] = this.expireTime!.toUtc().toIso8601String();
    } else {
      json[r'expireTime'] = null;
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
    if (this.failReason != null) {
      json[r'failReason'] = this.failReason;
    } else {
      json[r'failReason'] = null;
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
    if (this.extra != null) {
      json[r'extra'] = this.extra;
    } else {
      json[r'extra'] = null;
    }
    return json;
  }

  /// Returns a new [ChannelPayOrder] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ChannelPayOrder? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ChannelPayOrder[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ChannelPayOrder[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ChannelPayOrder(
        id: mapValueOfType<int>(json, r'id'),
        orderNo: mapValueOfType<String>(json, r'orderNo'),
        paymentId: mapValueOfType<String>(json, r'paymentId'),
        instOrderNo: mapValueOfType<String>(json, r'instOrderNo'),
        amount: json[r'amount'] == null
            ? null
            : num.parse(json[r'amount'].toString()),
        currencyName: mapValueOfType<String>(json, r'currencyName'),
        currencyId: mapValueOfType<int>(json, r'currencyId'),
        paymentMethod: mapValueOfType<String>(json, r'paymentMethod'),
        subject: mapValueOfType<String>(json, r'subject'),
        description: mapValueOfType<String>(json, r'description'),
        notifyUrl: mapValueOfType<String>(json, r'notifyUrl'),
        returnUrl: mapValueOfType<String>(json, r'returnUrl'),
        clientIp: mapValueOfType<String>(json, r'clientIp'),
        memberId: mapValueOfType<int>(json, r'memberId'),
        status: mapValueOfType<String>(json, r'status'),
        paymentUrl: mapValueOfType<String>(json, r'paymentUrl'),
        qrCode: mapValueOfType<String>(json, r'qrCode'),
        expireTime: mapDateTime(json, r'expireTime', ''),
        thirdPartyOrderNo: mapValueOfType<String>(json, r'thirdPartyOrderNo'),
        paidTime: mapDateTime(json, r'paidTime', ''),
        failReason: mapValueOfType<String>(json, r'failReason'),
        createTime: mapDateTime(json, r'createTime', ''),
        updateTime: mapDateTime(json, r'updateTime', ''),
        extra: mapValueOfType<String>(json, r'extra'),
      );
    }
    return null;
  }

  static List<ChannelPayOrder> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ChannelPayOrder>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChannelPayOrder.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ChannelPayOrder> mapFromJson(dynamic json) {
    final map = <String, ChannelPayOrder>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ChannelPayOrder.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ChannelPayOrder-objects as value to a dart map
  static Map<String, List<ChannelPayOrder>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ChannelPayOrder>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ChannelPayOrder.listFromJson(
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
