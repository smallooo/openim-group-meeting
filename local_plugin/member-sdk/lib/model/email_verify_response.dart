//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailVerifyResponse {
  /// Returns a new [EmailVerifyResponse] instance.
  EmailVerifyResponse({
    this.status,
    this.userStatus,
    this.deviceStatus,
    this.verificationCode,
    this.email,
    this.message,
    this.accessToken,
    this.refreshToken,
    this.tokenType,
    this.expiresIn,
    this.userId,
    this.nickname,
    this.avatar,
  });

  /// 验证状态：VALID-有效, EXPIRED-已过期, INVALID-无效
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// 用户状态：NEW_USER-新用户需要注册, EXISTING_USER-已存在用户可登录
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userStatus;

  /// 是否需要验证码：SAME_DEVICE-同设备不需要, DIFFERENT_DEVICE-不同设备需要
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? deviceStatus;

  /// 6位验证码（跨设备时显示）
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? verificationCode;

  /// 邮箱地址
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  /// 响应消息
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  /// 访问令牌（同设备已存在用户直接返回）
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accessToken;

  /// 刷新令牌（同设备已存在用户直接返回）
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? refreshToken;

  /// 令牌类型
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tokenType;

  /// 访问令牌过期时间（秒）
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? expiresIn;

  /// 用户ID（已登录时返回）
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? userId;

  /// 用户昵称（已登录时返回）
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nickname;

  /// 用户头像（已登录时返回）
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? avatar;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmailVerifyResponse &&
          other.status == status &&
          other.userStatus == userStatus &&
          other.deviceStatus == deviceStatus &&
          other.verificationCode == verificationCode &&
          other.email == email &&
          other.message == message &&
          other.accessToken == accessToken &&
          other.refreshToken == refreshToken &&
          other.tokenType == tokenType &&
          other.expiresIn == expiresIn &&
          other.userId == userId &&
          other.nickname == nickname &&
          other.avatar == avatar;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (status == null ? 0 : status!.hashCode) +
      (userStatus == null ? 0 : userStatus!.hashCode) +
      (deviceStatus == null ? 0 : deviceStatus!.hashCode) +
      (verificationCode == null ? 0 : verificationCode!.hashCode) +
      (email == null ? 0 : email!.hashCode) +
      (message == null ? 0 : message!.hashCode) +
      (accessToken == null ? 0 : accessToken!.hashCode) +
      (refreshToken == null ? 0 : refreshToken!.hashCode) +
      (tokenType == null ? 0 : tokenType!.hashCode) +
      (expiresIn == null ? 0 : expiresIn!.hashCode) +
      (userId == null ? 0 : userId!.hashCode) +
      (nickname == null ? 0 : nickname!.hashCode) +
      (avatar == null ? 0 : avatar!.hashCode);

  @override
  String toString() =>
      'EmailVerifyResponse[status=$status, userStatus=$userStatus, deviceStatus=$deviceStatus, verificationCode=$verificationCode, email=$email, message=$message, accessToken=$accessToken, refreshToken=$refreshToken, tokenType=$tokenType, expiresIn=$expiresIn, userId=$userId, nickname=$nickname, avatar=$avatar]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.userStatus != null) {
      json[r'userStatus'] = this.userStatus;
    } else {
      json[r'userStatus'] = null;
    }
    if (this.deviceStatus != null) {
      json[r'deviceStatus'] = this.deviceStatus;
    } else {
      json[r'deviceStatus'] = null;
    }
    if (this.verificationCode != null) {
      json[r'verificationCode'] = this.verificationCode;
    } else {
      json[r'verificationCode'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.accessToken != null) {
      json[r'accessToken'] = this.accessToken;
    } else {
      json[r'accessToken'] = null;
    }
    if (this.refreshToken != null) {
      json[r'refreshToken'] = this.refreshToken;
    } else {
      json[r'refreshToken'] = null;
    }
    if (this.tokenType != null) {
      json[r'tokenType'] = this.tokenType;
    } else {
      json[r'tokenType'] = null;
    }
    if (this.expiresIn != null) {
      json[r'expiresIn'] = this.expiresIn;
    } else {
      json[r'expiresIn'] = null;
    }
    if (this.userId != null) {
      json[r'userId'] = this.userId;
    } else {
      json[r'userId'] = null;
    }
    if (this.nickname != null) {
      json[r'nickname'] = this.nickname;
    } else {
      json[r'nickname'] = null;
    }
    if (this.avatar != null) {
      json[r'avatar'] = this.avatar;
    } else {
      json[r'avatar'] = null;
    }
    return json;
  }

  /// Returns a new [EmailVerifyResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailVerifyResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "EmailVerifyResponse[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "EmailVerifyResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailVerifyResponse(
        status: mapValueOfType<String>(json, r'status'),
        userStatus: mapValueOfType<String>(json, r'userStatus'),
        deviceStatus: mapValueOfType<String>(json, r'deviceStatus'),
        verificationCode: mapValueOfType<String>(json, r'verificationCode'),
        email: mapValueOfType<String>(json, r'email'),
        message: mapValueOfType<String>(json, r'message'),
        accessToken: mapValueOfType<String>(json, r'accessToken'),
        refreshToken: mapValueOfType<String>(json, r'refreshToken'),
        tokenType: mapValueOfType<String>(json, r'tokenType'),
        expiresIn: mapValueOfType<int>(json, r'expiresIn'),
        userId: mapValueOfType<int>(json, r'userId'),
        nickname: mapValueOfType<String>(json, r'nickname'),
        avatar: mapValueOfType<String>(json, r'avatar'),
      );
    }
    return null;
  }

  static List<EmailVerifyResponse> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EmailVerifyResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailVerifyResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailVerifyResponse> mapFromJson(dynamic json) {
    final map = <String, EmailVerifyResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailVerifyResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailVerifyResponse-objects as value to a dart map
  static Map<String, List<EmailVerifyResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<EmailVerifyResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailVerifyResponse.listFromJson(
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
