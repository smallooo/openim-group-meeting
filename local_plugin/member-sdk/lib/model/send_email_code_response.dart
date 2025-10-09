//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SendEmailCodeResponse {
  /// Returns a new [SendEmailCodeResponse] instance.
  SendEmailCodeResponse({
    this.success,
    this.message,
    this.maskedEmail,
    this.expirationTime,
    this.nextSendTime,
  });

  /// 是否发送成功
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? success;

  /// 提示消息
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  /// 邮箱地址（脱敏显示）
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? maskedEmail;

  /// 验证码有效期（秒）
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? expirationTime;

  /// 下次可发送时间（秒）
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? nextSendTime;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SendEmailCodeResponse &&
          other.success == success &&
          other.message == message &&
          other.maskedEmail == maskedEmail &&
          other.expirationTime == expirationTime &&
          other.nextSendTime == nextSendTime;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (success == null ? 0 : success!.hashCode) +
      (message == null ? 0 : message!.hashCode) +
      (maskedEmail == null ? 0 : maskedEmail!.hashCode) +
      (expirationTime == null ? 0 : expirationTime!.hashCode) +
      (nextSendTime == null ? 0 : nextSendTime!.hashCode);

  @override
  String toString() =>
      'SendEmailCodeResponse[success=$success, message=$message, maskedEmail=$maskedEmail, expirationTime=$expirationTime, nextSendTime=$nextSendTime]';

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
    if (this.maskedEmail != null) {
      json[r'maskedEmail'] = this.maskedEmail;
    } else {
      json[r'maskedEmail'] = null;
    }
    if (this.expirationTime != null) {
      json[r'expirationTime'] = this.expirationTime;
    } else {
      json[r'expirationTime'] = null;
    }
    if (this.nextSendTime != null) {
      json[r'nextSendTime'] = this.nextSendTime;
    } else {
      json[r'nextSendTime'] = null;
    }
    return json;
  }

  /// Returns a new [SendEmailCodeResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SendEmailCodeResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "SendEmailCodeResponse[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "SendEmailCodeResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SendEmailCodeResponse(
        success: mapValueOfType<bool>(json, r'success'),
        message: mapValueOfType<String>(json, r'message'),
        maskedEmail: mapValueOfType<String>(json, r'maskedEmail'),
        expirationTime: mapValueOfType<int>(json, r'expirationTime'),
        nextSendTime: mapValueOfType<int>(json, r'nextSendTime'),
      );
    }
    return null;
  }

  static List<SendEmailCodeResponse> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SendEmailCodeResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendEmailCodeResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SendEmailCodeResponse> mapFromJson(dynamic json) {
    final map = <String, SendEmailCodeResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SendEmailCodeResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SendEmailCodeResponse-objects as value to a dart map
  static Map<String, List<SendEmailCodeResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<SendEmailCodeResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SendEmailCodeResponse.listFromJson(
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
