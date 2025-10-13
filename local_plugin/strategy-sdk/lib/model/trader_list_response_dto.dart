//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TraderListResponseDTO {
  /// Returns a new [TraderListResponseDTO] instance.
  TraderListResponseDTO({
    this.id,
    this.memberId,
    this.traderName,
    this.traderAvatar,
    this.bio,
    this.joinTime,
    this.subscriberCount,
    this.followerCount,
    this.totalViews,
    this.spotStrategyCount,
    this.futuresStrategyCount,
    this.totalStrategyCount,
    this.status,
    this.createdAt,
  });

  /// 交易员ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// 会员ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? memberId;

  /// 交易员名称
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? traderName;

  /// 交易员头像
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? traderAvatar;

  /// 个人简介
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bio;

  /// 加入时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? joinTime;

  /// 订阅用户数
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? subscriberCount;

  /// 关注用户数
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? followerCount;

  /// 策略总浏览量
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalViews;

  /// 现货策略数量
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? spotStrategyCount;

  /// 合约策略数量
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? futuresStrategyCount;

  /// 策略总数量
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalStrategyCount;

  /// 状态: 0-待审核 1-正常 2-禁用
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? status;

  /// 创建时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TraderListResponseDTO &&
          other.id == id &&
          other.memberId == memberId &&
          other.traderName == traderName &&
          other.traderAvatar == traderAvatar &&
          other.bio == bio &&
          other.joinTime == joinTime &&
          other.subscriberCount == subscriberCount &&
          other.followerCount == followerCount &&
          other.totalViews == totalViews &&
          other.spotStrategyCount == spotStrategyCount &&
          other.futuresStrategyCount == futuresStrategyCount &&
          other.totalStrategyCount == totalStrategyCount &&
          other.status == status &&
          other.createdAt == createdAt;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (memberId == null ? 0 : memberId!.hashCode) +
      (traderName == null ? 0 : traderName!.hashCode) +
      (traderAvatar == null ? 0 : traderAvatar!.hashCode) +
      (bio == null ? 0 : bio!.hashCode) +
      (joinTime == null ? 0 : joinTime!.hashCode) +
      (subscriberCount == null ? 0 : subscriberCount!.hashCode) +
      (followerCount == null ? 0 : followerCount!.hashCode) +
      (totalViews == null ? 0 : totalViews!.hashCode) +
      (spotStrategyCount == null ? 0 : spotStrategyCount!.hashCode) +
      (futuresStrategyCount == null ? 0 : futuresStrategyCount!.hashCode) +
      (totalStrategyCount == null ? 0 : totalStrategyCount!.hashCode) +
      (status == null ? 0 : status!.hashCode) +
      (createdAt == null ? 0 : createdAt!.hashCode);

  @override
  String toString() =>
      'TraderListResponseDTO[id=$id, memberId=$memberId, traderName=$traderName, traderAvatar=$traderAvatar, bio=$bio, joinTime=$joinTime, subscriberCount=$subscriberCount, followerCount=$followerCount, totalViews=$totalViews, spotStrategyCount=$spotStrategyCount, futuresStrategyCount=$futuresStrategyCount, totalStrategyCount=$totalStrategyCount, status=$status, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.memberId != null) {
      json[r'memberId'] = this.memberId;
    } else {
      json[r'memberId'] = null;
    }
    if (this.traderName != null) {
      json[r'traderName'] = this.traderName;
    } else {
      json[r'traderName'] = null;
    }
    if (this.traderAvatar != null) {
      json[r'traderAvatar'] = this.traderAvatar;
    } else {
      json[r'traderAvatar'] = null;
    }
    if (this.bio != null) {
      json[r'bio'] = this.bio;
    } else {
      json[r'bio'] = null;
    }
    if (this.joinTime != null) {
      json[r'joinTime'] = this.joinTime!.toUtc().toIso8601String();
    } else {
      json[r'joinTime'] = null;
    }
    if (this.subscriberCount != null) {
      json[r'subscriberCount'] = this.subscriberCount;
    } else {
      json[r'subscriberCount'] = null;
    }
    if (this.followerCount != null) {
      json[r'followerCount'] = this.followerCount;
    } else {
      json[r'followerCount'] = null;
    }
    if (this.totalViews != null) {
      json[r'totalViews'] = this.totalViews;
    } else {
      json[r'totalViews'] = null;
    }
    if (this.spotStrategyCount != null) {
      json[r'spotStrategyCount'] = this.spotStrategyCount;
    } else {
      json[r'spotStrategyCount'] = null;
    }
    if (this.futuresStrategyCount != null) {
      json[r'futuresStrategyCount'] = this.futuresStrategyCount;
    } else {
      json[r'futuresStrategyCount'] = null;
    }
    if (this.totalStrategyCount != null) {
      json[r'totalStrategyCount'] = this.totalStrategyCount;
    } else {
      json[r'totalStrategyCount'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'createdAt'] = null;
    }
    return json;
  }

  /// Returns a new [TraderListResponseDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TraderListResponseDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "TraderListResponseDTO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "TraderListResponseDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TraderListResponseDTO(
        id: mapValueOfType<int>(json, r'id'),
        memberId: mapValueOfType<int>(json, r'memberId'),
        traderName: mapValueOfType<String>(json, r'traderName'),
        traderAvatar: mapValueOfType<String>(json, r'traderAvatar'),
        bio: mapValueOfType<String>(json, r'bio'),
        joinTime: mapDateTime(json, r'joinTime', ''),
        subscriberCount: mapValueOfType<int>(json, r'subscriberCount'),
        followerCount: mapValueOfType<int>(json, r'followerCount'),
        totalViews: mapValueOfType<int>(json, r'totalViews'),
        spotStrategyCount: mapValueOfType<int>(json, r'spotStrategyCount'),
        futuresStrategyCount:
            mapValueOfType<int>(json, r'futuresStrategyCount'),
        totalStrategyCount: mapValueOfType<int>(json, r'totalStrategyCount'),
        status: mapValueOfType<int>(json, r'status'),
        createdAt: mapDateTime(json, r'createdAt', ''),
      );
    }
    return null;
  }

  static List<TraderListResponseDTO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TraderListResponseDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TraderListResponseDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TraderListResponseDTO> mapFromJson(dynamic json) {
    final map = <String, TraderListResponseDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TraderListResponseDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TraderListResponseDTO-objects as value to a dart map
  static Map<String, List<TraderListResponseDTO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<TraderListResponseDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TraderListResponseDTO.listFromJson(
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
