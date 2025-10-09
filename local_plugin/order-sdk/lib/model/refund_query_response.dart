//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RefundQueryResponse {
  /// Returns a new [RefundQueryResponse] instance.
  RefundQueryResponse({
    this.refundId,
    this.refundNo,
    this.paymentId,
    this.refundAmount,
    this.status,
    this.thirdPartyRefundNo,
    this.refundTime,
    this.createTime,
    this.updateTime,
  });

  /// 退款系统订单号
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? refundId;

  /// 退款单号
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? refundNo;

  /// 原支付订单号
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? paymentId;

  /// 退款金额
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? refundAmount;

  /// 退款状态：PENDING(处理中),SUCCESS(退款成功),FAILED(退款失败)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// 第三方退款订单号
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? thirdPartyRefundNo;

  /// 退款完成时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? refundTime;

  /// 创建时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createTime;

  /// 更新时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updateTime;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RefundQueryResponse &&
          other.refundId == refundId &&
          other.refundNo == refundNo &&
          other.paymentId == paymentId &&
          other.refundAmount == refundAmount &&
          other.status == status &&
          other.thirdPartyRefundNo == thirdPartyRefundNo &&
          other.refundTime == refundTime &&
          other.createTime == createTime &&
          other.updateTime == updateTime;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (refundId == null ? 0 : refundId!.hashCode) +
      (refundNo == null ? 0 : refundNo!.hashCode) +
      (paymentId == null ? 0 : paymentId!.hashCode) +
      (refundAmount == null ? 0 : refundAmount!.hashCode) +
      (status == null ? 0 : status!.hashCode) +
      (thirdPartyRefundNo == null ? 0 : thirdPartyRefundNo!.hashCode) +
      (refundTime == null ? 0 : refundTime!.hashCode) +
      (createTime == null ? 0 : createTime!.hashCode) +
      (updateTime == null ? 0 : updateTime!.hashCode);

  @override
  String toString() =>
      'RefundQueryResponse[refundId=$refundId, refundNo=$refundNo, paymentId=$paymentId, refundAmount=$refundAmount, status=$status, thirdPartyRefundNo=$thirdPartyRefundNo, refundTime=$refundTime, createTime=$createTime, updateTime=$updateTime]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.paymentId != null) {
      json[r'paymentId'] = this.paymentId;
    } else {
      json[r'paymentId'] = null;
    }
    if (this.refundAmount != null) {
      json[r'refundAmount'] = this.refundAmount;
    } else {
      json[r'refundAmount'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.thirdPartyRefundNo != null) {
      json[r'thirdPartyRefundNo'] = this.thirdPartyRefundNo;
    } else {
      json[r'thirdPartyRefundNo'] = null;
    }
    if (this.refundTime != null) {
      json[r'refundTime'] = this.refundTime!.toUtc().toIso8601String();
    } else {
      json[r'refundTime'] = null;
    }
    if (this.createTime != null) {
      json[r'createTime'] = this.createTime!.toUtc().toIso8601String();
    } else {
      json[r'createTime'] = null;
    }
    if (this.updateTime != null) {
      json[r'updateTime'] = this.updateTime!.toUtc().toIso8601String();
    } else {
      json[r'updateTime'] = null;
    }
    return json;
  }

  /// Returns a new [RefundQueryResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RefundQueryResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "RefundQueryResponse[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "RefundQueryResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RefundQueryResponse(
        refundId: mapValueOfType<String>(json, r'refundId'),
        refundNo: mapValueOfType<String>(json, r'refundNo'),
        paymentId: mapValueOfType<String>(json, r'paymentId'),
        refundAmount: json[r'refundAmount'] == null
            ? null
            : num.parse(json[r'refundAmount'].toString()),
        status: mapValueOfType<String>(json, r'status'),
        thirdPartyRefundNo: mapValueOfType<String>(json, r'thirdPartyRefundNo'),
        refundTime: mapDateTime(json, r'refundTime', ''),
        createTime: mapDateTime(json, r'createTime', ''),
        updateTime: mapDateTime(json, r'updateTime', ''),
      );
    }
    return null;
  }

  static List<RefundQueryResponse> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RefundQueryResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RefundQueryResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RefundQueryResponse> mapFromJson(dynamic json) {
    final map = <String, RefundQueryResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RefundQueryResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RefundQueryResponse-objects as value to a dart map
  static Map<String, List<RefundQueryResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<RefundQueryResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RefundQueryResponse.listFromJson(
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
