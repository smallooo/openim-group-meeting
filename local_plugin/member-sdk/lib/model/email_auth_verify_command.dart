//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailAuthVerifyCommand {
  /// Returns a new [EmailAuthVerifyCommand] instance.
  EmailAuthVerifyCommand({
    required this.token,
    this.deviceId,
    this.userAgent,
    this.ipAddress,
    this.verificationCode,
  });

  /// 邮箱验证令牌
  String token;

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

  /// 6位数字验证码（跨设备时需要）
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? verificationCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmailAuthVerifyCommand &&
          other.token == token &&
          other.deviceId == deviceId &&
          other.userAgent == userAgent &&
          other.ipAddress == ipAddress &&
          other.verificationCode == verificationCode;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (token.hashCode) +
      (deviceId == null ? 0 : deviceId!.hashCode) +
      (userAgent == null ? 0 : userAgent!.hashCode) +
      (ipAddress == null ? 0 : ipAddress!.hashCode) +
      (verificationCode == null ? 0 : verificationCode!.hashCode);

  @override
  String toString() =>
      'EmailAuthVerifyCommand[token=$token, deviceId=$deviceId, userAgent=$userAgent, ipAddress=$ipAddress, verificationCode=$verificationCode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'token'] = this.token;
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
    if (this.verificationCode != null) {
      json[r'verificationCode'] = this.verificationCode;
    } else {
      json[r'verificationCode'] = null;
    }
    return json;
  }

  /// Returns a new [EmailAuthVerifyCommand] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailAuthVerifyCommand? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "EmailAuthVerifyCommand[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "EmailAuthVerifyCommand[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailAuthVerifyCommand(
        token: mapValueOfType<String>(json, r'token')!,
        deviceId: mapValueOfType<String>(json, r'deviceId'),
        userAgent: mapValueOfType<String>(json, r'userAgent'),
        ipAddress: mapValueOfType<String>(json, r'ipAddress'),
        verificationCode: mapValueOfType<String>(json, r'verificationCode'),
      );
    }
    return null;
  }

  static List<EmailAuthVerifyCommand> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EmailAuthVerifyCommand>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailAuthVerifyCommand.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailAuthVerifyCommand> mapFromJson(dynamic json) {
    final map = <String, EmailAuthVerifyCommand>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailAuthVerifyCommand.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailAuthVerifyCommand-objects as value to a dart map
  static Map<String, List<EmailAuthVerifyCommand>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<EmailAuthVerifyCommand>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailAuthVerifyCommand.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'token',
  };
}
