//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SuggestionsQueryDTO {
  /// Returns a new [SuggestionsQueryDTO] instance.
  SuggestionsQueryDTO({
    this.keyword,
    this.limit = 10,
  });

  /// 搜索关键词，用于获取相关建议
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? keyword;

  /// 返回数量，默认10
  int limit;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SuggestionsQueryDTO &&
          other.keyword == keyword &&
          other.limit == limit;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (keyword == null ? 0 : keyword!.hashCode) + (limit.hashCode);

  @override
  String toString() => 'SuggestionsQueryDTO[keyword=$keyword, limit=$limit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.keyword != null) {
      json[r'keyword'] = this.keyword;
    } else {
      json[r'keyword'] = null;
    }
    json[r'limit'] = this.limit;
    return json;
  }

  /// Returns a new [SuggestionsQueryDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SuggestionsQueryDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "SuggestionsQueryDTO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "SuggestionsQueryDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SuggestionsQueryDTO(
        keyword: mapValueOfType<String>(json, r'keyword'),
        limit: mapValueOfType<int>(json, r'limit') ?? 10,
      );
    }
    return null;
  }

  static List<SuggestionsQueryDTO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SuggestionsQueryDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SuggestionsQueryDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SuggestionsQueryDTO> mapFromJson(dynamic json) {
    final map = <String, SuggestionsQueryDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SuggestionsQueryDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SuggestionsQueryDTO-objects as value to a dart map
  static Map<String, List<SuggestionsQueryDTO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<SuggestionsQueryDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SuggestionsQueryDTO.listFromJson(
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
