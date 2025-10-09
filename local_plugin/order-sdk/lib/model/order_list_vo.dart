//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderListVO {
  /// Returns a new [OrderListVO] instance.
  OrderListVO({
    this.orderId,
    this.orderNo,
    this.sellerName,
    this.totalAmount,
    this.payAmount,
    this.orderStatus,
    this.orderStatusText,
    this.productName,
    this.productPic,
    this.productCount,
    this.createdAt,
    this.payTime,
    this.deliveryTime,
    this.receiveTime,
    this.cancelTime,
    this.updatedAt,
    this.buyerName,
    this.buyerAvatar,
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

  /// 卖家名称
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sellerName;

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

  /// 商品名称（主要商品）
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? productName;

  /// 商品图片（主要商品）
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? productPic;

  /// 商品数量
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? productCount;

  /// 创建时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  /// 支付时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? payTime;

  /// 发货时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? deliveryTime;

  /// 收货时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? receiveTime;

  /// 取消时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cancelTime;

  /// 更新时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedAt;

  /// 买家姓名
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? buyerName;

  /// 买家头像
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? buyerAvatar;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderListVO &&
          other.orderId == orderId &&
          other.orderNo == orderNo &&
          other.sellerName == sellerName &&
          other.totalAmount == totalAmount &&
          other.payAmount == payAmount &&
          other.orderStatus == orderStatus &&
          other.orderStatusText == orderStatusText &&
          other.productName == productName &&
          other.productPic == productPic &&
          other.productCount == productCount &&
          other.createdAt == createdAt &&
          other.payTime == payTime &&
          other.deliveryTime == deliveryTime &&
          other.receiveTime == receiveTime &&
          other.cancelTime == cancelTime &&
          other.updatedAt == updatedAt &&
          other.buyerName == buyerName &&
          other.buyerAvatar == buyerAvatar;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (orderId == null ? 0 : orderId!.hashCode) +
      (orderNo == null ? 0 : orderNo!.hashCode) +
      (sellerName == null ? 0 : sellerName!.hashCode) +
      (totalAmount == null ? 0 : totalAmount!.hashCode) +
      (payAmount == null ? 0 : payAmount!.hashCode) +
      (orderStatus == null ? 0 : orderStatus!.hashCode) +
      (orderStatusText == null ? 0 : orderStatusText!.hashCode) +
      (productName == null ? 0 : productName!.hashCode) +
      (productPic == null ? 0 : productPic!.hashCode) +
      (productCount == null ? 0 : productCount!.hashCode) +
      (createdAt == null ? 0 : createdAt!.hashCode) +
      (payTime == null ? 0 : payTime!.hashCode) +
      (deliveryTime == null ? 0 : deliveryTime!.hashCode) +
      (receiveTime == null ? 0 : receiveTime!.hashCode) +
      (cancelTime == null ? 0 : cancelTime!.hashCode) +
      (updatedAt == null ? 0 : updatedAt!.hashCode) +
      (buyerName == null ? 0 : buyerName!.hashCode) +
      (buyerAvatar == null ? 0 : buyerAvatar!.hashCode);

  @override
  String toString() =>
      'OrderListVO[orderId=$orderId, orderNo=$orderNo, sellerName=$sellerName, totalAmount=$totalAmount, payAmount=$payAmount, orderStatus=$orderStatus, orderStatusText=$orderStatusText, productName=$productName, productPic=$productPic, productCount=$productCount, createdAt=$createdAt, payTime=$payTime, deliveryTime=$deliveryTime, receiveTime=$receiveTime, cancelTime=$cancelTime, updatedAt=$updatedAt, buyerName=$buyerName, buyerAvatar=$buyerAvatar]';

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
    if (this.sellerName != null) {
      json[r'sellerName'] = this.sellerName;
    } else {
      json[r'sellerName'] = null;
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
    if (this.productName != null) {
      json[r'productName'] = this.productName;
    } else {
      json[r'productName'] = null;
    }
    if (this.productPic != null) {
      json[r'productPic'] = this.productPic;
    } else {
      json[r'productPic'] = null;
    }
    if (this.productCount != null) {
      json[r'productCount'] = this.productCount;
    } else {
      json[r'productCount'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.payTime != null) {
      json[r'payTime'] = this.payTime;
    } else {
      json[r'payTime'] = null;
    }
    if (this.deliveryTime != null) {
      json[r'deliveryTime'] = this.deliveryTime;
    } else {
      json[r'deliveryTime'] = null;
    }
    if (this.receiveTime != null) {
      json[r'receiveTime'] = this.receiveTime;
    } else {
      json[r'receiveTime'] = null;
    }
    if (this.cancelTime != null) {
      json[r'cancelTime'] = this.cancelTime;
    } else {
      json[r'cancelTime'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    if (this.buyerName != null) {
      json[r'buyerName'] = this.buyerName;
    } else {
      json[r'buyerName'] = null;
    }
    if (this.buyerAvatar != null) {
      json[r'buyerAvatar'] = this.buyerAvatar;
    } else {
      json[r'buyerAvatar'] = null;
    }
    return json;
  }

  /// Returns a new [OrderListVO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderListVO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "OrderListVO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "OrderListVO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrderListVO(
        orderId: mapValueOfType<int>(json, r'orderId'),
        orderNo: mapValueOfType<String>(json, r'orderNo'),
        sellerName: mapValueOfType<String>(json, r'sellerName'),
        totalAmount: json[r'totalAmount'] == null
            ? null
            : num.parse(json[r'totalAmount'].toString()),
        payAmount: json[r'payAmount'] == null
            ? null
            : num.parse(json[r'payAmount'].toString()),
        orderStatus: mapValueOfType<int>(json, r'orderStatus'),
        orderStatusText: mapValueOfType<String>(json, r'orderStatusText'),
        productName: mapValueOfType<String>(json, r'productName'),
        productPic: mapValueOfType<String>(json, r'productPic'),
        productCount: mapValueOfType<int>(json, r'productCount'),
        createdAt: mapValueOfType<String>(json, r'createdAt'),
        payTime: mapValueOfType<String>(json, r'payTime'),
        deliveryTime: mapValueOfType<String>(json, r'deliveryTime'),
        receiveTime: mapValueOfType<String>(json, r'receiveTime'),
        cancelTime: mapValueOfType<String>(json, r'cancelTime'),
        updatedAt: mapValueOfType<String>(json, r'updatedAt'),
        buyerName: mapValueOfType<String>(json, r'buyerName'),
        buyerAvatar: mapValueOfType<String>(json, r'buyerAvatar'),
      );
    }
    return null;
  }

  static List<OrderListVO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <OrderListVO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderListVO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderListVO> mapFromJson(dynamic json) {
    final map = <String, OrderListVO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderListVO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderListVO-objects as value to a dart map
  static Map<String, List<OrderListVO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<OrderListVO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrderListVO.listFromJson(
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
