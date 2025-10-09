//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchSuggestionItemDTO {
  /// Returns a new [SearchSuggestionItemDTO] instance.
  SearchSuggestionItemDTO({
    this.keyword,
    this.type,
    this.count,
  });

  /// 建议关键词
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? keyword;

  /// 建议类型：keyword,hot,history
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  /// 搜索次数
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? count;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SearchSuggestionItemDTO &&
          other.keyword == keyword &&
          other.type == type &&
          other.count == count;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (keyword == null ? 0 : keyword!.hashCode) +
      (type == null ? 0 : type!.hashCode) +
      (count == null ? 0 : count!.hashCode);

  @override
  String toString() =>
      'SearchSuggestionItemDTO[keyword=$keyword, type=$type, count=$count]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.keyword != null) {
      json[r'keyword'] = this.keyword;
    } else {
      json[r'keyword'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.count != null) {
      json[r'count'] = this.count;
    } else {
      json[r'count'] = null;
    }
    return json;
  }

  /// Returns a new [SearchSuggestionItemDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchSuggestionItemDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "SearchSuggestionItemDTO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "SearchSuggestionItemDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchSuggestionItemDTO(
        keyword: mapValueOfType<String>(json, r'keyword'),
        type: mapValueOfType<String>(json, r'type'),
        count: mapValueOfType<int>(json, r'count'),
      );
    }
    return null;
  }

  static List<SearchSuggestionItemDTO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SearchSuggestionItemDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchSuggestionItemDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchSuggestionItemDTO> mapFromJson(dynamic json) {
    final map = <String, SearchSuggestionItemDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchSuggestionItemDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchSuggestionItemDTO-objects as value to a dart map
  static Map<String, List<SearchSuggestionItemDTO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<SearchSuggestionItemDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchSuggestionItemDTO.listFromJson(
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
