//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GoogleLoginResponse {
  /// Returns a new [GoogleLoginResponse] instance.
  GoogleLoginResponse({
    this.accessToken,
    this.refreshToken,
    this.tokenType,
    this.expiresIn,
    this.userId,
    this.email,
    this.name,
    this.avatar,
    this.isNewUser,
    this.loginType,
  });

  /// 访问令牌（短期，4小时有效）
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accessToken;

  /// 刷新令牌（长期，30天有效）
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

  /// 用户ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? userId;

  /// 用户邮箱
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  /// 用户姓名
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// 头像URL
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? avatar;

  /// 是否新用户
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isNewUser;

  /// 登录方式
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? loginType;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GoogleLoginResponse &&
          other.accessToken == accessToken &&
          other.refreshToken == refreshToken &&
          other.tokenType == tokenType &&
          other.expiresIn == expiresIn &&
          other.userId == userId &&
          other.email == email &&
          other.name == name &&
          other.avatar == avatar &&
          other.isNewUser == isNewUser &&
          other.loginType == loginType;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (accessToken == null ? 0 : accessToken!.hashCode) +
      (refreshToken == null ? 0 : refreshToken!.hashCode) +
      (tokenType == null ? 0 : tokenType!.hashCode) +
      (expiresIn == null ? 0 : expiresIn!.hashCode) +
      (userId == null ? 0 : userId!.hashCode) +
      (email == null ? 0 : email!.hashCode) +
      (name == null ? 0 : name!.hashCode) +
      (avatar == null ? 0 : avatar!.hashCode) +
      (isNewUser == null ? 0 : isNewUser!.hashCode) +
      (loginType == null ? 0 : loginType!.hashCode);

  @override
  String toString() =>
      'GoogleLoginResponse[accessToken=$accessToken, refreshToken=$refreshToken, tokenType=$tokenType, expiresIn=$expiresIn, userId=$userId, email=$email, name=$name, avatar=$avatar, isNewUser=$isNewUser, loginType=$loginType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.avatar != null) {
      json[r'avatar'] = this.avatar;
    } else {
      json[r'avatar'] = null;
    }
    if (this.isNewUser != null) {
      json[r'isNewUser'] = this.isNewUser;
    } else {
      json[r'isNewUser'] = null;
    }
    if (this.loginType != null) {
      json[r'loginType'] = this.loginType;
    } else {
      json[r'loginType'] = null;
    }
    return json;
  }

  /// Returns a new [GoogleLoginResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GoogleLoginResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "GoogleLoginResponse[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "GoogleLoginResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GoogleLoginResponse(
        accessToken: mapValueOfType<String>(json, r'accessToken'),
        refreshToken: mapValueOfType<String>(json, r'refreshToken'),
        tokenType: mapValueOfType<String>(json, r'tokenType'),
        expiresIn: mapValueOfType<int>(json, r'expiresIn'),
        userId: mapValueOfType<int>(json, r'userId'),
        email: mapValueOfType<String>(json, r'email'),
        name: mapValueOfType<String>(json, r'name'),
        avatar: mapValueOfType<String>(json, r'avatar'),
        isNewUser: mapValueOfType<bool>(json, r'isNewUser'),
        loginType: mapValueOfType<String>(json, r'loginType'),
      );
    }
    return null;
  }

  static List<GoogleLoginResponse> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <GoogleLoginResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GoogleLoginResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GoogleLoginResponse> mapFromJson(dynamic json) {
    final map = <String, GoogleLoginResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GoogleLoginResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GoogleLoginResponse-objects as value to a dart map
  static Map<String, List<GoogleLoginResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<GoogleLoginResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GoogleLoginResponse.listFromJson(
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
