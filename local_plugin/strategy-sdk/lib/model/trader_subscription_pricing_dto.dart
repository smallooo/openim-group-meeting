//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TraderSubscriptionPricingDTO {
  /// Returns a new [TraderSubscriptionPricingDTO] instance.
  TraderSubscriptionPricingDTO({
    this.id,
    required this.traderId,
    required this.strategyType,
    this.monthlyPrice,
    this.quarterlyPrice,
    this.yearlyPrice,
    this.currency = 'CNY',
    this.discountRate,
    this.isActive = 1,
    this.effectiveFrom,
    this.effectiveTo,
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
  int traderId;

  /// 策略类型:SPOT-现货,FUTURES-合约
  String strategyType;

  /// 月度订阅价格
  ///
  /// Minimum value: 0.01
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? monthlyPrice;

  /// 季度订阅价格
  ///
  /// Minimum value: 0.01
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? quarterlyPrice;

  /// 年度订阅价格
  ///
  /// Minimum value: 0.01
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? yearlyPrice;

  /// 价格币种:CNY,USD,USDT
  String currency;

  /// 折扣率(0-100)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? discountRate;

  /// 是否激活:0-禁用,1-激活
  int isActive;

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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TraderSubscriptionPricingDTO &&
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
          other.effectiveTo == effectiveTo;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (traderId.hashCode) +
      (strategyType.hashCode) +
      (monthlyPrice == null ? 0 : monthlyPrice!.hashCode) +
      (quarterlyPrice == null ? 0 : quarterlyPrice!.hashCode) +
      (yearlyPrice == null ? 0 : yearlyPrice!.hashCode) +
      (currency.hashCode) +
      (discountRate == null ? 0 : discountRate!.hashCode) +
      (isActive.hashCode) +
      (effectiveFrom == null ? 0 : effectiveFrom!.hashCode) +
      (effectiveTo == null ? 0 : effectiveTo!.hashCode);

  @override
  String toString() =>
      'TraderSubscriptionPricingDTO[id=$id, traderId=$traderId, strategyType=$strategyType, monthlyPrice=$monthlyPrice, quarterlyPrice=$quarterlyPrice, yearlyPrice=$yearlyPrice, currency=$currency, discountRate=$discountRate, isActive=$isActive, effectiveFrom=$effectiveFrom, effectiveTo=$effectiveTo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    json[r'traderId'] = this.traderId;
    json[r'strategyType'] = this.strategyType;
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
    json[r'currency'] = this.currency;
    if (this.discountRate != null) {
      json[r'discountRate'] = this.discountRate;
    } else {
      json[r'discountRate'] = null;
    }
    json[r'isActive'] = this.isActive;
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
    return json;
  }

  /// Returns a new [TraderSubscriptionPricingDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TraderSubscriptionPricingDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "TraderSubscriptionPricingDTO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "TraderSubscriptionPricingDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TraderSubscriptionPricingDTO(
        id: mapValueOfType<int>(json, r'id'),
        traderId: mapValueOfType<int>(json, r'traderId')!,
        strategyType: mapValueOfType<String>(json, r'strategyType')!,
        monthlyPrice: json[r'monthlyPrice'] == null
            ? null
            : num.parse(json[r'monthlyPrice'].toString()),
        quarterlyPrice: json[r'quarterlyPrice'] == null
            ? null
            : num.parse(json[r'quarterlyPrice'].toString()),
        yearlyPrice: json[r'yearlyPrice'] == null
            ? null
            : num.parse(json[r'yearlyPrice'].toString()),
        currency: mapValueOfType<String>(json, r'currency') ?? 'CNY',
        discountRate: json[r'discountRate'] == null
            ? null
            : num.parse(json[r'discountRate'].toString()),
        isActive: mapValueOfType<int>(json, r'isActive') ?? 1,
        effectiveFrom: mapDateTime(json, r'effectiveFrom', ''),
        effectiveTo: mapDateTime(json, r'effectiveTo', ''),
      );
    }
    return null;
  }

  static List<TraderSubscriptionPricingDTO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TraderSubscriptionPricingDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TraderSubscriptionPricingDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TraderSubscriptionPricingDTO> mapFromJson(dynamic json) {
    final map = <String, TraderSubscriptionPricingDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TraderSubscriptionPricingDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TraderSubscriptionPricingDTO-objects as value to a dart map
  static Map<String, List<TraderSubscriptionPricingDTO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<TraderSubscriptionPricingDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TraderSubscriptionPricingDTO.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'traderId',
    'strategyType',
  };
}
