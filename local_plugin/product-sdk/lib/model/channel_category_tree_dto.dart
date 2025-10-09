//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ChannelCategoryTreeDTO {
  /// Returns a new [ChannelCategoryTreeDTO] instance.
  ChannelCategoryTreeDTO({
    this.channelId,
    this.channelName,
    this.channelDescription,
    this.channelIcon,
    this.channelSort,
    this.channelStatus,
    this.categories = const [],
  });

  /// 频道ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? channelId;

  /// 频道名称
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? channelName;

  /// 频道描述
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? channelDescription;

  /// 频道图标
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? channelIcon;

  /// 频道排序
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? channelSort;

  /// 频道状态
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? channelStatus;

  /// 分类列表
  List<CategoryTreeDTO> categories;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChannelCategoryTreeDTO &&
          other.channelId == channelId &&
          other.channelName == channelName &&
          other.channelDescription == channelDescription &&
          other.channelIcon == channelIcon &&
          other.channelSort == channelSort &&
          other.channelStatus == channelStatus &&
          other.categories == categories;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (channelId == null ? 0 : channelId!.hashCode) +
      (channelName == null ? 0 : channelName!.hashCode) +
      (channelDescription == null ? 0 : channelDescription!.hashCode) +
      (channelIcon == null ? 0 : channelIcon!.hashCode) +
      (channelSort == null ? 0 : channelSort!.hashCode) +
      (channelStatus == null ? 0 : channelStatus!.hashCode) +
      (categories.hashCode);

  @override
  String toString() =>
      'ChannelCategoryTreeDTO[channelId=$channelId, channelName=$channelName, channelDescription=$channelDescription, channelIcon=$channelIcon, channelSort=$channelSort, channelStatus=$channelStatus, categories=$categories]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.channelId != null) {
      json[r'channelId'] = this.channelId;
    } else {
      json[r'channelId'] = null;
    }
    if (this.channelName != null) {
      json[r'channelName'] = this.channelName;
    } else {
      json[r'channelName'] = null;
    }
    if (this.channelDescription != null) {
      json[r'channelDescription'] = this.channelDescription;
    } else {
      json[r'channelDescription'] = null;
    }
    if (this.channelIcon != null) {
      json[r'channelIcon'] = this.channelIcon;
    } else {
      json[r'channelIcon'] = null;
    }
    if (this.channelSort != null) {
      json[r'channelSort'] = this.channelSort;
    } else {
      json[r'channelSort'] = null;
    }
    if (this.channelStatus != null) {
      json[r'channelStatus'] = this.channelStatus;
    } else {
      json[r'channelStatus'] = null;
    }
    json[r'categories'] = this.categories;
    return json;
  }

  /// Returns a new [ChannelCategoryTreeDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ChannelCategoryTreeDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ChannelCategoryTreeDTO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ChannelCategoryTreeDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ChannelCategoryTreeDTO(
        channelId: mapValueOfType<int>(json, r'channelId'),
        channelName: mapValueOfType<String>(json, r'channelName'),
        channelDescription: mapValueOfType<String>(json, r'channelDescription'),
        channelIcon: mapValueOfType<String>(json, r'channelIcon'),
        channelSort: mapValueOfType<int>(json, r'channelSort'),
        channelStatus: mapValueOfType<int>(json, r'channelStatus'),
        categories: CategoryTreeDTO.listFromJson(json[r'categories']),
      );
    }
    return null;
  }

  static List<ChannelCategoryTreeDTO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ChannelCategoryTreeDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChannelCategoryTreeDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ChannelCategoryTreeDTO> mapFromJson(dynamic json) {
    final map = <String, ChannelCategoryTreeDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ChannelCategoryTreeDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ChannelCategoryTreeDTO-objects as value to a dart map
  static Map<String, List<ChannelCategoryTreeDTO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ChannelCategoryTreeDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ChannelCategoryTreeDTO.listFromJson(
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
