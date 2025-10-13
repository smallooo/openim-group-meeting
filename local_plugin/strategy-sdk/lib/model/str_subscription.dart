//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StrSubscription {
  /// Returns a new [StrSubscription] instance.
  StrSubscription({
    this.id,
    this.subscriberId,
    this.traderId,
    this.strategyType,
    this.subscriptionType,
    this.amount,
    this.startTime,
    this.endTime,
    this.autoRenew,
    this.status,
    this.paymentStatus,
    this.paymentTime,
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

  /// 订阅者用户ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? subscriberId;

  /// 被订阅的交易员ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? traderId;

  /// 订阅的策略类型:SPOT-现货,FUTURES-合约
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? strategyType;

  /// 订阅类型: 1-月订阅 2-季度订阅 3-年订阅
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? subscriptionType;

  /// 订阅金额
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? amount;

  /// 订阅开始时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? startTime;

  /// 订阅结束时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? endTime;

  /// 是否自动续费: 0-否 1-是
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? autoRenew;

  /// 状态: 0-已取消 1-生效中 2-已过期
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? status;

  /// 支付状态:UNPAID-未支付,PAID-已支付,REFUNDED-已退款
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? paymentStatus;

  /// 支付完成时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? paymentTime;

  /// 乐观锁版本号
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? version;

  /// 逻辑删除: 0-未删除 1-已删除
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
      other is StrSubscription &&
          other.id == id &&
          other.subscriberId == subscriberId &&
          other.traderId == traderId &&
          other.strategyType == strategyType &&
          other.subscriptionType == subscriptionType &&
          other.amount == amount &&
          other.startTime == startTime &&
          other.endTime == endTime &&
          other.autoRenew == autoRenew &&
          other.status == status &&
          other.paymentStatus == paymentStatus &&
          other.paymentTime == paymentTime &&
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
      (subscriberId == null ? 0 : subscriberId!.hashCode) +
      (traderId == null ? 0 : traderId!.hashCode) +
      (strategyType == null ? 0 : strategyType!.hashCode) +
      (subscriptionType == null ? 0 : subscriptionType!.hashCode) +
      (amount == null ? 0 : amount!.hashCode) +
      (startTime == null ? 0 : startTime!.hashCode) +
      (endTime == null ? 0 : endTime!.hashCode) +
      (autoRenew == null ? 0 : autoRenew!.hashCode) +
      (status == null ? 0 : status!.hashCode) +
      (paymentStatus == null ? 0 : paymentStatus!.hashCode) +
      (paymentTime == null ? 0 : paymentTime!.hashCode) +
      (version == null ? 0 : version!.hashCode) +
      (isDeleted == null ? 0 : isDeleted!.hashCode) +
      (createdBy == null ? 0 : createdBy!.hashCode) +
      (updatedBy == null ? 0 : updatedBy!.hashCode) +
      (createdAt == null ? 0 : createdAt!.hashCode) +
      (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() =>
      'StrSubscription[id=$id, subscriberId=$subscriberId, traderId=$traderId, strategyType=$strategyType, subscriptionType=$subscriptionType, amount=$amount, startTime=$startTime, endTime=$endTime, autoRenew=$autoRenew, status=$status, paymentStatus=$paymentStatus, paymentTime=$paymentTime, version=$version, isDeleted=$isDeleted, createdBy=$createdBy, updatedBy=$updatedBy, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.subscriberId != null) {
      json[r'subscriberId'] = this.subscriberId;
    } else {
      json[r'subscriberId'] = null;
    }
    if (this.traderId != null) {
      json[r'traderId'] = this.traderId;
    } else {
      json[r'traderId'] = null;
    }
    if (this.strategyType != null) {
      json[r'strategyType'] = this.strategyType;
    } else {
      json[r'strategyType'] = null;
    }
    if (this.subscriptionType != null) {
      json[r'subscriptionType'] = this.subscriptionType;
    } else {
      json[r'subscriptionType'] = null;
    }
    if (this.amount != null) {
      json[r'amount'] = this.amount;
    } else {
      json[r'amount'] = null;
    }
    if (this.startTime != null) {
      json[r'startTime'] = this.startTime!.toUtc().toIso8601String();
    } else {
      json[r'startTime'] = null;
    }
    if (this.endTime != null) {
      json[r'endTime'] = this.endTime!.toUtc().toIso8601String();
    } else {
      json[r'endTime'] = null;
    }
    if (this.autoRenew != null) {
      json[r'autoRenew'] = this.autoRenew;
    } else {
      json[r'autoRenew'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.paymentStatus != null) {
      json[r'paymentStatus'] = this.paymentStatus;
    } else {
      json[r'paymentStatus'] = null;
    }
    if (this.paymentTime != null) {
      json[r'paymentTime'] = this.paymentTime!.toUtc().toIso8601String();
    } else {
      json[r'paymentTime'] = null;
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

  /// Returns a new [StrSubscription] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StrSubscription? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "StrSubscription[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "StrSubscription[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StrSubscription(
        id: mapValueOfType<int>(json, r'id'),
        subscriberId: mapValueOfType<int>(json, r'subscriberId'),
        traderId: mapValueOfType<int>(json, r'traderId'),
        strategyType: mapValueOfType<String>(json, r'strategyType'),
        subscriptionType: mapValueOfType<int>(json, r'subscriptionType'),
        amount: json[r'amount'] == null
            ? null
            : num.parse(json[r'amount'].toString()),
        startTime: mapDateTime(json, r'startTime', ''),
        endTime: mapDateTime(json, r'endTime', ''),
        autoRenew: mapValueOfType<int>(json, r'autoRenew'),
        status: mapValueOfType<int>(json, r'status'),
        paymentStatus: mapValueOfType<String>(json, r'paymentStatus'),
        paymentTime: mapDateTime(json, r'paymentTime', ''),
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

  static List<StrSubscription> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <StrSubscription>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StrSubscription.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StrSubscription> mapFromJson(dynamic json) {
    final map = <String, StrSubscription>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StrSubscription.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StrSubscription-objects as value to a dart map
  static Map<String, List<StrSubscription>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<StrSubscription>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StrSubscription.listFromJson(
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
