//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseResultRefundPageVO {
  /// Returns a new [ResponseResultRefundPageVO] instance.
  ResponseResultRefundPageVO({
    this.code,
    this.message,
    this.data,
    this.ok,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? code;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RefundPageVO? data;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? ok;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ResponseResultRefundPageVO &&
          other.code == code &&
          other.message == message &&
          other.data == data &&
          other.ok == ok;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (code == null ? 0 : code!.hashCode) +
      (message == null ? 0 : message!.hashCode) +
      (data == null ? 0 : data!.hashCode) +
      (ok == null ? 0 : ok!.hashCode);

  @override
  String toString() =>
      'ResponseResultRefundPageVO[code=$code, message=$message, data=$data, ok=$ok]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.code != null) {
      json[r'code'] = this.code;
    } else {
      json[r'code'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.data != null) {
      json[r'data'] = this.data;
    } else {
      json[r'data'] = null;
    }
    if (this.ok != null) {
      json[r'ok'] = this.ok;
    } else {
      json[r'ok'] = null;
    }
    return json;
  }

  /// Returns a new [ResponseResultRefundPageVO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ResponseResultRefundPageVO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ResponseResultRefundPageVO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ResponseResultRefundPageVO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ResponseResultRefundPageVO(
        code: mapValueOfType<int>(json, r'code'),
        message: mapValueOfType<String>(json, r'message'),
        data: RefundPageVO.fromJson(json[r'data']),
        ok: mapValueOfType<bool>(json, r'ok'),
      );
    }
    return null;
  }

  static List<ResponseResultRefundPageVO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ResponseResultRefundPageVO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ResponseResultRefundPageVO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ResponseResultRefundPageVO> mapFromJson(dynamic json) {
    final map = <String, ResponseResultRefundPageVO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ResponseResultRefundPageVO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ResponseResultRefundPageVO-objects as value to a dart map
  static Map<String, List<ResponseResultRefundPageVO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ResponseResultRefundPageVO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ResponseResultRefundPageVO.listFromJson(
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
