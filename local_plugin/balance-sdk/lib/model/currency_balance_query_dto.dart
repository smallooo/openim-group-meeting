//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CurrencyBalanceQueryDTO {
  /// Returns a new [CurrencyBalanceQueryDTO] instance.
  CurrencyBalanceQueryDTO({
    required this.currencyId,
  });

  /// 币种ID
  int currencyId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CurrencyBalanceQueryDTO && other.currencyId == currencyId;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (currencyId.hashCode);

  @override
  String toString() => 'CurrencyBalanceQueryDTO[currencyId=$currencyId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'currencyId'] = this.currencyId;
    return json;
  }

  /// Returns a new [CurrencyBalanceQueryDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CurrencyBalanceQueryDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "CurrencyBalanceQueryDTO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "CurrencyBalanceQueryDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CurrencyBalanceQueryDTO(
        currencyId: mapValueOfType<int>(json, r'currencyId')!,
      );
    }
    return null;
  }

  static List<CurrencyBalanceQueryDTO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <CurrencyBalanceQueryDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CurrencyBalanceQueryDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CurrencyBalanceQueryDTO> mapFromJson(dynamic json) {
    final map = <String, CurrencyBalanceQueryDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CurrencyBalanceQueryDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CurrencyBalanceQueryDTO-objects as value to a dart map
  static Map<String, List<CurrencyBalanceQueryDTO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<CurrencyBalanceQueryDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CurrencyBalanceQueryDTO.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'currencyId',
  };
}
