//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GoogleAuthUrlCommand {
  /// Returns a new [GoogleAuthUrlCommand] instance.
  GoogleAuthUrlCommand({
    this.state,
    this.platform = 'web',
  });

  /// 状态参数，防止CSRF攻击
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? state;

  /// 平台类型
  String platform;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GoogleAuthUrlCommand &&
          other.state == state &&
          other.platform == platform;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (state == null ? 0 : state!.hashCode) + (platform.hashCode);

  @override
  String toString() => 'GoogleAuthUrlCommand[state=$state, platform=$platform]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.state != null) {
      json[r'state'] = this.state;
    } else {
      json[r'state'] = null;
    }
    json[r'platform'] = this.platform;
    return json;
  }

  /// Returns a new [GoogleAuthUrlCommand] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GoogleAuthUrlCommand? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "GoogleAuthUrlCommand[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "GoogleAuthUrlCommand[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GoogleAuthUrlCommand(
        state: mapValueOfType<String>(json, r'state'),
        platform: mapValueOfType<String>(json, r'platform') ?? 'web',
      );
    }
    return null;
  }

  static List<GoogleAuthUrlCommand> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <GoogleAuthUrlCommand>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GoogleAuthUrlCommand.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GoogleAuthUrlCommand> mapFromJson(dynamic json) {
    final map = <String, GoogleAuthUrlCommand>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GoogleAuthUrlCommand.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GoogleAuthUrlCommand-objects as value to a dart map
  static Map<String, List<GoogleAuthUrlCommand>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<GoogleAuthUrlCommand>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GoogleAuthUrlCommand.listFromJson(
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
