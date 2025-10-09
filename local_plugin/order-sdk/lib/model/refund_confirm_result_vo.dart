//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RefundConfirmResultVO {
  /// Returns a new [RefundConfirmResultVO] instance.
  RefundConfirmResultVO({
    this.refundId,
    this.refundNo,
    this.orderNo,
    this.refundStatus,
    this.refundStatusText,
    this.orderStatus,
    this.orderStatusText,
    this.refundAmount,
    this.paymentRefundId,
    this.confirmTime,
    this.confirmRemark,
    this.result,
    this.message,
  });

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

  /// 订单编号
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? orderNo;

  /// 退款状态
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? refundStatus;

  /// 退款状态描述
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? refundStatusText;

  /// 订单状态
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? orderStatus;

  /// 订单状态描述
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? orderStatusText;

  /// 退款金额
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? refundAmount;

  /// 支付系统退款ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? paymentRefundId;

  /// 确认时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? confirmTime;

  /// 确认备注
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? confirmRemark;

  /// 处理结果
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? result;

  /// 处理消息
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
      other is RefundConfirmResultVO &&
          other.refundId == refundId &&
          other.refundNo == refundNo &&
          other.orderNo == orderNo &&
          other.refundStatus == refundStatus &&
          other.refundStatusText == refundStatusText &&
          other.orderStatus == orderStatus &&
          other.orderStatusText == orderStatusText &&
          other.refundAmount == refundAmount &&
          other.paymentRefundId == paymentRefundId &&
          other.confirmTime == confirmTime &&
          other.confirmRemark == confirmRemark &&
          other.result == result &&
          other.message == message;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (refundId == null ? 0 : refundId!.hashCode) +
      (refundNo == null ? 0 : refundNo!.hashCode) +
      (orderNo == null ? 0 : orderNo!.hashCode) +
      (refundStatus == null ? 0 : refundStatus!.hashCode) +
      (refundStatusText == null ? 0 : refundStatusText!.hashCode) +
      (orderStatus == null ? 0 : orderStatus!.hashCode) +
      (orderStatusText == null ? 0 : orderStatusText!.hashCode) +
      (refundAmount == null ? 0 : refundAmount!.hashCode) +
      (paymentRefundId == null ? 0 : paymentRefundId!.hashCode) +
      (confirmTime == null ? 0 : confirmTime!.hashCode) +
      (confirmRemark == null ? 0 : confirmRemark!.hashCode) +
      (result == null ? 0 : result!.hashCode) +
      (message == null ? 0 : message!.hashCode);

  @override
  String toString() =>
      'RefundConfirmResultVO[refundId=$refundId, refundNo=$refundNo, orderNo=$orderNo, refundStatus=$refundStatus, refundStatusText=$refundStatusText, orderStatus=$orderStatus, orderStatusText=$orderStatusText, refundAmount=$refundAmount, paymentRefundId=$paymentRefundId, confirmTime=$confirmTime, confirmRemark=$confirmRemark, result=$result, message=$message]';

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
    if (this.orderNo != null) {
      json[r'orderNo'] = this.orderNo;
    } else {
      json[r'orderNo'] = null;
    }
    if (this.refundStatus != null) {
      json[r'refundStatus'] = this.refundStatus;
    } else {
      json[r'refundStatus'] = null;
    }
    if (this.refundStatusText != null) {
      json[r'refundStatusText'] = this.refundStatusText;
    } else {
      json[r'refundStatusText'] = null;
    }
    if (this.orderStatus != null) {
      json[r'orderStatus'] = this.orderStatus;
    } else {
      json[r'orderStatus'] = null;
    }
    if (this.orderStatusText != null) {
      json[r'orderStatusText'] = this.orderStatusText;
    } else {
      json[r'orderStatusText'] = null;
    }
    if (this.refundAmount != null) {
      json[r'refundAmount'] = this.refundAmount;
    } else {
      json[r'refundAmount'] = null;
    }
    if (this.paymentRefundId != null) {
      json[r'paymentRefundId'] = this.paymentRefundId;
    } else {
      json[r'paymentRefundId'] = null;
    }
    if (this.confirmTime != null) {
      json[r'confirmTime'] = this.confirmTime;
    } else {
      json[r'confirmTime'] = null;
    }
    if (this.confirmRemark != null) {
      json[r'confirmRemark'] = this.confirmRemark;
    } else {
      json[r'confirmRemark'] = null;
    }
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
    return json;
  }

  /// Returns a new [RefundConfirmResultVO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RefundConfirmResultVO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "RefundConfirmResultVO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "RefundConfirmResultVO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RefundConfirmResultVO(
        refundId: mapValueOfType<int>(json, r'refundId'),
        refundNo: mapValueOfType<String>(json, r'refundNo'),
        orderNo: mapValueOfType<String>(json, r'orderNo'),
        refundStatus: mapValueOfType<String>(json, r'refundStatus'),
        refundStatusText: mapValueOfType<String>(json, r'refundStatusText'),
        orderStatus: mapValueOfType<int>(json, r'orderStatus'),
        orderStatusText: mapValueOfType<String>(json, r'orderStatusText'),
        refundAmount: json[r'refundAmount'] == null
            ? null
            : num.parse(json[r'refundAmount'].toString()),
        paymentRefundId: mapValueOfType<String>(json, r'paymentRefundId'),
        confirmTime: mapValueOfType<String>(json, r'confirmTime'),
        confirmRemark: mapValueOfType<String>(json, r'confirmRemark'),
        result: mapValueOfType<String>(json, r'result'),
        message: mapValueOfType<String>(json, r'message'),
      );
    }
    return null;
  }

  static List<RefundConfirmResultVO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RefundConfirmResultVO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RefundConfirmResultVO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RefundConfirmResultVO> mapFromJson(dynamic json) {
    final map = <String, RefundConfirmResultVO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RefundConfirmResultVO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RefundConfirmResultVO-objects as value to a dart map
  static Map<String, List<RefundConfirmResultVO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<RefundConfirmResultVO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RefundConfirmResultVO.listFromJson(
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
