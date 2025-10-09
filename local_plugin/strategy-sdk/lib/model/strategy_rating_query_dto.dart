//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StrategyRatingQueryDTO {
  /// Returns a new [StrategyRatingQueryDTO] instance.
  StrategyRatingQueryDTO({
    this.page,
    this.size,
  });

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
  /// Maximum value: 100
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
      other is StrategyRatingQueryDTO &&
          other.page == page &&
          other.size == size;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (page == null ? 0 : page!.hashCode) + (size == null ? 0 : size!.hashCode);

  @override
  String toString() => 'StrategyRatingQueryDTO[page=$page, size=$size]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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

  /// Returns a new [StrategyRatingQueryDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StrategyRatingQueryDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "StrategyRatingQueryDTO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "StrategyRatingQueryDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StrategyRatingQueryDTO(
        page: mapValueOfType<int>(json, r'page'),
        size: mapValueOfType<int>(json, r'size'),
      );
    }
    return null;
  }

  static List<StrategyRatingQueryDTO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <StrategyRatingQueryDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StrategyRatingQueryDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StrategyRatingQueryDTO> mapFromJson(dynamic json) {
    final map = <String, StrategyRatingQueryDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StrategyRatingQueryDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StrategyRatingQueryDTO-objects as value to a dart map
  static Map<String, List<StrategyRatingQueryDTO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<StrategyRatingQueryDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StrategyRatingQueryDTO.listFromJson(
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
