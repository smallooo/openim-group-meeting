//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SubscribeTraderDTO {
  /// Returns a new [SubscribeTraderDTO] instance.
  SubscribeTraderDTO({
    required this.subscriptionType,
    this.autoRenew,
    required this.paymentMethod,
    this.clientIp,
  });

  /// 订阅类型
  int subscriptionType;

  /// 是否自动续费
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? autoRenew;

  /// 支付方式
  String paymentMethod;

  /// 客户端IP
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientIp;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SubscribeTraderDTO &&
          other.subscriptionType == subscriptionType &&
          other.autoRenew == autoRenew &&
          other.paymentMethod == paymentMethod &&
          other.clientIp == clientIp;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (subscriptionType.hashCode) +
      (autoRenew == null ? 0 : autoRenew!.hashCode) +
      (paymentMethod.hashCode) +
      (clientIp == null ? 0 : clientIp!.hashCode);

  @override
  String toString() =>
      'SubscribeTraderDTO[subscriptionType=$subscriptionType, autoRenew=$autoRenew, paymentMethod=$paymentMethod, clientIp=$clientIp]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'subscriptionType'] = this.subscriptionType;
    if (this.autoRenew != null) {
      json[r'autoRenew'] = this.autoRenew;
    } else {
      json[r'autoRenew'] = null;
    }
    json[r'paymentMethod'] = this.paymentMethod;
    if (this.clientIp != null) {
      json[r'clientIp'] = this.clientIp;
    } else {
      json[r'clientIp'] = null;
    }
    return json;
  }

  /// Returns a new [SubscribeTraderDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SubscribeTraderDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "SubscribeTraderDTO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "SubscribeTraderDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SubscribeTraderDTO(
        subscriptionType: mapValueOfType<int>(json, r'subscriptionType')!,
        autoRenew: mapValueOfType<bool>(json, r'autoRenew'),
        paymentMethod: mapValueOfType<String>(json, r'paymentMethod')!,
        clientIp: mapValueOfType<String>(json, r'clientIp'),
      );
    }
    return null;
  }

  static List<SubscribeTraderDTO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SubscribeTraderDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SubscribeTraderDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SubscribeTraderDTO> mapFromJson(dynamic json) {
    final map = <String, SubscribeTraderDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SubscribeTraderDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SubscribeTraderDTO-objects as value to a dart map
  static Map<String, List<SubscribeTraderDTO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<SubscribeTraderDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SubscribeTraderDTO.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'subscriptionType',
    'paymentMethod',
  };
}
