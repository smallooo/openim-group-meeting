//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderCreateVO {
  /// Returns a new [OrderCreateVO] instance.
  OrderCreateVO({
    this.orderId,
    this.orderNo,
    this.totalAmount,
    this.payAmount,
    this.payType,
    this.paymentMethod,
    this.orderStatus,
    this.orderStatusText,
    this.createdAt,
  });

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

  /// 订单总金额
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? totalAmount;

  /// 实付金额
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? payAmount;

  /// 支付方式：1-支付宝，2-微信，3-数字货币
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? payType;

  /// 支付方法:USDT->USDT;BTC->比特币;ETH->以太坊
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? paymentMethod;

  /// 订单状态：1-待付款,2-已取消,3-待发货,4-待收货,5-已完成,6-售后中-退货申请待审核,7-交易关闭-退货审核不通过,8-交易中-待寄送退货商品,9-售后中-退货商品待收货,10-售后中-退货待入库,11-售后中-退货已入库,12-交易关闭-完成退款
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

  /// 创建时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderCreateVO &&
          other.orderId == orderId &&
          other.orderNo == orderNo &&
          other.totalAmount == totalAmount &&
          other.payAmount == payAmount &&
          other.payType == payType &&
          other.paymentMethod == paymentMethod &&
          other.orderStatus == orderStatus &&
          other.orderStatusText == orderStatusText &&
          other.createdAt == createdAt;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (orderId == null ? 0 : orderId!.hashCode) +
      (orderNo == null ? 0 : orderNo!.hashCode) +
      (totalAmount == null ? 0 : totalAmount!.hashCode) +
      (payAmount == null ? 0 : payAmount!.hashCode) +
      (payType == null ? 0 : payType!.hashCode) +
      (paymentMethod == null ? 0 : paymentMethod!.hashCode) +
      (orderStatus == null ? 0 : orderStatus!.hashCode) +
      (orderStatusText == null ? 0 : orderStatusText!.hashCode) +
      (createdAt == null ? 0 : createdAt!.hashCode);

  @override
  String toString() =>
      'OrderCreateVO[orderId=$orderId, orderNo=$orderNo, totalAmount=$totalAmount, payAmount=$payAmount, payType=$payType, paymentMethod=$paymentMethod, orderStatus=$orderStatus, orderStatusText=$orderStatusText, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.totalAmount != null) {
      json[r'totalAmount'] = this.totalAmount;
    } else {
      json[r'totalAmount'] = null;
    }
    if (this.payAmount != null) {
      json[r'payAmount'] = this.payAmount;
    } else {
      json[r'payAmount'] = null;
    }
    if (this.payType != null) {
      json[r'payType'] = this.payType;
    } else {
      json[r'payType'] = null;
    }
    if (this.paymentMethod != null) {
      json[r'paymentMethod'] = this.paymentMethod;
    } else {
      json[r'paymentMethod'] = null;
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
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    return json;
  }

  /// Returns a new [OrderCreateVO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderCreateVO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "OrderCreateVO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "OrderCreateVO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrderCreateVO(
        orderId: mapValueOfType<int>(json, r'orderId'),
        orderNo: mapValueOfType<String>(json, r'orderNo'),
        totalAmount: json[r'totalAmount'] == null
            ? null
            : num.parse(json[r'totalAmount'].toString()),
        payAmount: json[r'payAmount'] == null
            ? null
            : num.parse(json[r'payAmount'].toString()),
        payType: mapValueOfType<int>(json, r'payType'),
        paymentMethod: mapValueOfType<String>(json, r'paymentMethod'),
        orderStatus: mapValueOfType<int>(json, r'orderStatus'),
        orderStatusText: mapValueOfType<String>(json, r'orderStatusText'),
        createdAt: mapValueOfType<String>(json, r'createdAt'),
      );
    }
    return null;
  }

  static List<OrderCreateVO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <OrderCreateVO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderCreateVO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderCreateVO> mapFromJson(dynamic json) {
    final map = <String, OrderCreateVO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderCreateVO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderCreateVO-objects as value to a dart map
  static Map<String, List<OrderCreateVO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<OrderCreateVO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrderCreateVO.listFromJson(
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
