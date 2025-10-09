//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailCodeLoginCommand {
  /// Returns a new [EmailCodeLoginCommand] instance.
  EmailCodeLoginCommand({
    required this.email,
    required this.code,
    this.deviceId,
    this.userAgent,
    this.ipAddress,
  });

  /// 邮箱地址
  String email;

  /// 6位数字验证码
  String code;

  /// 设备指纹/ID，用于识别设备
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? deviceId;

  /// 用户代理信息
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userAgent;

  /// IP地址
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ipAddress;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmailCodeLoginCommand &&
          other.email == email &&
          other.code == code &&
          other.deviceId == deviceId &&
          other.userAgent == userAgent &&
          other.ipAddress == ipAddress;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (email.hashCode) +
      (code.hashCode) +
      (deviceId == null ? 0 : deviceId!.hashCode) +
      (userAgent == null ? 0 : userAgent!.hashCode) +
      (ipAddress == null ? 0 : ipAddress!.hashCode);

  @override
  String toString() =>
      'EmailCodeLoginCommand[email=$email, code=$code, deviceId=$deviceId, userAgent=$userAgent, ipAddress=$ipAddress]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'email'] = this.email;
    json[r'code'] = this.code;
    if (this.deviceId != null) {
      json[r'deviceId'] = this.deviceId;
    } else {
      json[r'deviceId'] = null;
    }
    if (this.userAgent != null) {
      json[r'userAgent'] = this.userAgent;
    } else {
      json[r'userAgent'] = null;
    }
    if (this.ipAddress != null) {
      json[r'ipAddress'] = this.ipAddress;
    } else {
      json[r'ipAddress'] = null;
    }
    return json;
  }

  /// Returns a new [EmailCodeLoginCommand] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailCodeLoginCommand? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "EmailCodeLoginCommand[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "EmailCodeLoginCommand[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailCodeLoginCommand(
        email: mapValueOfType<String>(json, r'email')!,
        code: mapValueOfType<String>(json, r'code')!,
        deviceId: mapValueOfType<String>(json, r'deviceId'),
        userAgent: mapValueOfType<String>(json, r'userAgent'),
        ipAddress: mapValueOfType<String>(json, r'ipAddress'),
      );
    }
    return null;
  }

  static List<EmailCodeLoginCommand> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EmailCodeLoginCommand>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailCodeLoginCommand.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailCodeLoginCommand> mapFromJson(dynamic json) {
    final map = <String, EmailCodeLoginCommand>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailCodeLoginCommand.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailCodeLoginCommand-objects as value to a dart map
  static Map<String, List<EmailCodeLoginCommand>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<EmailCodeLoginCommand>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailCodeLoginCommand.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'email',
    'code',
  };
}
