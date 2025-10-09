//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SmsLoginCommand {
  /// Returns a new [SmsLoginCommand] instance.
  SmsLoginCommand({
    required this.phone,
    required this.smsCode,
    required this.uuid,
  });

  /// 手机号
  String phone;

  /// 验证码
  String smsCode;

  /// UUID
  String uuid;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SmsLoginCommand &&
          other.phone == phone &&
          other.smsCode == smsCode &&
          other.uuid == uuid;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (phone.hashCode) + (smsCode.hashCode) + (uuid.hashCode);

  @override
  String toString() =>
      'SmsLoginCommand[phone=$phone, smsCode=$smsCode, uuid=$uuid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'phone'] = this.phone;
    json[r'smsCode'] = this.smsCode;
    json[r'uuid'] = this.uuid;
    return json;
  }

  /// Returns a new [SmsLoginCommand] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SmsLoginCommand? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "SmsLoginCommand[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "SmsLoginCommand[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SmsLoginCommand(
        phone: mapValueOfType<String>(json, r'phone')!,
        smsCode: mapValueOfType<String>(json, r'smsCode')!,
        uuid: mapValueOfType<String>(json, r'uuid')!,
      );
    }
    return null;
  }

  static List<SmsLoginCommand> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SmsLoginCommand>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SmsLoginCommand.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SmsLoginCommand> mapFromJson(dynamic json) {
    final map = <String, SmsLoginCommand>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SmsLoginCommand.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SmsLoginCommand-objects as value to a dart map
  static Map<String, List<SmsLoginCommand>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<SmsLoginCommand>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SmsLoginCommand.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'phone',
    'smsCode',
    'uuid',
  };
}
