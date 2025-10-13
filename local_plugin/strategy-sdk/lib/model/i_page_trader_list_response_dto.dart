//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IPageTraderListResponseDTO {
  /// Returns a new [IPageTraderListResponseDTO] instance.
  IPageTraderListResponseDTO({
    this.size,
    this.total,
    this.pages,
    this.records = const [],
    this.current,
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

  List<TraderListResponseDTO> records;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? current;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IPageTraderListResponseDTO &&
          other.size == size &&
          other.total == total &&
          other.pages == pages &&
          other.records == records &&
          other.current == current;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (size == null ? 0 : size!.hashCode) +
      (total == null ? 0 : total!.hashCode) +
      (pages == null ? 0 : pages!.hashCode) +
      (records.hashCode) +
      (current == null ? 0 : current!.hashCode);

  @override
  String toString() =>
      'IPageTraderListResponseDTO[size=$size, total=$total, pages=$pages, records=$records, current=$current]';

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
    json[r'records'] = this.records;
    if (this.current != null) {
      json[r'current'] = this.current;
    } else {
      json[r'current'] = null;
    }
    return json;
  }

  /// Returns a new [IPageTraderListResponseDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IPageTraderListResponseDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "IPageTraderListResponseDTO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "IPageTraderListResponseDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IPageTraderListResponseDTO(
        size: mapValueOfType<int>(json, r'size'),
        total: mapValueOfType<int>(json, r'total'),
        pages: mapValueOfType<int>(json, r'pages'),
        records: TraderListResponseDTO.listFromJson(json[r'records']),
        current: mapValueOfType<int>(json, r'current'),
      );
    }
    return null;
  }

  static List<IPageTraderListResponseDTO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <IPageTraderListResponseDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IPageTraderListResponseDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IPageTraderListResponseDTO> mapFromJson(dynamic json) {
    final map = <String, IPageTraderListResponseDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IPageTraderListResponseDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IPageTraderListResponseDTO-objects as value to a dart map
  static Map<String, List<IPageTraderListResponseDTO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<IPageTraderListResponseDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IPageTraderListResponseDTO.listFromJson(
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
