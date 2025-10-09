//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ReceiveRedPacketResultVO {
  /// Returns a new [ReceiveRedPacketResultVO] instance.
  ReceiveRedPacketResultVO({
    this.success,
    this.amount = 0,
    this.currencyName,
    this.isBest,
    this.senderName,
    this.blessing,
    this.message,
  });

  /// 是否领取成功
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? success;

  /// 领取金额
  num amount;

  /// 币种名称
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currencyName;

  /// 是否手气最佳
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isBest;

  /// 红包发送者昵称
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? senderName;

  /// 祝福语
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? blessing;

  /// 提示信息
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ReceiveRedPacketResultVO &&
          other.success == success &&
          other.amount == amount &&
          other.currencyName == currencyName &&
          other.isBest == isBest &&
          other.senderName == senderName &&
          other.blessing == blessing &&
          other.message == message;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (success == null ? 0 : success!.hashCode) +
      (amount.hashCode) +
      (currencyName == null ? 0 : currencyName!.hashCode) +
      (isBest == null ? 0 : isBest!.hashCode) +
      (senderName == null ? 0 : senderName!.hashCode) +
      (blessing == null ? 0 : blessing!.hashCode) +
      (message == null ? 0 : message!.hashCode);

  @override
  String toString() =>
      'ReceiveRedPacketResultVO[success=$success, amount=$amount, currencyName=$currencyName, isBest=$isBest, senderName=$senderName, blessing=$blessing, message=$message]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.success != null) {
      json[r'success'] = this.success;
    } else {
      json[r'success'] = null;
    }
    json[r'amount'] = this.amount;
    if (this.currencyName != null) {
      json[r'currencyName'] = this.currencyName;
    } else {
      json[r'currencyName'] = null;
    }
    if (this.isBest != null) {
      json[r'isBest'] = this.isBest;
    } else {
      json[r'isBest'] = null;
    }
    if (this.senderName != null) {
      json[r'senderName'] = this.senderName;
    } else {
      json[r'senderName'] = null;
    }
    if (this.blessing != null) {
      json[r'blessing'] = this.blessing;
    } else {
      json[r'blessing'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    return json;
  }

  /// Returns a new [ReceiveRedPacketResultVO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReceiveRedPacketResultVO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ReceiveRedPacketResultVO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ReceiveRedPacketResultVO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ReceiveRedPacketResultVO(
        success: mapValueOfType<bool>(json, r'success'),
        amount:
            json[r'amount'] == null ? 0 : num.parse(json[r'amount'].toString()),
        currencyName: mapValueOfType<String>(json, r'currencyName'),
        isBest: mapValueOfType<bool>(json, r'isBest'),
        senderName: mapValueOfType<String>(json, r'senderName'),
        blessing: mapValueOfType<String>(json, r'blessing'),
        message: mapValueOfType<String>(json, r'message'),
      );
    }
    return null;
  }

  static List<ReceiveRedPacketResultVO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ReceiveRedPacketResultVO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReceiveRedPacketResultVO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ReceiveRedPacketResultVO> mapFromJson(dynamic json) {
    final map = <String, ReceiveRedPacketResultVO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReceiveRedPacketResultVO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ReceiveRedPacketResultVO-objects as value to a dart map
  static Map<String, List<ReceiveRedPacketResultVO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ReceiveRedPacketResultVO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ReceiveRedPacketResultVO.listFromJson(
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
