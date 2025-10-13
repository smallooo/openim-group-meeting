//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TraderStrategyQueryDTO {
  /// Returns a new [TraderStrategyQueryDTO] instance.
  TraderStrategyQueryDTO({
    required this.traderId,
    this.marketType,
    this.strategyType,
    this.coinSymbol,
    this.page,
    this.size,
  });

  /// 交易员ID
  int traderId;

  /// 市场类型:SPOT-现货,FUTURES-合约
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? marketType;

  /// 策略类型: 1-短线 2-中线 3-长线
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? strategyType;

  /// 币种符号
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? coinSymbol;

  /// 页码
  ///
  /// Minimum value: 1
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? page;

  /// 每页大小
  ///
  /// Minimum value: 1
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? size;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TraderStrategyQueryDTO &&
          other.traderId == traderId &&
          other.marketType == marketType &&
          other.strategyType == strategyType &&
          other.coinSymbol == coinSymbol &&
          other.page == page &&
          other.size == size;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (traderId.hashCode) +
      (marketType == null ? 0 : marketType!.hashCode) +
      (strategyType == null ? 0 : strategyType!.hashCode) +
      (coinSymbol == null ? 0 : coinSymbol!.hashCode) +
      (page == null ? 0 : page!.hashCode) +
      (size == null ? 0 : size!.hashCode);

  @override
  String toString() =>
      'TraderStrategyQueryDTO[traderId=$traderId, marketType=$marketType, strategyType=$strategyType, coinSymbol=$coinSymbol, page=$page, size=$size]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'traderId'] = this.traderId;
    if (this.marketType != null) {
      json[r'marketType'] = this.marketType;
    } else {
      json[r'marketType'] = null;
    }
    if (this.strategyType != null) {
      json[r'strategyType'] = this.strategyType;
    } else {
      json[r'strategyType'] = null;
    }
    if (this.coinSymbol != null) {
      json[r'coinSymbol'] = this.coinSymbol;
    } else {
      json[r'coinSymbol'] = null;
    }
    if (this.page != null) {
      json[r'page'] = this.page;
    } else {
      json[r'page'] = null;
    }
    if (this.size != null) {
      json[r'size'] = this.size;
    } else {
      json[r'size'] = null;
    }
    return json;
  }

  /// Returns a new [TraderStrategyQueryDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TraderStrategyQueryDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "TraderStrategyQueryDTO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "TraderStrategyQueryDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TraderStrategyQueryDTO(
        traderId: mapValueOfType<int>(json, r'traderId')!,
        marketType: mapValueOfType<String>(json, r'marketType'),
        strategyType: mapValueOfType<int>(json, r'strategyType'),
        coinSymbol: mapValueOfType<String>(json, r'coinSymbol'),
        page: mapValueOfType<int>(json, r'page'),
        size: mapValueOfType<int>(json, r'size'),
      );
    }
    return null;
  }

  static List<TraderStrategyQueryDTO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TraderStrategyQueryDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TraderStrategyQueryDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TraderStrategyQueryDTO> mapFromJson(dynamic json) {
    final map = <String, TraderStrategyQueryDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TraderStrategyQueryDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TraderStrategyQueryDTO-objects as value to a dart map
  static Map<String, List<TraderStrategyQueryDTO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<TraderStrategyQueryDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TraderStrategyQueryDTO.listFromJson(
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
  };
}
