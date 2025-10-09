//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MemberAddressDeleteCommand {
  /// Returns a new [MemberAddressDeleteCommand] instance.
  MemberAddressDeleteCommand({
    required this.id,
  });

  /// 地址ID
  int id;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MemberAddressDeleteCommand && other.id == id;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id.hashCode);

  @override
  String toString() => 'MemberAddressDeleteCommand[id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'id'] = this.id;
    return json;
  }

  /// Returns a new [MemberAddressDeleteCommand] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MemberAddressDeleteCommand? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "MemberAddressDeleteCommand[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "MemberAddressDeleteCommand[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MemberAddressDeleteCommand(
        id: mapValueOfType<int>(json, r'id')!,
      );
    }
    return null;
  }

  static List<MemberAddressDeleteCommand> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MemberAddressDeleteCommand>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MemberAddressDeleteCommand.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MemberAddressDeleteCommand> mapFromJson(dynamic json) {
    final map = <String, MemberAddressDeleteCommand>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MemberAddressDeleteCommand.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MemberAddressDeleteCommand-objects as value to a dart map
  static Map<String, List<MemberAddressDeleteCommand>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MemberAddressDeleteCommand>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MemberAddressDeleteCommand.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
  };
}
