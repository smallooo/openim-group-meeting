//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StrSubscriptionRefund {
  /// Returns a new [StrSubscriptionRefund] instance.
  StrSubscriptionRefund({
    this.id,
    this.subscriptionId,
    this.paymentId,
    this.refundOrderNo,
    this.paySystemRefundId,
    this.userId,
    this.refundAmount,
    this.refundReason,
    this.refundStatus,
    this.thirdPartyRefundNo,
    this.refundTime,
    this.notifyUrl,
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

  /// 支付订单ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? paymentId;

  /// 退款订单号
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? refundOrderNo;

  /// 支付系统退款ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? paySystemRefundId;

  /// 发起人用户ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? userId;

  /// 退款金额
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? refundAmount;

  /// 退款原因
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? refundReason;

  /// 退款状态:PENDING,SUCCESS,FAILED
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? refundStatus;

  /// 第三方退款订单号
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? thirdPartyRefundNo;

  /// 退款完成时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? refundTime;

  /// 退款通知地址
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? notifyUrl;

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
      other is StrSubscriptionRefund &&
          other.id == id &&
          other.subscriptionId == subscriptionId &&
          other.paymentId == paymentId &&
          other.refundOrderNo == refundOrderNo &&
          other.paySystemRefundId == paySystemRefundId &&
          other.userId == userId &&
          other.refundAmount == refundAmount &&
          other.refundReason == refundReason &&
          other.refundStatus == refundStatus &&
          other.thirdPartyRefundNo == thirdPartyRefundNo &&
          other.refundTime == refundTime &&
          other.notifyUrl == notifyUrl &&
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
      (paymentId == null ? 0 : paymentId!.hashCode) +
      (refundOrderNo == null ? 0 : refundOrderNo!.hashCode) +
      (paySystemRefundId == null ? 0 : paySystemRefundId!.hashCode) +
      (userId == null ? 0 : userId!.hashCode) +
      (refundAmount == null ? 0 : refundAmount!.hashCode) +
      (refundReason == null ? 0 : refundReason!.hashCode) +
      (refundStatus == null ? 0 : refundStatus!.hashCode) +
      (thirdPartyRefundNo == null ? 0 : thirdPartyRefundNo!.hashCode) +
      (refundTime == null ? 0 : refundTime!.hashCode) +
      (notifyUrl == null ? 0 : notifyUrl!.hashCode) +
      (extra == null ? 0 : extra!.hashCode) +
      (version == null ? 0 : version!.hashCode) +
      (isDeleted == null ? 0 : isDeleted!.hashCode) +
      (createdBy == null ? 0 : createdBy!.hashCode) +
      (updatedBy == null ? 0 : updatedBy!.hashCode) +
      (createdAt == null ? 0 : createdAt!.hashCode) +
      (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() =>
      'StrSubscriptionRefund[id=$id, subscriptionId=$subscriptionId, paymentId=$paymentId, refundOrderNo=$refundOrderNo, paySystemRefundId=$paySystemRefundId, userId=$userId, refundAmount=$refundAmount, refundReason=$refundReason, refundStatus=$refundStatus, thirdPartyRefundNo=$thirdPartyRefundNo, refundTime=$refundTime, notifyUrl=$notifyUrl, extra=$extra, version=$version, isDeleted=$isDeleted, createdBy=$createdBy, updatedBy=$updatedBy, createdAt=$createdAt, updatedAt=$updatedAt]';

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
    if (this.paymentId != null) {
      json[r'paymentId'] = this.paymentId;
    } else {
      json[r'paymentId'] = null;
    }
    if (this.refundOrderNo != null) {
      json[r'refundOrderNo'] = this.refundOrderNo;
    } else {
      json[r'refundOrderNo'] = null;
    }
    if (this.paySystemRefundId != null) {
      json[r'paySystemRefundId'] = this.paySystemRefundId;
    } else {
      json[r'paySystemRefundId'] = null;
    }
    if (this.userId != null) {
      json[r'userId'] = this.userId;
    } else {
      json[r'userId'] = null;
    }
    if (this.refundAmount != null) {
      json[r'refundAmount'] = this.refundAmount;
    } else {
      json[r'refundAmount'] = null;
    }
    if (this.refundReason != null) {
      json[r'refundReason'] = this.refundReason;
    } else {
      json[r'refundReason'] = null;
    }
    if (this.refundStatus != null) {
      json[r'refundStatus'] = this.refundStatus;
    } else {
      json[r'refundStatus'] = null;
    }
    if (this.thirdPartyRefundNo != null) {
      json[r'thirdPartyRefundNo'] = this.thirdPartyRefundNo;
    } else {
      json[r'thirdPartyRefundNo'] = null;
    }
    if (this.refundTime != null) {
      json[r'refundTime'] = this.refundTime!.toUtc().toIso8601String();
    } else {
      json[r'refundTime'] = null;
    }
    if (this.notifyUrl != null) {
      json[r'notifyUrl'] = this.notifyUrl;
    } else {
      json[r'notifyUrl'] = null;
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

  /// Returns a new [StrSubscriptionRefund] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StrSubscriptionRefund? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "StrSubscriptionRefund[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "StrSubscriptionRefund[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StrSubscriptionRefund(
        id: mapValueOfType<int>(json, r'id'),
        subscriptionId: mapValueOfType<int>(json, r'subscriptionId'),
        paymentId: mapValueOfType<int>(json, r'paymentId'),
        refundOrderNo: mapValueOfType<String>(json, r'refundOrderNo'),
        paySystemRefundId: mapValueOfType<String>(json, r'paySystemRefundId'),
        userId: mapValueOfType<int>(json, r'userId'),
        refundAmount: json[r'refundAmount'] == null
            ? null
            : num.parse(json[r'refundAmount'].toString()),
        refundReason: mapValueOfType<String>(json, r'refundReason'),
        refundStatus: mapValueOfType<String>(json, r'refundStatus'),
        thirdPartyRefundNo: mapValueOfType<String>(json, r'thirdPartyRefundNo'),
        refundTime: mapDateTime(json, r'refundTime', ''),
        notifyUrl: mapValueOfType<String>(json, r'notifyUrl'),
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

  static List<StrSubscriptionRefund> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <StrSubscriptionRefund>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StrSubscriptionRefund.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StrSubscriptionRefund> mapFromJson(dynamic json) {
    final map = <String, StrSubscriptionRefund>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StrSubscriptionRefund.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StrSubscriptionRefund-objects as value to a dart map
  static Map<String, List<StrSubscriptionRefund>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<StrSubscriptionRefund>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StrSubscriptionRefund.listFromJson(
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
