//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ChannelCategoryQueryDTO {
  /// Returns a new [ChannelCategoryQueryDTO] instance.
  ChannelCategoryQueryDTO({
    required this.channelId,
    this.level,
  });

  /// 频道ID
  int channelId;

  /// 分类级别筛选，1-一级分类，2-二级分类，3-三级分类
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? level;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChannelCategoryQueryDTO &&
          other.channelId == channelId &&
          other.level == level;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (channelId.hashCode) + (level == null ? 0 : level!.hashCode);

  @override
  String toString() =>
      'ChannelCategoryQueryDTO[channelId=$channelId, level=$level]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'channelId'] = this.channelId;
    if (this.level != null) {
      json[r'level'] = this.level;
    } else {
      json[r'level'] = null;
    }
    return json;
  }

  /// Returns a new [ChannelCategoryQueryDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ChannelCategoryQueryDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ChannelCategoryQueryDTO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ChannelCategoryQueryDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ChannelCategoryQueryDTO(
        channelId: mapValueOfType<int>(json, r'channelId')!,
        level: mapValueOfType<int>(json, r'level'),
      );
    }
    return null;
  }

  static List<ChannelCategoryQueryDTO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ChannelCategoryQueryDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChannelCategoryQueryDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ChannelCategoryQueryDTO> mapFromJson(dynamic json) {
    final map = <String, ChannelCategoryQueryDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ChannelCategoryQueryDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ChannelCategoryQueryDTO-objects as value to a dart map
  static Map<String, List<ChannelCategoryQueryDTO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ChannelCategoryQueryDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ChannelCategoryQueryDTO.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'channelId',
  };
}
