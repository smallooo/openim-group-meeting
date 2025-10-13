//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TraderOpinionResponseDTO {
  /// Returns a new [TraderOpinionResponseDTO] instance.
  TraderOpinionResponseDTO({
    this.id,
    this.traderId,
    this.traderName,
    this.traderAvatar,
    this.content,
    this.publishStatus,
    this.viewCount,
    this.likeCount,
    this.commentCount,
    this.createdAt,
    this.updatedAt,
  });

  /// 观点ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// 交易员ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? traderId;

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

  /// 观点内容
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? content;

  /// 发布状态: 0-草稿 1-已发布 2-已撤回
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? publishStatus;

  /// 浏览量
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? viewCount;

  /// 点赞数
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? likeCount;

  /// 评论数
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? commentCount;

  /// 创建时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  /// 更新时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TraderOpinionResponseDTO &&
          other.id == id &&
          other.traderId == traderId &&
          other.traderName == traderName &&
          other.traderAvatar == traderAvatar &&
          other.content == content &&
          other.publishStatus == publishStatus &&
          other.viewCount == viewCount &&
          other.likeCount == likeCount &&
          other.commentCount == commentCount &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (traderId == null ? 0 : traderId!.hashCode) +
      (traderName == null ? 0 : traderName!.hashCode) +
      (traderAvatar == null ? 0 : traderAvatar!.hashCode) +
      (content == null ? 0 : content!.hashCode) +
      (publishStatus == null ? 0 : publishStatus!.hashCode) +
      (viewCount == null ? 0 : viewCount!.hashCode) +
      (likeCount == null ? 0 : likeCount!.hashCode) +
      (commentCount == null ? 0 : commentCount!.hashCode) +
      (createdAt == null ? 0 : createdAt!.hashCode) +
      (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() =>
      'TraderOpinionResponseDTO[id=$id, traderId=$traderId, traderName=$traderName, traderAvatar=$traderAvatar, content=$content, publishStatus=$publishStatus, viewCount=$viewCount, likeCount=$likeCount, commentCount=$commentCount, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.traderId != null) {
      json[r'traderId'] = this.traderId;
    } else {
      json[r'traderId'] = null;
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
    if (this.content != null) {
      json[r'content'] = this.content;
    } else {
      json[r'content'] = null;
    }
    if (this.publishStatus != null) {
      json[r'publishStatus'] = this.publishStatus;
    } else {
      json[r'publishStatus'] = null;
    }
    if (this.viewCount != null) {
      json[r'viewCount'] = this.viewCount;
    } else {
      json[r'viewCount'] = null;
    }
    if (this.likeCount != null) {
      json[r'likeCount'] = this.likeCount;
    } else {
      json[r'likeCount'] = null;
    }
    if (this.commentCount != null) {
      json[r'commentCount'] = this.commentCount;
    } else {
      json[r'commentCount'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'createdAt'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [TraderOpinionResponseDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TraderOpinionResponseDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "TraderOpinionResponseDTO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "TraderOpinionResponseDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TraderOpinionResponseDTO(
        id: mapValueOfType<int>(json, r'id'),
        traderId: mapValueOfType<int>(json, r'traderId'),
        traderName: mapValueOfType<String>(json, r'traderName'),
        traderAvatar: mapValueOfType<String>(json, r'traderAvatar'),
        content: mapValueOfType<String>(json, r'content'),
        publishStatus: mapValueOfType<int>(json, r'publishStatus'),
        viewCount: mapValueOfType<int>(json, r'viewCount'),
        likeCount: mapValueOfType<int>(json, r'likeCount'),
        commentCount: mapValueOfType<int>(json, r'commentCount'),
        createdAt: mapDateTime(json, r'createdAt', ''),
        updatedAt: mapDateTime(json, r'updatedAt', ''),
      );
    }
    return null;
  }

  static List<TraderOpinionResponseDTO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TraderOpinionResponseDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TraderOpinionResponseDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TraderOpinionResponseDTO> mapFromJson(dynamic json) {
    final map = <String, TraderOpinionResponseDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TraderOpinionResponseDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TraderOpinionResponseDTO-objects as value to a dart map
  static Map<String, List<TraderOpinionResponseDTO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<TraderOpinionResponseDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TraderOpinionResponseDTO.listFromJson(
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
