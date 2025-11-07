//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SendEmailCodeCommand {
  /// Returns a new [SendEmailCodeCommand] instance.
  SendEmailCodeCommand({
    required this.email,
    this.purpose,
    this.deviceId,
    this.platformId,
    this.ipAddress,
  });

  /// 邮箱地址
  String email;

  /// 验证码用途
  SendEmailCodeCommandPurposeEnum? purpose;

  /// 设备指纹/ID，用于识别设备
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? deviceId;

  /// 平台ID，iOS为"1"，Android为"2"
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? platformId;

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
      other is SendEmailCodeCommand &&
          other.email == email &&
          other.purpose == purpose &&
          other.deviceId == deviceId &&
          other.platformId == platformId &&
          other.ipAddress == ipAddress;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (email.hashCode) +
      (purpose == null ? 0 : purpose!.hashCode) +
      (deviceId == null ? 0 : deviceId!.hashCode) +
      (platformId == null ? 0 : platformId!.hashCode) +
      (ipAddress == null ? 0 : ipAddress!.hashCode);

  @override
  String toString() =>
      'SendEmailCodeCommand[email=$email, purpose=$purpose, deviceId=$deviceId, platformId=$platformId, ipAddress=$ipAddress]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'email'] = this.email;
    if (this.purpose != null) {
      json[r'purpose'] = this.purpose;
    } else {
      json[r'purpose'] = null;
    }
    if (this.deviceId != null) {
      json[r'deviceId'] = this.deviceId;
    } else {
      json[r'deviceId'] = null;
    }
    if (this.platformId != null) {
      json[r'platformId'] = this.platformId;
    } else {
      json[r'platformId'] = null;
    }
    if (this.ipAddress != null) {
      json[r'ipAddress'] = this.ipAddress;
    } else {
      json[r'ipAddress'] = null;
    }
    return json;
  }

  /// Returns a new [SendEmailCodeCommand] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SendEmailCodeCommand? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "SendEmailCodeCommand[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "SendEmailCodeCommand[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SendEmailCodeCommand(
        email: mapValueOfType<String>(json, r'email')!,
        purpose: SendEmailCodeCommandPurposeEnum.fromJson(json[r'purpose']),
        deviceId: mapValueOfType<String>(json, r'deviceId'),
        platformId: mapValueOfType<String>(json, r'platformId'),
        ipAddress: mapValueOfType<String>(json, r'ipAddress'),
      );
    }
    return null;
  }

  static List<SendEmailCodeCommand> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SendEmailCodeCommand>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendEmailCodeCommand.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SendEmailCodeCommand> mapFromJson(dynamic json) {
    final map = <String, SendEmailCodeCommand>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SendEmailCodeCommand.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SendEmailCodeCommand-objects as value to a dart map
  static Map<String, List<SendEmailCodeCommand>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<SendEmailCodeCommand>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SendEmailCodeCommand.listFromJson(
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
  };
}

/// 验证码用途
class SendEmailCodeCommandPurposeEnum {
  /// Instantiate a new enum with the provided [value].
  const SendEmailCodeCommandPurposeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const LOGIN = SendEmailCodeCommandPurposeEnum._(r'LOGIN');
  static const REGISTER = SendEmailCodeCommandPurposeEnum._(r'REGISTER');
  static const RESET_PASSWORD =
      SendEmailCodeCommandPurposeEnum._(r'RESET_PASSWORD');
  static const BIND_EMAIL = SendEmailCodeCommandPurposeEnum._(r'BIND_EMAIL');

  /// List of all possible values in this [enum][SendEmailCodeCommandPurposeEnum].
  static const values = <SendEmailCodeCommandPurposeEnum>[
    LOGIN,
    REGISTER,
    RESET_PASSWORD,
    BIND_EMAIL,
  ];

  static SendEmailCodeCommandPurposeEnum? fromJson(dynamic value) =>
      SendEmailCodeCommandPurposeEnumTypeTransformer().decode(value);

  static List<SendEmailCodeCommandPurposeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SendEmailCodeCommandPurposeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendEmailCodeCommandPurposeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SendEmailCodeCommandPurposeEnum] to String,
/// and [decode] dynamic data back to [SendEmailCodeCommandPurposeEnum].
class SendEmailCodeCommandPurposeEnumTypeTransformer {
  factory SendEmailCodeCommandPurposeEnumTypeTransformer() =>
      _instance ??= const SendEmailCodeCommandPurposeEnumTypeTransformer._();

  const SendEmailCodeCommandPurposeEnumTypeTransformer._();

  String encode(SendEmailCodeCommandPurposeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SendEmailCodeCommandPurposeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SendEmailCodeCommandPurposeEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'LOGIN':
          return SendEmailCodeCommandPurposeEnum.LOGIN;
        case r'REGISTER':
          return SendEmailCodeCommandPurposeEnum.REGISTER;
        case r'RESET_PASSWORD':
          return SendEmailCodeCommandPurposeEnum.RESET_PASSWORD;
        case r'BIND_EMAIL':
          return SendEmailCodeCommandPurposeEnum.BIND_EMAIL;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SendEmailCodeCommandPurposeEnumTypeTransformer] instance.
  static SendEmailCodeCommandPurposeEnumTypeTransformer? _instance;
}
