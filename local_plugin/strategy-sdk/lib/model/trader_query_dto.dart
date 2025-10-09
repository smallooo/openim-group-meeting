//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TraderQueryDTO {
  /// Returns a new [TraderQueryDTO] instance.
  TraderQueryDTO({
    this.current,
    this.size,
    this.traderName,
    this.status,
    this.orderBy,
    this.orderDirection,
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
  int? current;

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

  /// 交易员名称（模糊查询）
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? traderName;

  /// 状态
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// 排序字段
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? orderBy;

  /// 排序方向
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? orderDirection;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TraderQueryDTO &&
          other.current == current &&
          other.size == size &&
          other.traderName == traderName &&
          other.status == status &&
          other.orderBy == orderBy &&
          other.orderDirection == orderDirection;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (current == null ? 0 : current!.hashCode) +
      (size == null ? 0 : size!.hashCode) +
      (traderName == null ? 0 : traderName!.hashCode) +
      (status == null ? 0 : status!.hashCode) +
      (orderBy == null ? 0 : orderBy!.hashCode) +
      (orderDirection == null ? 0 : orderDirection!.hashCode);

  @override
  String toString() =>
      'TraderQueryDTO[current=$current, size=$size, traderName=$traderName, status=$status, orderBy=$orderBy, orderDirection=$orderDirection]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.current != null) {
      json[r'current'] = this.current;
    } else {
      json[r'current'] = null;
    }
    if (this.size != null) {
      json[r'size'] = this.size;
    } else {
      json[r'size'] = null;
    }
    if (this.traderName != null) {
      json[r'traderName'] = this.traderName;
    } else {
      json[r'traderName'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.orderBy != null) {
      json[r'orderBy'] = this.orderBy;
    } else {
      json[r'orderBy'] = null;
    }
    if (this.orderDirection != null) {
      json[r'orderDirection'] = this.orderDirection;
    } else {
      json[r'orderDirection'] = null;
    }
    return json;
  }

  /// Returns a new [TraderQueryDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TraderQueryDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "TraderQueryDTO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "TraderQueryDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TraderQueryDTO(
        current: mapValueOfType<int>(json, r'current'),
        size: mapValueOfType<int>(json, r'size'),
        traderName: mapValueOfType<String>(json, r'traderName'),
        status: mapValueOfType<String>(json, r'status'),
        orderBy: mapValueOfType<String>(json, r'orderBy'),
        orderDirection: mapValueOfType<String>(json, r'orderDirection'),
      );
    }
    return null;
  }

  static List<TraderQueryDTO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TraderQueryDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TraderQueryDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TraderQueryDTO> mapFromJson(dynamic json) {
    final map = <String, TraderQueryDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TraderQueryDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TraderQueryDTO-objects as value to a dart map
  static Map<String, List<TraderQueryDTO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<TraderQueryDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TraderQueryDTO.listFromJson(
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
