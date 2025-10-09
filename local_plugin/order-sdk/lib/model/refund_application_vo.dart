//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RefundApplicationVO {
  /// Returns a new [RefundApplicationVO] instance.
  RefundApplicationVO({
    this.id,
    this.refundNo,
    this.orderId,
    this.orderNo,
    this.refundType,
    this.refundAmount,
    this.refundReason,
    this.description,
    this.evidenceImages,
    this.evidenceVideos,
    this.evidenceFiles,
    this.status,
    this.statusText,
    this.reviewTime,
    this.reviewerName,
    this.reviewRemark,
    this.reviewComment,
    this.completeTime,
    this.createdAt,
    this.updatedAt,
  });

  /// 退款申请ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// 退款单号
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? refundNo;

  /// 订单ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? orderId;

  /// 订单编号
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? orderNo;

  /// 退款类型：full->全额退款,partial->部分退款
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? refundType;

  /// 退款金额
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? refundAmount;

  /// 退款原因
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? refundReason;

  /// 详细描述
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// 证据图片URLs
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? evidenceImages;

  /// 证据视频URLs
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? evidenceVideos;

  /// 证据文件URLs
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? evidenceFiles;

  /// 状态：pending_review->待审核,approved->已同意,rejected->已拒绝,completed->已完成,cancelled->已取消
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// 状态描述
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? statusText;

  /// 审核时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reviewTime;

  /// 审核人姓名
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reviewerName;

  /// 审核备注
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reviewRemark;

  /// 审核意见
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reviewComment;

  /// 完成时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? completeTime;

  /// 创建时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  /// 更新时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RefundApplicationVO &&
          other.id == id &&
          other.refundNo == refundNo &&
          other.orderId == orderId &&
          other.orderNo == orderNo &&
          other.refundType == refundType &&
          other.refundAmount == refundAmount &&
          other.refundReason == refundReason &&
          other.description == description &&
          other.evidenceImages == evidenceImages &&
          other.evidenceVideos == evidenceVideos &&
          other.evidenceFiles == evidenceFiles &&
          other.status == status &&
          other.statusText == statusText &&
          other.reviewTime == reviewTime &&
          other.reviewerName == reviewerName &&
          other.reviewRemark == reviewRemark &&
          other.reviewComment == reviewComment &&
          other.completeTime == completeTime &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (refundNo == null ? 0 : refundNo!.hashCode) +
      (orderId == null ? 0 : orderId!.hashCode) +
      (orderNo == null ? 0 : orderNo!.hashCode) +
      (refundType == null ? 0 : refundType!.hashCode) +
      (refundAmount == null ? 0 : refundAmount!.hashCode) +
      (refundReason == null ? 0 : refundReason!.hashCode) +
      (description == null ? 0 : description!.hashCode) +
      (evidenceImages == null ? 0 : evidenceImages!.hashCode) +
      (evidenceVideos == null ? 0 : evidenceVideos!.hashCode) +
      (evidenceFiles == null ? 0 : evidenceFiles!.hashCode) +
      (status == null ? 0 : status!.hashCode) +
      (statusText == null ? 0 : statusText!.hashCode) +
      (reviewTime == null ? 0 : reviewTime!.hashCode) +
      (reviewerName == null ? 0 : reviewerName!.hashCode) +
      (reviewRemark == null ? 0 : reviewRemark!.hashCode) +
      (reviewComment == null ? 0 : reviewComment!.hashCode) +
      (completeTime == null ? 0 : completeTime!.hashCode) +
      (createdAt == null ? 0 : createdAt!.hashCode) +
      (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() =>
      'RefundApplicationVO[id=$id, refundNo=$refundNo, orderId=$orderId, orderNo=$orderNo, refundType=$refundType, refundAmount=$refundAmount, refundReason=$refundReason, description=$description, evidenceImages=$evidenceImages, evidenceVideos=$evidenceVideos, evidenceFiles=$evidenceFiles, status=$status, statusText=$statusText, reviewTime=$reviewTime, reviewerName=$reviewerName, reviewRemark=$reviewRemark, reviewComment=$reviewComment, completeTime=$completeTime, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.refundNo != null) {
      json[r'refundNo'] = this.refundNo;
    } else {
      json[r'refundNo'] = null;
    }
    if (this.orderId != null) {
      json[r'orderId'] = this.orderId;
    } else {
      json[r'orderId'] = null;
    }
    if (this.orderNo != null) {
      json[r'orderNo'] = this.orderNo;
    } else {
      json[r'orderNo'] = null;
    }
    if (this.refundType != null) {
      json[r'refundType'] = this.refundType;
    } else {
      json[r'refundType'] = null;
    }
    if (this.refundAmount != null) {
      json[r'refundAmount'] = this.refundAmount;
    } else {
      json[r'refundAmount'] = null;
    }
    if (this.refundReason != null) {
      json[r'refundReason'] = this.refundReason;
    } else {
      json[r'refundReason'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.evidenceImages != null) {
      json[r'evidenceImages'] = this.evidenceImages;
    } else {
      json[r'evidenceImages'] = null;
    }
    if (this.evidenceVideos != null) {
      json[r'evidenceVideos'] = this.evidenceVideos;
    } else {
      json[r'evidenceVideos'] = null;
    }
    if (this.evidenceFiles != null) {
      json[r'evidenceFiles'] = this.evidenceFiles;
    } else {
      json[r'evidenceFiles'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.statusText != null) {
      json[r'statusText'] = this.statusText;
    } else {
      json[r'statusText'] = null;
    }
    if (this.reviewTime != null) {
      json[r'reviewTime'] = this.reviewTime;
    } else {
      json[r'reviewTime'] = null;
    }
    if (this.reviewerName != null) {
      json[r'reviewerName'] = this.reviewerName;
    } else {
      json[r'reviewerName'] = null;
    }
    if (this.reviewRemark != null) {
      json[r'reviewRemark'] = this.reviewRemark;
    } else {
      json[r'reviewRemark'] = null;
    }
    if (this.reviewComment != null) {
      json[r'reviewComment'] = this.reviewComment;
    } else {
      json[r'reviewComment'] = null;
    }
    if (this.completeTime != null) {
      json[r'completeTime'] = this.completeTime;
    } else {
      json[r'completeTime'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [RefundApplicationVO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RefundApplicationVO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "RefundApplicationVO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "RefundApplicationVO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RefundApplicationVO(
        id: mapValueOfType<int>(json, r'id'),
        refundNo: mapValueOfType<String>(json, r'refundNo'),
        orderId: mapValueOfType<int>(json, r'orderId'),
        orderNo: mapValueOfType<String>(json, r'orderNo'),
        refundType: mapValueOfType<String>(json, r'refundType'),
        refundAmount: json[r'refundAmount'] == null
            ? null
            : num.parse(json[r'refundAmount'].toString()),
        refundReason: mapValueOfType<String>(json, r'refundReason'),
        description: mapValueOfType<String>(json, r'description'),
        evidenceImages: mapValueOfType<String>(json, r'evidenceImages'),
        evidenceVideos: mapValueOfType<String>(json, r'evidenceVideos'),
        evidenceFiles: mapValueOfType<String>(json, r'evidenceFiles'),
        status: mapValueOfType<String>(json, r'status'),
        statusText: mapValueOfType<String>(json, r'statusText'),
        reviewTime: mapValueOfType<String>(json, r'reviewTime'),
        reviewerName: mapValueOfType<String>(json, r'reviewerName'),
        reviewRemark: mapValueOfType<String>(json, r'reviewRemark'),
        reviewComment: mapValueOfType<String>(json, r'reviewComment'),
        completeTime: mapValueOfType<String>(json, r'completeTime'),
        createdAt: mapValueOfType<String>(json, r'createdAt'),
        updatedAt: mapValueOfType<String>(json, r'updatedAt'),
      );
    }
    return null;
  }

  static List<RefundApplicationVO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RefundApplicationVO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RefundApplicationVO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RefundApplicationVO> mapFromJson(dynamic json) {
    final map = <String, RefundApplicationVO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RefundApplicationVO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RefundApplicationVO-objects as value to a dart map
  static Map<String, List<RefundApplicationVO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<RefundApplicationVO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RefundApplicationVO.listFromJson(
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
