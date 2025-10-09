//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TelegramLoginResponse {
  /// Returns a new [TelegramLoginResponse] instance.
  TelegramLoginResponse({
    this.token,
    this.userId,
    this.telegramId,
    this.username,
    this.displayName,
    this.avatar,
    this.isNewUser,
  });

  /// 访问令牌
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? token;

  /// 用户ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? userId;

  /// Telegram用户ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? telegramId;

  /// 用户名
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? username;

  /// 显示名称
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TelegramLoginResponse &&
          other.token == token &&
          other.userId == userId &&
          other.telegramId == telegramId &&
          other.username == username &&
          other.displayName == displayName &&
          other.avatar == avatar &&
          other.isNewUser == isNewUser;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (token == null ? 0 : token!.hashCode) +
      (userId == null ? 0 : userId!.hashCode) +
      (telegramId == null ? 0 : telegramId!.hashCode) +
      (username == null ? 0 : username!.hashCode) +
      (displayName == null ? 0 : displayName!.hashCode) +
      (avatar == null ? 0 : avatar!.hashCode) +
      (isNewUser == null ? 0 : isNewUser!.hashCode);

  @override
  String toString() =>
      'TelegramLoginResponse[token=$token, userId=$userId, telegramId=$telegramId, username=$username, displayName=$displayName, avatar=$avatar, isNewUser=$isNewUser]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.token != null) {
      json[r'token'] = this.token;
    } else {
      json[r'token'] = null;
    }
    if (this.userId != null) {
      json[r'userId'] = this.userId;
    } else {
      json[r'userId'] = null;
    }
    if (this.telegramId != null) {
      json[r'telegramId'] = this.telegramId;
    } else {
      json[r'telegramId'] = null;
    }
    if (this.username != null) {
      json[r'username'] = this.username;
    } else {
      json[r'username'] = null;
    }
    if (this.displayName != null) {
      json[r'displayName'] = this.displayName;
    } else {
      json[r'displayName'] = null;
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
    return json;
  }

  /// Returns a new [TelegramLoginResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TelegramLoginResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "TelegramLoginResponse[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "TelegramLoginResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TelegramLoginResponse(
        token: mapValueOfType<String>(json, r'token'),
        userId: mapValueOfType<int>(json, r'userId'),
        telegramId: mapValueOfType<int>(json, r'telegramId'),
        username: mapValueOfType<String>(json, r'username'),
        displayName: mapValueOfType<String>(json, r'displayName'),
        avatar: mapValueOfType<String>(json, r'avatar'),
        isNewUser: mapValueOfType<bool>(json, r'isNewUser'),
      );
    }
    return null;
  }

  static List<TelegramLoginResponse> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TelegramLoginResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TelegramLoginResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TelegramLoginResponse> mapFromJson(dynamic json) {
    final map = <String, TelegramLoginResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TelegramLoginResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TelegramLoginResponse-objects as value to a dart map
  static Map<String, List<TelegramLoginResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<TelegramLoginResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TelegramLoginResponse.listFromJson(
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
