//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PersonalPayOrderOrderNoQueryDTO {
  /// Returns a new [PersonalPayOrderOrderNoQueryDTO] instance.
  PersonalPayOrderOrderNoQueryDTO({
    required this.orderNo,
  });

  /// 订单系统订单号
  String orderNo;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PersonalPayOrderOrderNoQueryDTO && other.orderNo == orderNo;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (orderNo.hashCode);

  @override
  String toString() => 'PersonalPayOrderOrderNoQueryDTO[orderNo=$orderNo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'orderNo'] = this.orderNo;
    return json;
  }

  /// Returns a new [PersonalPayOrderOrderNoQueryDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PersonalPayOrderOrderNoQueryDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "PersonalPayOrderOrderNoQueryDTO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "PersonalPayOrderOrderNoQueryDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PersonalPayOrderOrderNoQueryDTO(
        orderNo: mapValueOfType<String>(json, r'orderNo')!,
      );
    }
    return null;
  }

  static List<PersonalPayOrderOrderNoQueryDTO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PersonalPayOrderOrderNoQueryDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PersonalPayOrderOrderNoQueryDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PersonalPayOrderOrderNoQueryDTO> mapFromJson(
      dynamic json) {
    final map = <String, PersonalPayOrderOrderNoQueryDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PersonalPayOrderOrderNoQueryDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PersonalPayOrderOrderNoQueryDTO-objects as value to a dart map
  static Map<String, List<PersonalPayOrderOrderNoQueryDTO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PersonalPayOrderOrderNoQueryDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PersonalPayOrderOrderNoQueryDTO.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'orderNo',
  };
}
