//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RefundProcessResultVO {
  /// Returns a new [RefundProcessResultVO] instance.
  RefundProcessResultVO({
    this.success,
    this.errorCode,
    this.errorMessage,
    this.walletRefundNo,
    this.partnerRefundNo,
    this.walletOrderNo,
    this.refundAmount = 0,
    this.status,
    this.userBalance = 0,
    this.processTime,
    this.createTime,
  });

  /// 处理是否成功
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? success;

  /// 错误代码
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? errorCode;

  /// 错误信息
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? errorMessage;

  /// 钱包退款订单号
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? walletRefundNo;

  /// 支付系统退款单号
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? partnerRefundNo;

  /// 原钱包订单号
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? walletOrderNo;

  /// 退款金额(元)
  num refundAmount;

  /// 退款状态：PENDING(处理中),SUCCESS(退款成功),FAILED(退款失败)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// 用户余额
  num userBalance;

  /// 处理时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? processTime;

  /// 创建时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createTime;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RefundProcessResultVO &&
          other.success == success &&
          other.errorCode == errorCode &&
          other.errorMessage == errorMessage &&
          other.walletRefundNo == walletRefundNo &&
          other.partnerRefundNo == partnerRefundNo &&
          other.walletOrderNo == walletOrderNo &&
          other.refundAmount == refundAmount &&
          other.status == status &&
          other.userBalance == userBalance &&
          other.processTime == processTime &&
          other.createTime == createTime;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (success == null ? 0 : success!.hashCode) +
      (errorCode == null ? 0 : errorCode!.hashCode) +
      (errorMessage == null ? 0 : errorMessage!.hashCode) +
      (walletRefundNo == null ? 0 : walletRefundNo!.hashCode) +
      (partnerRefundNo == null ? 0 : partnerRefundNo!.hashCode) +
      (walletOrderNo == null ? 0 : walletOrderNo!.hashCode) +
      (refundAmount.hashCode) +
      (status == null ? 0 : status!.hashCode) +
      (userBalance.hashCode) +
      (processTime == null ? 0 : processTime!.hashCode) +
      (createTime == null ? 0 : createTime!.hashCode);

  @override
  String toString() =>
      'RefundProcessResultVO[success=$success, errorCode=$errorCode, errorMessage=$errorMessage, walletRefundNo=$walletRefundNo, partnerRefundNo=$partnerRefundNo, walletOrderNo=$walletOrderNo, refundAmount=$refundAmount, status=$status, userBalance=$userBalance, processTime=$processTime, createTime=$createTime]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.success != null) {
      json[r'success'] = this.success;
    } else {
      json[r'success'] = null;
    }
    if (this.errorCode != null) {
      json[r'errorCode'] = this.errorCode;
    } else {
      json[r'errorCode'] = null;
    }
    if (this.errorMessage != null) {
      json[r'errorMessage'] = this.errorMessage;
    } else {
      json[r'errorMessage'] = null;
    }
    if (this.walletRefundNo != null) {
      json[r'walletRefundNo'] = this.walletRefundNo;
    } else {
      json[r'walletRefundNo'] = null;
    }
    if (this.partnerRefundNo != null) {
      json[r'partnerRefundNo'] = this.partnerRefundNo;
    } else {
      json[r'partnerRefundNo'] = null;
    }
    if (this.walletOrderNo != null) {
      json[r'walletOrderNo'] = this.walletOrderNo;
    } else {
      json[r'walletOrderNo'] = null;
    }
    json[r'refundAmount'] = this.refundAmount;
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    json[r'userBalance'] = this.userBalance;
    if (this.processTime != null) {
      json[r'processTime'] = this.processTime!.toUtc().toIso8601String();
    } else {
      json[r'processTime'] = null;
    }
    if (this.createTime != null) {
      json[r'createTime'] = this.createTime!.toUtc().toIso8601String();
    } else {
      json[r'createTime'] = null;
    }
    return json;
  }

  /// Returns a new [RefundProcessResultVO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RefundProcessResultVO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "RefundProcessResultVO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "RefundProcessResultVO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RefundProcessResultVO(
        success: mapValueOfType<bool>(json, r'success'),
        errorCode: mapValueOfType<String>(json, r'errorCode'),
        errorMessage: mapValueOfType<String>(json, r'errorMessage'),
        walletRefundNo: mapValueOfType<String>(json, r'walletRefundNo'),
        partnerRefundNo: mapValueOfType<String>(json, r'partnerRefundNo'),
        walletOrderNo: mapValueOfType<String>(json, r'walletOrderNo'),
        refundAmount: json[r'refundAmount'] == null
            ? 0
            : num.parse(json[r'refundAmount'].toString()),
        status: mapValueOfType<String>(json, r'status'),
        userBalance: json[r'userBalance'] == null
            ? 0
            : num.parse(json[r'userBalance'].toString()),
        processTime: mapDateTime(json, r'processTime', ''),
        createTime: mapDateTime(json, r'createTime', ''),
      );
    }
    return null;
  }

  static List<RefundProcessResultVO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RefundProcessResultVO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RefundProcessResultVO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RefundProcessResultVO> mapFromJson(dynamic json) {
    final map = <String, RefundProcessResultVO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RefundProcessResultVO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RefundProcessResultVO-objects as value to a dart map
  static Map<String, List<RefundProcessResultVO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<RefundProcessResultVO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RefundProcessResultVO.listFromJson(
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
