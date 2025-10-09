//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderDetailVO {
  /// Returns a new [OrderDetailVO] instance.
  OrderDetailVO({
    this.orderId,
    this.orderNo,
    this.memberId,
    this.sellerId,
    this.sellerName,
    this.orderType,
    this.orderStatus,
    this.orderStatusText,
    this.totalAmount,
    this.payAmount,
    this.shippingFee,
    this.discountAmount,
    this.payType,
    this.paymentMethod,
    this.payTime,
    this.deliveryTime,
    this.receiveTime,
    this.cancelTime,
    this.cancelReason,
    this.remark,
    this.deliveryDays,
    this.guaranteeType,
    this.productType,
    this.createdAt,
    this.updatedAt,
    this.orderItems = const [],
    this.payment,
    this.refundApplication,
    this.conversationId,
    this.buyerInfo,
    this.sellerInfo,
    this.customerServiceInfo,
    this.statusTimeline = const [],
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

  /// 会员ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? memberId;

  /// 卖家ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sellerId;

  /// 卖家名称
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sellerName;

  /// 订单类型：B2C->B2C订单;C2C->C2C订单
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? orderType;

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

  /// 运费
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? shippingFee;

  /// 优惠金额
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? discountAmount;

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

  /// 取消原因
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cancelReason;

  /// 订单备注
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? remark;

  /// 预计交付天数
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? deliveryDays;

  /// 担保类型：none,escrow
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? guaranteeType;

  /// 商品类型：virtual,physical
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? productType;

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

  /// 订单商品列表
  List<OrderItemVO> orderItems;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PaymentVO? payment;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RefundApplicationVO? refundApplication;

  /// 对话ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? conversationId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  BuyerInfoVO? buyerInfo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SellerInfoVO? sellerInfo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CustomerServiceInfoVO? customerServiceInfo;

  /// 订单状态时间线
  List<OrderStatusTimelineVO> statusTimeline;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderDetailVO &&
          other.orderId == orderId &&
          other.orderNo == orderNo &&
          other.memberId == memberId &&
          other.sellerId == sellerId &&
          other.sellerName == sellerName &&
          other.orderType == orderType &&
          other.orderStatus == orderStatus &&
          other.orderStatusText == orderStatusText &&
          other.totalAmount == totalAmount &&
          other.payAmount == payAmount &&
          other.shippingFee == shippingFee &&
          other.discountAmount == discountAmount &&
          other.payType == payType &&
          other.paymentMethod == paymentMethod &&
          other.payTime == payTime &&
          other.deliveryTime == deliveryTime &&
          other.receiveTime == receiveTime &&
          other.cancelTime == cancelTime &&
          other.cancelReason == cancelReason &&
          other.remark == remark &&
          other.deliveryDays == deliveryDays &&
          other.guaranteeType == guaranteeType &&
          other.productType == productType &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.orderItems == orderItems &&
          other.payment == payment &&
          other.refundApplication == refundApplication &&
          other.conversationId == conversationId &&
          other.buyerInfo == buyerInfo &&
          other.sellerInfo == sellerInfo &&
          other.customerServiceInfo == customerServiceInfo &&
          other.statusTimeline == statusTimeline;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (orderId == null ? 0 : orderId!.hashCode) +
      (orderNo == null ? 0 : orderNo!.hashCode) +
      (memberId == null ? 0 : memberId!.hashCode) +
      (sellerId == null ? 0 : sellerId!.hashCode) +
      (sellerName == null ? 0 : sellerName!.hashCode) +
      (orderType == null ? 0 : orderType!.hashCode) +
      (orderStatus == null ? 0 : orderStatus!.hashCode) +
      (orderStatusText == null ? 0 : orderStatusText!.hashCode) +
      (totalAmount == null ? 0 : totalAmount!.hashCode) +
      (payAmount == null ? 0 : payAmount!.hashCode) +
      (shippingFee == null ? 0 : shippingFee!.hashCode) +
      (discountAmount == null ? 0 : discountAmount!.hashCode) +
      (payType == null ? 0 : payType!.hashCode) +
      (paymentMethod == null ? 0 : paymentMethod!.hashCode) +
      (payTime == null ? 0 : payTime!.hashCode) +
      (deliveryTime == null ? 0 : deliveryTime!.hashCode) +
      (receiveTime == null ? 0 : receiveTime!.hashCode) +
      (cancelTime == null ? 0 : cancelTime!.hashCode) +
      (cancelReason == null ? 0 : cancelReason!.hashCode) +
      (remark == null ? 0 : remark!.hashCode) +
      (deliveryDays == null ? 0 : deliveryDays!.hashCode) +
      (guaranteeType == null ? 0 : guaranteeType!.hashCode) +
      (productType == null ? 0 : productType!.hashCode) +
      (createdAt == null ? 0 : createdAt!.hashCode) +
      (updatedAt == null ? 0 : updatedAt!.hashCode) +
      (orderItems.hashCode) +
      (payment == null ? 0 : payment!.hashCode) +
      (refundApplication == null ? 0 : refundApplication!.hashCode) +
      (conversationId == null ? 0 : conversationId!.hashCode) +
      (buyerInfo == null ? 0 : buyerInfo!.hashCode) +
      (sellerInfo == null ? 0 : sellerInfo!.hashCode) +
      (customerServiceInfo == null ? 0 : customerServiceInfo!.hashCode) +
      (statusTimeline.hashCode);

  @override
  String toString() =>
      'OrderDetailVO[orderId=$orderId, orderNo=$orderNo, memberId=$memberId, sellerId=$sellerId, sellerName=$sellerName, orderType=$orderType, orderStatus=$orderStatus, orderStatusText=$orderStatusText, totalAmount=$totalAmount, payAmount=$payAmount, shippingFee=$shippingFee, discountAmount=$discountAmount, payType=$payType, paymentMethod=$paymentMethod, payTime=$payTime, deliveryTime=$deliveryTime, receiveTime=$receiveTime, cancelTime=$cancelTime, cancelReason=$cancelReason, remark=$remark, deliveryDays=$deliveryDays, guaranteeType=$guaranteeType, productType=$productType, createdAt=$createdAt, updatedAt=$updatedAt, orderItems=$orderItems, payment=$payment, refundApplication=$refundApplication, conversationId=$conversationId, buyerInfo=$buyerInfo, sellerInfo=$sellerInfo, customerServiceInfo=$customerServiceInfo, statusTimeline=$statusTimeline]';

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
    if (this.memberId != null) {
      json[r'memberId'] = this.memberId;
    } else {
      json[r'memberId'] = null;
    }
    if (this.sellerId != null) {
      json[r'sellerId'] = this.sellerId;
    } else {
      json[r'sellerId'] = null;
    }
    if (this.sellerName != null) {
      json[r'sellerName'] = this.sellerName;
    } else {
      json[r'sellerName'] = null;
    }
    if (this.orderType != null) {
      json[r'orderType'] = this.orderType;
    } else {
      json[r'orderType'] = null;
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
    if (this.shippingFee != null) {
      json[r'shippingFee'] = this.shippingFee;
    } else {
      json[r'shippingFee'] = null;
    }
    if (this.discountAmount != null) {
      json[r'discountAmount'] = this.discountAmount;
    } else {
      json[r'discountAmount'] = null;
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
    if (this.cancelReason != null) {
      json[r'cancelReason'] = this.cancelReason;
    } else {
      json[r'cancelReason'] = null;
    }
    if (this.remark != null) {
      json[r'remark'] = this.remark;
    } else {
      json[r'remark'] = null;
    }
    if (this.deliveryDays != null) {
      json[r'deliveryDays'] = this.deliveryDays;
    } else {
      json[r'deliveryDays'] = null;
    }
    if (this.guaranteeType != null) {
      json[r'guaranteeType'] = this.guaranteeType;
    } else {
      json[r'guaranteeType'] = null;
    }
    if (this.productType != null) {
      json[r'productType'] = this.productType;
    } else {
      json[r'productType'] = null;
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
    json[r'orderItems'] = this.orderItems;
    if (this.payment != null) {
      json[r'payment'] = this.payment;
    } else {
      json[r'payment'] = null;
    }
    if (this.refundApplication != null) {
      json[r'refundApplication'] = this.refundApplication;
    } else {
      json[r'refundApplication'] = null;
    }
    if (this.conversationId != null) {
      json[r'conversationId'] = this.conversationId;
    } else {
      json[r'conversationId'] = null;
    }
    if (this.buyerInfo != null) {
      json[r'buyerInfo'] = this.buyerInfo;
    } else {
      json[r'buyerInfo'] = null;
    }
    if (this.sellerInfo != null) {
      json[r'sellerInfo'] = this.sellerInfo;
    } else {
      json[r'sellerInfo'] = null;
    }
    if (this.customerServiceInfo != null) {
      json[r'customerServiceInfo'] = this.customerServiceInfo;
    } else {
      json[r'customerServiceInfo'] = null;
    }
    json[r'statusTimeline'] = this.statusTimeline;
    return json;
  }

  /// Returns a new [OrderDetailVO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderDetailVO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "OrderDetailVO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "OrderDetailVO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrderDetailVO(
        orderId: mapValueOfType<int>(json, r'orderId'),
        orderNo: mapValueOfType<String>(json, r'orderNo'),
        memberId: mapValueOfType<int>(json, r'memberId'),
        sellerId: mapValueOfType<int>(json, r'sellerId'),
        sellerName: mapValueOfType<String>(json, r'sellerName'),
        orderType: mapValueOfType<String>(json, r'orderType'),
        orderStatus: mapValueOfType<int>(json, r'orderStatus'),
        orderStatusText: mapValueOfType<String>(json, r'orderStatusText'),
        totalAmount: json[r'totalAmount'] == null
            ? null
            : num.parse(json[r'totalAmount'].toString()),
        payAmount: json[r'payAmount'] == null
            ? null
            : num.parse(json[r'payAmount'].toString()),
        shippingFee: json[r'shippingFee'] == null
            ? null
            : num.parse(json[r'shippingFee'].toString()),
        discountAmount: json[r'discountAmount'] == null
            ? null
            : num.parse(json[r'discountAmount'].toString()),
        payType: mapValueOfType<int>(json, r'payType'),
        paymentMethod: mapValueOfType<String>(json, r'paymentMethod'),
        payTime: mapValueOfType<String>(json, r'payTime'),
        deliveryTime: mapValueOfType<String>(json, r'deliveryTime'),
        receiveTime: mapValueOfType<String>(json, r'receiveTime'),
        cancelTime: mapValueOfType<String>(json, r'cancelTime'),
        cancelReason: mapValueOfType<String>(json, r'cancelReason'),
        remark: mapValueOfType<String>(json, r'remark'),
        deliveryDays: mapValueOfType<int>(json, r'deliveryDays'),
        guaranteeType: mapValueOfType<String>(json, r'guaranteeType'),
        productType: mapValueOfType<String>(json, r'productType'),
        createdAt: mapValueOfType<String>(json, r'createdAt'),
        updatedAt: mapValueOfType<String>(json, r'updatedAt'),
        orderItems: OrderItemVO.listFromJson(json[r'orderItems']),
        payment: PaymentVO.fromJson(json[r'payment']),
        refundApplication:
            RefundApplicationVO.fromJson(json[r'refundApplication']),
        conversationId: mapValueOfType<String>(json, r'conversationId'),
        buyerInfo: BuyerInfoVO.fromJson(json[r'buyerInfo']),
        sellerInfo: SellerInfoVO.fromJson(json[r'sellerInfo']),
        customerServiceInfo:
            CustomerServiceInfoVO.fromJson(json[r'customerServiceInfo']),
        statusTimeline:
            OrderStatusTimelineVO.listFromJson(json[r'statusTimeline']),
      );
    }
    return null;
  }

  static List<OrderDetailVO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <OrderDetailVO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderDetailVO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderDetailVO> mapFromJson(dynamic json) {
    final map = <String, OrderDetailVO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderDetailVO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderDetailVO-objects as value to a dart map
  static Map<String, List<OrderDetailVO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<OrderDetailVO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrderDetailVO.listFromJson(
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
