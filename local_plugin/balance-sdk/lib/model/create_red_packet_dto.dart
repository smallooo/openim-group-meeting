//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateRedPacketDTO {
  /// Returns a new [CreateRedPacketDTO] instance.
  CreateRedPacketDTO({
    this.groupId,
    required this.packetType,
    required this.currencyId,
    this.totalAmount = 0,
    required this.totalCount,
    this.blessing,
  });

  /// 群组ID(私聊红包为空)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? groupId;

  /// 红包类型 1:普通红包 2:拼手气红包
  ///
  /// Minimum value: 1
  /// Maximum value: 2
  int packetType;

  /// 币种ID
  int currencyId;

  /// 红包总金额
  ///
  /// Minimum value: 0.01
  num totalAmount;

  /// 红包总个数
  ///
  /// Minimum value: 1
  /// Maximum value: 100
  int totalCount;

  /// 祝福语
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? blessing;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateRedPacketDTO &&
     other.groupId == groupId &&
     other.packetType == packetType &&
     other.currencyId == currencyId &&
     other.totalAmount == totalAmount &&
     other.totalCount == totalCount &&
     other.blessing == blessing;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (groupId == null ? 0 : groupId!.hashCode) +
    (packetType.hashCode) +
    (currencyId.hashCode) +
    (totalAmount.hashCode) +
    (totalCount.hashCode) +
    (blessing == null ? 0 : blessing!.hashCode);

  @override
  String toString() => 'CreateRedPacketDTO[groupId=$groupId, packetType=$packetType, currencyId=$currencyId, totalAmount=$totalAmount, totalCount=$totalCount, blessing=$blessing]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.groupId != null) {
      json[r'groupId'] = this.groupId;
    } else {
      json[r'groupId'] = null;
    }
      json[r'packetType'] = this.packetType;
      json[r'currencyId'] = this.currencyId;
      json[r'totalAmount'] = this.totalAmount;
      json[r'totalCount'] = this.totalCount;
    if (this.blessing != null) {
      json[r'blessing'] = this.blessing;
    } else {
      json[r'blessing'] = null;
    }
    return json;
  }

  /// Returns a new [CreateRedPacketDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateRedPacketDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateRedPacketDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateRedPacketDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateRedPacketDTO(
        groupId: mapValueOfType<int>(json, r'groupId'),
        packetType: mapValueOfType<int>(json, r'packetType')!,
        currencyId: mapValueOfType<int>(json, r'currencyId')!,
        totalAmount: json[r'totalAmount'] == null
            ? 0
            : num.parse(json[r'totalAmount'].toString()),
        totalCount: mapValueOfType<int>(json, r'totalCount')!,
        blessing: mapValueOfType<String>(json, r'blessing'),
      );
    }
    return null;
  }

  static List<CreateRedPacketDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateRedPacketDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateRedPacketDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateRedPacketDTO> mapFromJson(dynamic json) {
    final map = <String, CreateRedPacketDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateRedPacketDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateRedPacketDTO-objects as value to a dart map
  static Map<String, List<CreateRedPacketDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateRedPacketDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateRedPacketDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'packetType',
    'currencyId',
    'totalAmount',
    'totalCount',
  };
}

