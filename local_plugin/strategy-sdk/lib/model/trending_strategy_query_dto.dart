//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrendingStrategyQueryDTO {
  /// Returns a new [TrendingStrategyQueryDTO] instance.
  TrendingStrategyQueryDTO({
    this.period,
    this.limit,
  });

  /// 时间周期
  TrendingStrategyQueryDTOPeriodEnum? period;

  /// 返回数量限制
  ///
  /// Minimum value: 1
  /// Maximum value: 50
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? limit;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TrendingStrategyQueryDTO &&
          other.period == period &&
          other.limit == limit;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (period == null ? 0 : period!.hashCode) +
      (limit == null ? 0 : limit!.hashCode);

  @override
  String toString() => 'TrendingStrategyQueryDTO[period=$period, limit=$limit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.period != null) {
      json[r'period'] = this.period;
    } else {
      json[r'period'] = null;
    }
    if (this.limit != null) {
      json[r'limit'] = this.limit;
    } else {
      json[r'limit'] = null;
    }
    return json;
  }

  /// Returns a new [TrendingStrategyQueryDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrendingStrategyQueryDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "TrendingStrategyQueryDTO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "TrendingStrategyQueryDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrendingStrategyQueryDTO(
        period: TrendingStrategyQueryDTOPeriodEnum.fromJson(json[r'period']),
        limit: mapValueOfType<int>(json, r'limit'),
      );
    }
    return null;
  }

  static List<TrendingStrategyQueryDTO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TrendingStrategyQueryDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrendingStrategyQueryDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrendingStrategyQueryDTO> mapFromJson(dynamic json) {
    final map = <String, TrendingStrategyQueryDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrendingStrategyQueryDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrendingStrategyQueryDTO-objects as value to a dart map
  static Map<String, List<TrendingStrategyQueryDTO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<TrendingStrategyQueryDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrendingStrategyQueryDTO.listFromJson(
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

/// 时间周期
class TrendingStrategyQueryDTOPeriodEnum {
  /// Instantiate a new enum with the provided [value].
  const TrendingStrategyQueryDTOPeriodEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const n1 = TrendingStrategyQueryDTOPeriodEnum._(r'1');
  static const n3 = TrendingStrategyQueryDTOPeriodEnum._(r'3');
  static const n7 = TrendingStrategyQueryDTOPeriodEnum._(r'7');
  static const n15 = TrendingStrategyQueryDTOPeriodEnum._(r'15');
  static const n30 = TrendingStrategyQueryDTOPeriodEnum._(r'30');

  /// List of all possible values in this [enum][TrendingStrategyQueryDTOPeriodEnum].
  static const values = <TrendingStrategyQueryDTOPeriodEnum>[
    n1,
    n3,
    n7,
    n15,
    n30,
  ];

  static TrendingStrategyQueryDTOPeriodEnum? fromJson(dynamic value) =>
      TrendingStrategyQueryDTOPeriodEnumTypeTransformer().decode(value);

  static List<TrendingStrategyQueryDTOPeriodEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TrendingStrategyQueryDTOPeriodEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrendingStrategyQueryDTOPeriodEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TrendingStrategyQueryDTOPeriodEnum] to String,
/// and [decode] dynamic data back to [TrendingStrategyQueryDTOPeriodEnum].
class TrendingStrategyQueryDTOPeriodEnumTypeTransformer {
  factory TrendingStrategyQueryDTOPeriodEnumTypeTransformer() =>
      _instance ??= const TrendingStrategyQueryDTOPeriodEnumTypeTransformer._();

  const TrendingStrategyQueryDTOPeriodEnumTypeTransformer._();

  String encode(TrendingStrategyQueryDTOPeriodEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TrendingStrategyQueryDTOPeriodEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TrendingStrategyQueryDTOPeriodEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'1':
          return TrendingStrategyQueryDTOPeriodEnum.n1;
        case r'3':
          return TrendingStrategyQueryDTOPeriodEnum.n3;
        case r'7':
          return TrendingStrategyQueryDTOPeriodEnum.n7;
        case r'15':
          return TrendingStrategyQueryDTOPeriodEnum.n15;
        case r'30':
          return TrendingStrategyQueryDTOPeriodEnum.n30;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TrendingStrategyQueryDTOPeriodEnumTypeTransformer] instance.
  static TrendingStrategyQueryDTOPeriodEnumTypeTransformer? _instance;
}
