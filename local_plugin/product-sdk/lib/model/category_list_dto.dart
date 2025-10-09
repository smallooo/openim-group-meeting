//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CategoryListDTO {
  /// Returns a new [CategoryListDTO] instance.
  CategoryListDTO({
    this.id,
    this.channelId,
    this.name,
    this.parentId,
    this.level,
    this.icon,
    this.sort,
    this.status,
    this.children = const [],
  });

  /// 分类ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// 频道ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? channelId;

  /// 分类名称
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// 父分类ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? parentId;

  /// 分类级别
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? level;

  /// 分类图标
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? icon;

  /// 排序
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sort;

  /// 状态
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? status;

  /// 子分类列表
  List<CategoryListDTO> children;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CategoryListDTO &&
          other.id == id &&
          other.channelId == channelId &&
          other.name == name &&
          other.parentId == parentId &&
          other.level == level &&
          other.icon == icon &&
          other.sort == sort &&
          other.status == status &&
          other.children == children;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (channelId == null ? 0 : channelId!.hashCode) +
      (name == null ? 0 : name!.hashCode) +
      (parentId == null ? 0 : parentId!.hashCode) +
      (level == null ? 0 : level!.hashCode) +
      (icon == null ? 0 : icon!.hashCode) +
      (sort == null ? 0 : sort!.hashCode) +
      (status == null ? 0 : status!.hashCode) +
      (children.hashCode);

  @override
  String toString() =>
      'CategoryListDTO[id=$id, channelId=$channelId, name=$name, parentId=$parentId, level=$level, icon=$icon, sort=$sort, status=$status, children=$children]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.channelId != null) {
      json[r'channelId'] = this.channelId;
    } else {
      json[r'channelId'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.parentId != null) {
      json[r'parentId'] = this.parentId;
    } else {
      json[r'parentId'] = null;
    }
    if (this.level != null) {
      json[r'level'] = this.level;
    } else {
      json[r'level'] = null;
    }
    if (this.icon != null) {
      json[r'icon'] = this.icon;
    } else {
      json[r'icon'] = null;
    }
    if (this.sort != null) {
      json[r'sort'] = this.sort;
    } else {
      json[r'sort'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    json[r'children'] = this.children;
    return json;
  }

  /// Returns a new [CategoryListDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CategoryListDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "CategoryListDTO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "CategoryListDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CategoryListDTO(
        id: mapValueOfType<int>(json, r'id'),
        channelId: mapValueOfType<int>(json, r'channelId'),
        name: mapValueOfType<String>(json, r'name'),
        parentId: mapValueOfType<int>(json, r'parentId'),
        level: mapValueOfType<int>(json, r'level'),
        icon: mapValueOfType<String>(json, r'icon'),
        sort: mapValueOfType<int>(json, r'sort'),
        status: mapValueOfType<int>(json, r'status'),
        children: CategoryListDTO.listFromJson(json[r'children']),
      );
    }
    return null;
  }

  static List<CategoryListDTO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <CategoryListDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CategoryListDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CategoryListDTO> mapFromJson(dynamic json) {
    final map = <String, CategoryListDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CategoryListDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CategoryListDTO-objects as value to a dart map
  static Map<String, List<CategoryListDTO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<CategoryListDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CategoryListDTO.listFromJson(
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
