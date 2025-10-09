//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RefundPageVO {
  /// Returns a new [RefundPageVO] instance.
  RefundPageVO({
    this.records = const [],
    this.total,
    this.size,
    this.current,
    this.pages,
    this.hasNext,
    this.hasPrevious,
    this.isEmpty,
    this.isFirst,
    this.isLast,
  });

  /// 退款申请记录列表
  List<RefundApplicationVO> records;

  /// 总记录数
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  /// 每页大小
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? size;

  /// 当前页码
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? current;

  /// 总页数
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pages;

  /// 是否有下一页
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasNext;

  /// 是否有上一页
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasPrevious;

  /// 是否为空
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isEmpty;

  /// 是否为第一页
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isFirst;

  /// 是否为最后一页
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isLast;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RefundPageVO &&
          other.records == records &&
          other.total == total &&
          other.size == size &&
          other.current == current &&
          other.pages == pages &&
          other.hasNext == hasNext &&
          other.hasPrevious == hasPrevious &&
          other.isEmpty == isEmpty &&
          other.isFirst == isFirst &&
          other.isLast == isLast;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (records.hashCode) +
      (total == null ? 0 : total!.hashCode) +
      (size == null ? 0 : size!.hashCode) +
      (current == null ? 0 : current!.hashCode) +
      (pages == null ? 0 : pages!.hashCode) +
      (hasNext == null ? 0 : hasNext!.hashCode) +
      (hasPrevious == null ? 0 : hasPrevious!.hashCode) +
      (isEmpty == null ? 0 : isEmpty!.hashCode) +
      (isFirst == null ? 0 : isFirst!.hashCode) +
      (isLast == null ? 0 : isLast!.hashCode);

  @override
  String toString() =>
      'RefundPageVO[records=$records, total=$total, size=$size, current=$current, pages=$pages, hasNext=$hasNext, hasPrevious=$hasPrevious, isEmpty=$isEmpty, isFirst=$isFirst, isLast=$isLast]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'records'] = this.records;
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    if (this.size != null) {
      json[r'size'] = this.size;
    } else {
      json[r'size'] = null;
    }
    if (this.current != null) {
      json[r'current'] = this.current;
    } else {
      json[r'current'] = null;
    }
    if (this.pages != null) {
      json[r'pages'] = this.pages;
    } else {
      json[r'pages'] = null;
    }
    if (this.hasNext != null) {
      json[r'hasNext'] = this.hasNext;
    } else {
      json[r'hasNext'] = null;
    }
    if (this.hasPrevious != null) {
      json[r'hasPrevious'] = this.hasPrevious;
    } else {
      json[r'hasPrevious'] = null;
    }
    if (this.isEmpty != null) {
      json[r'isEmpty'] = this.isEmpty;
    } else {
      json[r'isEmpty'] = null;
    }
    if (this.isFirst != null) {
      json[r'isFirst'] = this.isFirst;
    } else {
      json[r'isFirst'] = null;
    }
    if (this.isLast != null) {
      json[r'isLast'] = this.isLast;
    } else {
      json[r'isLast'] = null;
    }
    return json;
  }

  /// Returns a new [RefundPageVO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RefundPageVO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "RefundPageVO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "RefundPageVO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RefundPageVO(
        records: RefundApplicationVO.listFromJson(json[r'records']),
        total: mapValueOfType<int>(json, r'total'),
        size: mapValueOfType<int>(json, r'size'),
        current: mapValueOfType<int>(json, r'current'),
        pages: mapValueOfType<int>(json, r'pages'),
        hasNext: mapValueOfType<bool>(json, r'hasNext'),
        hasPrevious: mapValueOfType<bool>(json, r'hasPrevious'),
        isEmpty: mapValueOfType<bool>(json, r'isEmpty'),
        isFirst: mapValueOfType<bool>(json, r'isFirst'),
        isLast: mapValueOfType<bool>(json, r'isLast'),
      );
    }
    return null;
  }

  static List<RefundPageVO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RefundPageVO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RefundPageVO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RefundPageVO> mapFromJson(dynamic json) {
    final map = <String, RefundPageVO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RefundPageVO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RefundPageVO-objects as value to a dart map
  static Map<String, List<RefundPageVO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<RefundPageVO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RefundPageVO.listFromJson(
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
