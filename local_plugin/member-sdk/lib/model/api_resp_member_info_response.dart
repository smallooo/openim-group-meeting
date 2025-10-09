//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApiRespMemberInfoResponse {
  /// Returns a new [ApiRespMemberInfoResponse] instance.
  ApiRespMemberInfoResponse({
    this.errCode,
    this.errMsg,
    this.errDlt,
    this.data,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? errCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? errMsg;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? errDlt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MemberInfoResponse? data;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ApiRespMemberInfoResponse &&
          other.errCode == errCode &&
          other.errMsg == errMsg &&
          other.errDlt == errDlt &&
          other.data == data;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (errCode == null ? 0 : errCode!.hashCode) +
      (errMsg == null ? 0 : errMsg!.hashCode) +
      (errDlt == null ? 0 : errDlt!.hashCode) +
      (data == null ? 0 : data!.hashCode);

  @override
  String toString() =>
      'ApiRespMemberInfoResponse[errCode=$errCode, errMsg=$errMsg, errDlt=$errDlt, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.errCode != null) {
      json[r'errCode'] = this.errCode;
    } else {
      json[r'errCode'] = null;
    }
    if (this.errMsg != null) {
      json[r'errMsg'] = this.errMsg;
    } else {
      json[r'errMsg'] = null;
    }
    if (this.errDlt != null) {
      json[r'errDlt'] = this.errDlt;
    } else {
      json[r'errDlt'] = null;
    }
    if (this.data != null) {
      json[r'data'] = this.data;
    } else {
      json[r'data'] = null;
    }
    return json;
  }

  /// Returns a new [ApiRespMemberInfoResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApiRespMemberInfoResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ApiRespMemberInfoResponse[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ApiRespMemberInfoResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ApiRespMemberInfoResponse(
        errCode: mapValueOfType<int>(json, r'errCode'),
        errMsg: mapValueOfType<String>(json, r'errMsg'),
        errDlt: mapValueOfType<String>(json, r'errDlt'),
        data: MemberInfoResponse.fromJson(json[r'data']),
      );
    }
    return null;
  }

  static List<ApiRespMemberInfoResponse> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ApiRespMemberInfoResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApiRespMemberInfoResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApiRespMemberInfoResponse> mapFromJson(dynamic json) {
    final map = <String, ApiRespMemberInfoResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApiRespMemberInfoResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApiRespMemberInfoResponse-objects as value to a dart map
  static Map<String, List<ApiRespMemberInfoResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ApiRespMemberInfoResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApiRespMemberInfoResponse.listFromJson(
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
