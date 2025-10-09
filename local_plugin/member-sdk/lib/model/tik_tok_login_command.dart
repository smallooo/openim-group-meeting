//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TikTokLoginCommand {
  /// Returns a new [TikTokLoginCommand] instance.
  TikTokLoginCommand({
    required this.code,
    this.state,
  });

  /// TikTok授权码
  String code;

  /// 状态参数，用于防CSRF攻击
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? state;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TikTokLoginCommand && other.code == code && other.state == state;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (code.hashCode) + (state == null ? 0 : state!.hashCode);

  @override
  String toString() => 'TikTokLoginCommand[code=$code, state=$state]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'code'] = this.code;
    if (this.state != null) {
      json[r'state'] = this.state;
    } else {
      json[r'state'] = null;
    }
    return json;
  }

  /// Returns a new [TikTokLoginCommand] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TikTokLoginCommand? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "TikTokLoginCommand[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "TikTokLoginCommand[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TikTokLoginCommand(
        code: mapValueOfType<String>(json, r'code')!,
        state: mapValueOfType<String>(json, r'state'),
      );
    }
    return null;
  }

  static List<TikTokLoginCommand> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TikTokLoginCommand>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TikTokLoginCommand.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TikTokLoginCommand> mapFromJson(dynamic json) {
    final map = <String, TikTokLoginCommand>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TikTokLoginCommand.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TikTokLoginCommand-objects as value to a dart map
  static Map<String, List<TikTokLoginCommand>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<TikTokLoginCommand>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TikTokLoginCommand.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'code',
  };
}
