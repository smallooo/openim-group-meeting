//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RefundCancelResultVO {
  /// Returns a new [RefundCancelResultVO] instance.
  RefundCancelResultVO({
    this.result,
    this.message,
    this.refundId,
    this.refundNo,
    this.cancelTime,
    this.cancelReason,
  });

  /// 撤销结果
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? result;

  /// 撤销消息
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  /// 退款申请ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? refundId;

  /// 退款申请编号
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? refundNo;

  /// 撤销时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cancelTime;

  /// 撤销原因
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cancelReason;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RefundCancelResultVO &&
          other.result == result &&
          other.message == message &&
          other.refundId == refundId &&
          other.refundNo == refundNo &&
          other.cancelTime == cancelTime &&
          other.cancelReason == cancelReason;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (result == null ? 0 : result!.hashCode) +
      (message == null ? 0 : message!.hashCode) +
      (refundId == null ? 0 : refundId!.hashCode) +
      (refundNo == null ? 0 : refundNo!.hashCode) +
      (cancelTime == null ? 0 : cancelTime!.hashCode) +
      (cancelReason == null ? 0 : cancelReason!.hashCode);

  @override
  String toString() =>
      'RefundCancelResultVO[result=$result, message=$message, refundId=$refundId, refundNo=$refundNo, cancelTime=$cancelTime, cancelReason=$cancelReason]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.result != null) {
      json[r'result'] = this.result;
    } else {
      json[r'result'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.refundId != null) {
      json[r'refundId'] = this.refundId;
    } else {
      json[r'refundId'] = null;
    }
    if (this.refundNo != null) {
      json[r'refundNo'] = this.refundNo;
    } else {
      json[r'refundNo'] = null;
    }
    if (this.cancelTime != null) {
      json[r'cancelTime'] = this.cancelTime;
    } else {
      json[r'cancelTime'] = null;
    }
    if (this.cancelReason != null) {
      json[r'cancelReason'] = this.cancelReason;
    } else {
      json[r'cancelReason'] = null;
    }
    return json;
  }

  /// Returns a new [RefundCancelResultVO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RefundCancelResultVO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "RefundCancelResultVO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "RefundCancelResultVO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RefundCancelResultVO(
        result: mapValueOfType<String>(json, r'result'),
        message: mapValueOfType<String>(json, r'message'),
        refundId: mapValueOfType<int>(json, r'refundId'),
        refundNo: mapValueOfType<String>(json, r'refundNo'),
        cancelTime: mapValueOfType<String>(json, r'cancelTime'),
        cancelReason: mapValueOfType<String>(json, r'cancelReason'),
      );
    }
    return null;
  }

  static List<RefundCancelResultVO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RefundCancelResultVO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RefundCancelResultVO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RefundCancelResultVO> mapFromJson(dynamic json) {
    final map = <String, RefundCancelResultVO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RefundCancelResultVO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RefundCancelResultVO-objects as value to a dart map
  static Map<String, List<RefundCancelResultVO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<RefundCancelResultVO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RefundCancelResultVO.listFromJson(
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
