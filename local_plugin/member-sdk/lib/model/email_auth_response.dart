//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailAuthResponse {
  /// Returns a new [EmailAuthResponse] instance.
  EmailAuthResponse({
    this.success,
    this.message,
    this.token,
    this.email,
    this.expiresAt,
  });

  /// 操作是否成功
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? success;

  /// 响应消息
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  /// 验证令牌（用于后续验证）
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? token;

  /// 邮箱地址
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  /// 过期时间（时间戳）
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? expiresAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmailAuthResponse &&
          other.success == success &&
          other.message == message &&
          other.token == token &&
          other.email == email &&
          other.expiresAt == expiresAt;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (success == null ? 0 : success!.hashCode) +
      (message == null ? 0 : message!.hashCode) +
      (token == null ? 0 : token!.hashCode) +
      (email == null ? 0 : email!.hashCode) +
      (expiresAt == null ? 0 : expiresAt!.hashCode);

  @override
  String toString() =>
      'EmailAuthResponse[success=$success, message=$message, token=$token, email=$email, expiresAt=$expiresAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.success != null) {
      json[r'success'] = this.success;
    } else {
      json[r'success'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.token != null) {
      json[r'token'] = this.token;
    } else {
      json[r'token'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.expiresAt != null) {
      json[r'expiresAt'] = this.expiresAt;
    } else {
      json[r'expiresAt'] = null;
    }
    return json;
  }

  /// Returns a new [EmailAuthResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailAuthResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "EmailAuthResponse[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "EmailAuthResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailAuthResponse(
        success: mapValueOfType<bool>(json, r'success'),
        message: mapValueOfType<String>(json, r'message'),
        token: mapValueOfType<String>(json, r'token'),
        email: mapValueOfType<String>(json, r'email'),
        expiresAt: mapValueOfType<int>(json, r'expiresAt'),
      );
    }
    return null;
  }

  static List<EmailAuthResponse> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EmailAuthResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailAuthResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailAuthResponse> mapFromJson(dynamic json) {
    final map = <String, EmailAuthResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailAuthResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailAuthResponse-objects as value to a dart map
  static Map<String, List<EmailAuthResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<EmailAuthResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailAuthResponse.listFromJson(
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
