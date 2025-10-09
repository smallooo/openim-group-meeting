//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BalanceQueryDTO {
  /// Returns a new [BalanceQueryDTO] instance.
  BalanceQueryDTO({
    required this.memberId,
    this.currencyId,
    this.currencyName,
  });

  /// 用户ID
  int memberId;

  /// 币种ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? currencyId;

  /// 币种名称
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currencyName;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BalanceQueryDTO &&
          other.memberId == memberId &&
          other.currencyId == currencyId &&
          other.currencyName == currencyName;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (memberId.hashCode) +
      (currencyId == null ? 0 : currencyId!.hashCode) +
      (currencyName == null ? 0 : currencyName!.hashCode);

  @override
  String toString() =>
      'BalanceQueryDTO[memberId=$memberId, currencyId=$currencyId, currencyName=$currencyName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'memberId'] = this.memberId;
    if (this.currencyId != null) {
      json[r'currencyId'] = this.currencyId;
    } else {
      json[r'currencyId'] = null;
    }
    if (this.currencyName != null) {
      json[r'currencyName'] = this.currencyName;
    } else {
      json[r'currencyName'] = null;
    }
    return json;
  }

  /// Returns a new [BalanceQueryDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BalanceQueryDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "BalanceQueryDTO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "BalanceQueryDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BalanceQueryDTO(
        memberId: mapValueOfType<int>(json, r'memberId')!,
        currencyId: mapValueOfType<int>(json, r'currencyId'),
        currencyName: mapValueOfType<String>(json, r'currencyName'),
      );
    }
    return null;
  }

  static List<BalanceQueryDTO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <BalanceQueryDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BalanceQueryDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BalanceQueryDTO> mapFromJson(dynamic json) {
    final map = <String, BalanceQueryDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BalanceQueryDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BalanceQueryDTO-objects as value to a dart map
  static Map<String, List<BalanceQueryDTO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<BalanceQueryDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BalanceQueryDTO.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'memberId',
  };
}
