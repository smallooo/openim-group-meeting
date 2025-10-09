//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RefundApplyRequest {
  /// Returns a new [RefundApplyRequest] instance.
  RefundApplyRequest({
    required this.orderId,
    required this.refundType,
    required this.refundAmount,
    required this.refundReason,
    this.description,
    this.evidenceImages,
    this.evidenceVideos,
    this.evidenceFiles,
  });

  /// 订单ID
  int orderId;

  /// 退款类型:full->全额退款;partial->部分退款
  String refundType;

  /// 退款金额
  String refundAmount;

  /// 退款原因
  String refundReason;

  /// 详细描述
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// 证据图片URLs，JSON格式
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? evidenceImages;

  /// 证据视频URLs，JSON格式
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? evidenceVideos;

  /// 证据文件URLs，JSON格式
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? evidenceFiles;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RefundApplyRequest &&
          other.orderId == orderId &&
          other.refundType == refundType &&
          other.refundAmount == refundAmount &&
          other.refundReason == refundReason &&
          other.description == description &&
          other.evidenceImages == evidenceImages &&
          other.evidenceVideos == evidenceVideos &&
          other.evidenceFiles == evidenceFiles;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (orderId.hashCode) +
      (refundType.hashCode) +
      (refundAmount.hashCode) +
      (refundReason.hashCode) +
      (description == null ? 0 : description!.hashCode) +
      (evidenceImages == null ? 0 : evidenceImages!.hashCode) +
      (evidenceVideos == null ? 0 : evidenceVideos!.hashCode) +
      (evidenceFiles == null ? 0 : evidenceFiles!.hashCode);

  @override
  String toString() =>
      'RefundApplyRequest[orderId=$orderId, refundType=$refundType, refundAmount=$refundAmount, refundReason=$refundReason, description=$description, evidenceImages=$evidenceImages, evidenceVideos=$evidenceVideos, evidenceFiles=$evidenceFiles]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'orderId'] = this.orderId;
    json[r'refundType'] = this.refundType;
    json[r'refundAmount'] = this.refundAmount;
    json[r'refundReason'] = this.refundReason;
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
    return json;
  }

  /// Returns a new [RefundApplyRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RefundApplyRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "RefundApplyRequest[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "RefundApplyRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RefundApplyRequest(
        orderId: mapValueOfType<int>(json, r'orderId')!,
        refundType: mapValueOfType<String>(json, r'refundType')!,
        refundAmount: mapValueOfType<String>(json, r'refundAmount')!,
        refundReason: mapValueOfType<String>(json, r'refundReason')!,
        description: mapValueOfType<String>(json, r'description'),
        evidenceImages: mapValueOfType<String>(json, r'evidenceImages'),
        evidenceVideos: mapValueOfType<String>(json, r'evidenceVideos'),
        evidenceFiles: mapValueOfType<String>(json, r'evidenceFiles'),
      );
    }
    return null;
  }

  static List<RefundApplyRequest> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RefundApplyRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RefundApplyRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RefundApplyRequest> mapFromJson(dynamic json) {
    final map = <String, RefundApplyRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RefundApplyRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RefundApplyRequest-objects as value to a dart map
  static Map<String, List<RefundApplyRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<RefundApplyRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RefundApplyRequest.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'orderId',
    'refundType',
    'refundAmount',
    'refundReason',
  };
}
