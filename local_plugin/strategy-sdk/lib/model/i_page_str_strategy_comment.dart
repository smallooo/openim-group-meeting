//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IPageStrStrategyComment {
  /// Returns a new [IPageStrStrategyComment] instance.
  IPageStrStrategyComment({
    this.size,
    this.total,
    this.pages,
    this.current,
    this.records = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? size;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pages;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? current;

  List<StrStrategyComment> records;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IPageStrStrategyComment &&
          other.size == size &&
          other.total == total &&
          other.pages == pages &&
          other.current == current &&
          other.records == records;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (size == null ? 0 : size!.hashCode) +
      (total == null ? 0 : total!.hashCode) +
      (pages == null ? 0 : pages!.hashCode) +
      (current == null ? 0 : current!.hashCode) +
      (records.hashCode);

  @override
  String toString() =>
      'IPageStrStrategyComment[size=$size, total=$total, pages=$pages, current=$current, records=$records]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.size != null) {
      json[r'size'] = this.size;
    } else {
      json[r'size'] = null;
    }
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    if (this.pages != null) {
      json[r'pages'] = this.pages;
    } else {
      json[r'pages'] = null;
    }
    if (this.current != null) {
      json[r'current'] = this.current;
    } else {
      json[r'current'] = null;
    }
    json[r'records'] = this.records;
    return json;
  }

  /// Returns a new [IPageStrStrategyComment] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IPageStrStrategyComment? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "IPageStrStrategyComment[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "IPageStrStrategyComment[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IPageStrStrategyComment(
        size: mapValueOfType<int>(json, r'size'),
        total: mapValueOfType<int>(json, r'total'),
        pages: mapValueOfType<int>(json, r'pages'),
        current: mapValueOfType<int>(json, r'current'),
        records: StrStrategyComment.listFromJson(json[r'records']),
      );
    }
    return null;
  }

  static List<IPageStrStrategyComment> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <IPageStrStrategyComment>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IPageStrStrategyComment.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IPageStrStrategyComment> mapFromJson(dynamic json) {
    final map = <String, IPageStrStrategyComment>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IPageStrStrategyComment.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IPageStrStrategyComment-objects as value to a dart map
  static Map<String, List<IPageStrStrategyComment>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<IPageStrStrategyComment>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IPageStrStrategyComment.listFromJson(
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
