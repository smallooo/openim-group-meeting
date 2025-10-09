//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RefundQueryRequest {
  /// Returns a new [RefundQueryRequest] instance.
  RefundQueryRequest({
    this.refundNo,
  });

  /// 退款单号
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? refundNo;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RefundQueryRequest && other.refundNo == refundNo;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (refundNo == null ? 0 : refundNo!.hashCode);

  @override
  String toString() => 'RefundQueryRequest[refundNo=$refundNo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.refundNo != null) {
      json[r'refundNo'] = this.refundNo;
    } else {
      json[r'refundNo'] = null;
    }
    return json;
  }

  /// Returns a new [RefundQueryRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RefundQueryRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "RefundQueryRequest[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "RefundQueryRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RefundQueryRequest(
        refundNo: mapValueOfType<String>(json, r'refundNo'),
      );
    }
    return null;
  }

  static List<RefundQueryRequest> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RefundQueryRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RefundQueryRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RefundQueryRequest> mapFromJson(dynamic json) {
    final map = <String, RefundQueryRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RefundQueryRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RefundQueryRequest-objects as value to a dart map
  static Map<String, List<RefundQueryRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<RefundQueryRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RefundQueryRequest.listFromJson(
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
