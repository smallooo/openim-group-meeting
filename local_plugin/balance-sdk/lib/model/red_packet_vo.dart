//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RedPacketVO {
  /// Returns a new [RedPacketVO] instance.
  RedPacketVO({
    this.id,
    this.packetNo,
    this.senderId,
    this.senderName,
    this.groupId,
    this.packetType,
    this.packetTypeDesc,
    this.currencyId,
    this.currencyName,
    this.totalAmount = 0,
    this.totalCount,
    this.remainingCount,
    this.remainingAmount = 0,
    this.blessing,
    this.status,
    this.statusDesc,
    this.expireTime,
    this.createdAt,
    this.records = const [],
    this.isReceived,
    this.receivedAmount = 0,
  });

  /// 红包ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// 红包编号
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? packetNo;

  /// 发红包用户ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? senderId;

  /// 发红包用户昵称
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? senderName;

  /// 群组ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? groupId;

  /// 红包类型 1:普通红包 2:拼手气红包
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? packetType;

  /// 红包类型描述
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? packetTypeDesc;

  /// 币种ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? currencyId;

  /// 币种名称
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currencyName;

  /// 红包总金额
  num totalAmount;

  /// 红包总个数
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalCount;

  /// 剩余红包个数
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? remainingCount;

  /// 剩余红包金额
  num remainingAmount;

  /// 祝福语
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? blessing;

  /// 红包状态 1:进行中 2:已抢完 3:已过期 4:已退回
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? status;

  /// 红包状态描述
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? statusDesc;

  /// 过期时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? expireTime;

  /// 创建时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  /// 领取记录列表
  List<RedPacketRecordVO> records;

  /// 当前用户是否已领取
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isReceived;

  /// 当前用户领取的金额
  num receivedAmount;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RedPacketVO &&
          other.id == id &&
          other.packetNo == packetNo &&
          other.senderId == senderId &&
          other.senderName == senderName &&
          other.groupId == groupId &&
          other.packetType == packetType &&
          other.packetTypeDesc == packetTypeDesc &&
          other.currencyId == currencyId &&
          other.currencyName == currencyName &&
          other.totalAmount == totalAmount &&
          other.totalCount == totalCount &&
          other.remainingCount == remainingCount &&
          other.remainingAmount == remainingAmount &&
          other.blessing == blessing &&
          other.status == status &&
          other.statusDesc == statusDesc &&
          other.expireTime == expireTime &&
          other.createdAt == createdAt &&
          other.records == records &&
          other.isReceived == isReceived &&
          other.receivedAmount == receivedAmount;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (packetNo == null ? 0 : packetNo!.hashCode) +
      (senderId == null ? 0 : senderId!.hashCode) +
      (senderName == null ? 0 : senderName!.hashCode) +
      (groupId == null ? 0 : groupId!.hashCode) +
      (packetType == null ? 0 : packetType!.hashCode) +
      (packetTypeDesc == null ? 0 : packetTypeDesc!.hashCode) +
      (currencyId == null ? 0 : currencyId!.hashCode) +
      (currencyName == null ? 0 : currencyName!.hashCode) +
      (totalAmount.hashCode) +
      (totalCount == null ? 0 : totalCount!.hashCode) +
      (remainingCount == null ? 0 : remainingCount!.hashCode) +
      (remainingAmount.hashCode) +
      (blessing == null ? 0 : blessing!.hashCode) +
      (status == null ? 0 : status!.hashCode) +
      (statusDesc == null ? 0 : statusDesc!.hashCode) +
      (expireTime == null ? 0 : expireTime!.hashCode) +
      (createdAt == null ? 0 : createdAt!.hashCode) +
      (records.hashCode) +
      (isReceived == null ? 0 : isReceived!.hashCode) +
      (receivedAmount.hashCode);

  @override
  String toString() =>
      'RedPacketVO[id=$id, packetNo=$packetNo, senderId=$senderId, senderName=$senderName, groupId=$groupId, packetType=$packetType, packetTypeDesc=$packetTypeDesc, currencyId=$currencyId, currencyName=$currencyName, totalAmount=$totalAmount, totalCount=$totalCount, remainingCount=$remainingCount, remainingAmount=$remainingAmount, blessing=$blessing, status=$status, statusDesc=$statusDesc, expireTime=$expireTime, createdAt=$createdAt, records=$records, isReceived=$isReceived, receivedAmount=$receivedAmount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.packetNo != null) {
      json[r'packetNo'] = this.packetNo;
    } else {
      json[r'packetNo'] = null;
    }
    if (this.senderId != null) {
      json[r'senderId'] = this.senderId;
    } else {
      json[r'senderId'] = null;
    }
    if (this.senderName != null) {
      json[r'senderName'] = this.senderName;
    } else {
      json[r'senderName'] = null;
    }
    if (this.groupId != null) {
      json[r'groupId'] = this.groupId;
    } else {
      json[r'groupId'] = null;
    }
    if (this.packetType != null) {
      json[r'packetType'] = this.packetType;
    } else {
      json[r'packetType'] = null;
    }
    if (this.packetTypeDesc != null) {
      json[r'packetTypeDesc'] = this.packetTypeDesc;
    } else {
      json[r'packetTypeDesc'] = null;
    }
    if (this.currencyId != null) {
      json[r'currencyId'] = this.currencyId;
    } else {
      json[r'currencyId'] = null;
    }
    if (this.currencyName != null) {
      json[r'currencyName'] = this.currencyName;
    } else {
      json[r'currencyName'] = null;
    }
    json[r'totalAmount'] = this.totalAmount;
    if (this.totalCount != null) {
      json[r'totalCount'] = this.totalCount;
    } else {
      json[r'totalCount'] = null;
    }
    if (this.remainingCount != null) {
      json[r'remainingCount'] = this.remainingCount;
    } else {
      json[r'remainingCount'] = null;
    }
    json[r'remainingAmount'] = this.remainingAmount;
    if (this.blessing != null) {
      json[r'blessing'] = this.blessing;
    } else {
      json[r'blessing'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.statusDesc != null) {
      json[r'statusDesc'] = this.statusDesc;
    } else {
      json[r'statusDesc'] = null;
    }
    if (this.expireTime != null) {
      json[r'expireTime'] = this.expireTime!.toUtc().toIso8601String();
    } else {
      json[r'expireTime'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'createdAt'] = null;
    }
    json[r'records'] = this.records;
    if (this.isReceived != null) {
      json[r'isReceived'] = this.isReceived;
    } else {
      json[r'isReceived'] = null;
    }
    json[r'receivedAmount'] = this.receivedAmount;
    return json;
  }

  /// Returns a new [RedPacketVO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RedPacketVO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "RedPacketVO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "RedPacketVO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RedPacketVO(
        id: mapValueOfType<int>(json, r'id'),
        packetNo: mapValueOfType<String>(json, r'packetNo'),
        senderId: mapValueOfType<int>(json, r'senderId'),
        senderName: mapValueOfType<String>(json, r'senderName'),
        groupId: mapValueOfType<int>(json, r'groupId'),
        packetType: mapValueOfType<int>(json, r'packetType'),
        packetTypeDesc: mapValueOfType<String>(json, r'packetTypeDesc'),
        currencyId: mapValueOfType<int>(json, r'currencyId'),
        currencyName: mapValueOfType<String>(json, r'currencyName'),
        totalAmount: json[r'totalAmount'] == null
            ? 0
            : num.parse(json[r'totalAmount'].toString()),
        totalCount: mapValueOfType<int>(json, r'totalCount'),
        remainingCount: mapValueOfType<int>(json, r'remainingCount'),
        remainingAmount: json[r'remainingAmount'] == null
            ? 0
            : num.parse(json[r'remainingAmount'].toString()),
        blessing: mapValueOfType<String>(json, r'blessing'),
        status: mapValueOfType<int>(json, r'status'),
        statusDesc: mapValueOfType<String>(json, r'statusDesc'),
        expireTime: mapDateTime(json, r'expireTime', ''),
        createdAt: mapDateTime(json, r'createdAt', ''),
        records: RedPacketRecordVO.listFromJson(json[r'records']),
        isReceived: mapValueOfType<bool>(json, r'isReceived'),
        receivedAmount: json[r'receivedAmount'] == null
            ? 0
            : num.parse(json[r'receivedAmount'].toString()),
      );
    }
    return null;
  }

  static List<RedPacketVO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RedPacketVO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RedPacketVO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RedPacketVO> mapFromJson(dynamic json) {
    final map = <String, RedPacketVO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RedPacketVO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RedPacketVO-objects as value to a dart map
  static Map<String, List<RedPacketVO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<RedPacketVO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RedPacketVO.listFromJson(
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
