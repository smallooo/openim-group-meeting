//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RedPacketRecordVO {
  /// Returns a new [RedPacketRecordVO] instance.
  RedPacketRecordVO({
    this.id,
    this.packetId,
    this.packetNo,
    this.receiverId,
    this.receiverName,
    this.amount = 0,
    this.isBest,
    this.isBestDesc,
    this.receivedAt,
  });

  /// 记录ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// 红包ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? packetId;

  /// 红包编号
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? packetNo;

  /// 领取用户ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? receiverId;

  /// 领取用户昵称
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? receiverName;

  /// 领取金额
  num amount;

  /// 是否手气最佳 0:否 1:是
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? isBest;

  /// 是否手气最佳描述
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? isBestDesc;

  /// 领取时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? receivedAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RedPacketRecordVO &&
          other.id == id &&
          other.packetId == packetId &&
          other.packetNo == packetNo &&
          other.receiverId == receiverId &&
          other.receiverName == receiverName &&
          other.amount == amount &&
          other.isBest == isBest &&
          other.isBestDesc == isBestDesc &&
          other.receivedAt == receivedAt;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (packetId == null ? 0 : packetId!.hashCode) +
      (packetNo == null ? 0 : packetNo!.hashCode) +
      (receiverId == null ? 0 : receiverId!.hashCode) +
      (receiverName == null ? 0 : receiverName!.hashCode) +
      (amount.hashCode) +
      (isBest == null ? 0 : isBest!.hashCode) +
      (isBestDesc == null ? 0 : isBestDesc!.hashCode) +
      (receivedAt == null ? 0 : receivedAt!.hashCode);

  @override
  String toString() =>
      'RedPacketRecordVO[id=$id, packetId=$packetId, packetNo=$packetNo, receiverId=$receiverId, receiverName=$receiverName, amount=$amount, isBest=$isBest, isBestDesc=$isBestDesc, receivedAt=$receivedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.packetId != null) {
      json[r'packetId'] = this.packetId;
    } else {
      json[r'packetId'] = null;
    }
    if (this.packetNo != null) {
      json[r'packetNo'] = this.packetNo;
    } else {
      json[r'packetNo'] = null;
    }
    if (this.receiverId != null) {
      json[r'receiverId'] = this.receiverId;
    } else {
      json[r'receiverId'] = null;
    }
    if (this.receiverName != null) {
      json[r'receiverName'] = this.receiverName;
    } else {
      json[r'receiverName'] = null;
    }
    json[r'amount'] = this.amount;
    if (this.isBest != null) {
      json[r'isBest'] = this.isBest;
    } else {
      json[r'isBest'] = null;
    }
    if (this.isBestDesc != null) {
      json[r'isBestDesc'] = this.isBestDesc;
    } else {
      json[r'isBestDesc'] = null;
    }
    if (this.receivedAt != null) {
      json[r'receivedAt'] = this.receivedAt!.toUtc().toIso8601String();
    } else {
      json[r'receivedAt'] = null;
    }
    return json;
  }

  /// Returns a new [RedPacketRecordVO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RedPacketRecordVO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "RedPacketRecordVO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "RedPacketRecordVO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RedPacketRecordVO(
        id: mapValueOfType<int>(json, r'id'),
        packetId: mapValueOfType<int>(json, r'packetId'),
        packetNo: mapValueOfType<String>(json, r'packetNo'),
        receiverId: mapValueOfType<int>(json, r'receiverId'),
        receiverName: mapValueOfType<String>(json, r'receiverName'),
        amount:
            json[r'amount'] == null ? 0 : num.parse(json[r'amount'].toString()),
        isBest: mapValueOfType<int>(json, r'isBest'),
        isBestDesc: mapValueOfType<String>(json, r'isBestDesc'),
        receivedAt: mapDateTime(json, r'receivedAt', ''),
      );
    }
    return null;
  }

  static List<RedPacketRecordVO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RedPacketRecordVO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RedPacketRecordVO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RedPacketRecordVO> mapFromJson(dynamic json) {
    final map = <String, RedPacketRecordVO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RedPacketRecordVO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RedPacketRecordVO-objects as value to a dart map
  static Map<String, List<RedPacketRecordVO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<RedPacketRecordVO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RedPacketRecordVO.listFromJson(
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
