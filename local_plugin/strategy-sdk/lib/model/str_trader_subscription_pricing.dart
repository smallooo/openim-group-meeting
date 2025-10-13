//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StrTraderSubscriptionPricing {
  /// Returns a new [StrTraderSubscriptionPricing] instance.
  StrTraderSubscriptionPricing({
    this.id,
    this.traderId,
    this.strategyType,
    this.monthlyPrice,
    this.quarterlyPrice,
    this.yearlyPrice,
    this.currency,
    this.discountRate,
    this.isActive,
    this.effectiveFrom,
    this.effectiveTo,
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

  /// 交易员ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? traderId;

  /// 策略类型:SPOT-现货,FUTURES-合约
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? strategyType;

  /// 月度订阅价格
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? monthlyPrice;

  /// 季度订阅价格
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? quarterlyPrice;

  /// 年度订阅价格
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? yearlyPrice;

  /// 价格币种:CNY,USD,USDT
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currency;

  /// 折扣率(0-100)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? discountRate;

  /// 是否激活:0-禁用,1-激活
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? isActive;

  /// 生效开始时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? effectiveFrom;

  /// 生效结束时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? effectiveTo;

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
      other is StrTraderSubscriptionPricing &&
          other.id == id &&
          other.traderId == traderId &&
          other.strategyType == strategyType &&
          other.monthlyPrice == monthlyPrice &&
          other.quarterlyPrice == quarterlyPrice &&
          other.yearlyPrice == yearlyPrice &&
          other.currency == currency &&
          other.discountRate == discountRate &&
          other.isActive == isActive &&
          other.effectiveFrom == effectiveFrom &&
          other.effectiveTo == effectiveTo &&
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
      (traderId == null ? 0 : traderId!.hashCode) +
      (strategyType == null ? 0 : strategyType!.hashCode) +
      (monthlyPrice == null ? 0 : monthlyPrice!.hashCode) +
      (quarterlyPrice == null ? 0 : quarterlyPrice!.hashCode) +
      (yearlyPrice == null ? 0 : yearlyPrice!.hashCode) +
      (currency == null ? 0 : currency!.hashCode) +
      (discountRate == null ? 0 : discountRate!.hashCode) +
      (isActive == null ? 0 : isActive!.hashCode) +
      (effectiveFrom == null ? 0 : effectiveFrom!.hashCode) +
      (effectiveTo == null ? 0 : effectiveTo!.hashCode) +
      (version == null ? 0 : version!.hashCode) +
      (isDeleted == null ? 0 : isDeleted!.hashCode) +
      (createdBy == null ? 0 : createdBy!.hashCode) +
      (updatedBy == null ? 0 : updatedBy!.hashCode) +
      (createdAt == null ? 0 : createdAt!.hashCode) +
      (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() =>
      'StrTraderSubscriptionPricing[id=$id, traderId=$traderId, strategyType=$strategyType, monthlyPrice=$monthlyPrice, quarterlyPrice=$quarterlyPrice, yearlyPrice=$yearlyPrice, currency=$currency, discountRate=$discountRate, isActive=$isActive, effectiveFrom=$effectiveFrom, effectiveTo=$effectiveTo, version=$version, isDeleted=$isDeleted, createdBy=$createdBy, updatedBy=$updatedBy, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
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
    if (this.monthlyPrice != null) {
      json[r'monthlyPrice'] = this.monthlyPrice;
    } else {
      json[r'monthlyPrice'] = null;
    }
    if (this.quarterlyPrice != null) {
      json[r'quarterlyPrice'] = this.quarterlyPrice;
    } else {
      json[r'quarterlyPrice'] = null;
    }
    if (this.yearlyPrice != null) {
      json[r'yearlyPrice'] = this.yearlyPrice;
    } else {
      json[r'yearlyPrice'] = null;
    }
    if (this.currency != null) {
      json[r'currency'] = this.currency;
    } else {
      json[r'currency'] = null;
    }
    if (this.discountRate != null) {
      json[r'discountRate'] = this.discountRate;
    } else {
      json[r'discountRate'] = null;
    }
    if (this.isActive != null) {
      json[r'isActive'] = this.isActive;
    } else {
      json[r'isActive'] = null;
    }
    if (this.effectiveFrom != null) {
      json[r'effectiveFrom'] = this.effectiveFrom!.toUtc().toIso8601String();
    } else {
      json[r'effectiveFrom'] = null;
    }
    if (this.effectiveTo != null) {
      json[r'effectiveTo'] = this.effectiveTo!.toUtc().toIso8601String();
    } else {
      json[r'effectiveTo'] = null;
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

  /// Returns a new [StrTraderSubscriptionPricing] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StrTraderSubscriptionPricing? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "StrTraderSubscriptionPricing[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "StrTraderSubscriptionPricing[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StrTraderSubscriptionPricing(
        id: mapValueOfType<int>(json, r'id'),
        traderId: mapValueOfType<int>(json, r'traderId'),
        strategyType: mapValueOfType<String>(json, r'strategyType'),
        monthlyPrice: json[r'monthlyPrice'] == null
            ? null
            : num.parse(json[r'monthlyPrice'].toString()),
        quarterlyPrice: json[r'quarterlyPrice'] == null
            ? null
            : num.parse(json[r'quarterlyPrice'].toString()),
        yearlyPrice: json[r'yearlyPrice'] == null
            ? null
            : num.parse(json[r'yearlyPrice'].toString()),
        currency: mapValueOfType<String>(json, r'currency'),
        discountRate: json[r'discountRate'] == null
            ? null
            : num.parse(json[r'discountRate'].toString()),
        isActive: mapValueOfType<int>(json, r'isActive'),
        effectiveFrom: mapDateTime(json, r'effectiveFrom', ''),
        effectiveTo: mapDateTime(json, r'effectiveTo', ''),
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

  static List<StrTraderSubscriptionPricing> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <StrTraderSubscriptionPricing>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StrTraderSubscriptionPricing.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StrTraderSubscriptionPricing> mapFromJson(dynamic json) {
    final map = <String, StrTraderSubscriptionPricing>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StrTraderSubscriptionPricing.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StrTraderSubscriptionPricing-objects as value to a dart map
  static Map<String, List<StrTraderSubscriptionPricing>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<StrTraderSubscriptionPricing>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StrTraderSubscriptionPricing.listFromJson(
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
