//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderCreateDTO {
  /// Returns a new [OrderCreateDTO] instance.
  OrderCreateDTO({
    this.userOpenimUserId,
    required this.sellerId,
    this.sellerName,
    this.sellerOpenimUserId,
    this.serviceOpenimUserId,
    required this.orderType,
    required this.payType,
    required this.paymentMethod,
    this.currencyId,
    this.remark,
    this.deliveryDays,
    this.guaranteeType,
    this.productType,
    this.totalAmount,
    this.payAmount,
    this.shippingFee,
    this.discountAmount,
    this.actualPaymentAmount,
    this.priceAdjustmentId,
    this.conversationId,
    required this.customerServiceId,
    this.orderItems = const [],
    this.memberId,
  });

  /// 用户OpenIM用户ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userOpenimUserId;

  /// 卖家ID
  int sellerId;

  /// 卖家名称
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sellerName;

  /// 商家OpenIM用户ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sellerOpenimUserId;

  /// 客服OpenIM用户ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serviceOpenimUserId;

  /// 订单类型：B2C->B2C订单;C2C->C2C订单
  String orderType;

  /// 支付方式：1-支付宝，2-微信，3-数字货币
  int payType;

  /// 支付方法：alipay,wechat,crypto
  String paymentMethod;

  /// 币种ID：1-BTC,2-ETH,3-USDT,4-USDC,5-BNB,6-ADA,7-CNY,8-USD,9-EUR,10-JPY,11-HKD
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? currencyId;

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

  /// 实际支付金额
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? actualPaymentAmount;

  /// 价格调整ID，用于客服改价功能
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? priceAdjustmentId;

  /// 对话ID，用于关联客服对话
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? conversationId;

  /// 客服ID，执行改价操作的客服
  int customerServiceId;

  /// 订单项列表
  List<OrderItemDTO> orderItems;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? memberId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderCreateDTO &&
          other.userOpenimUserId == userOpenimUserId &&
          other.sellerId == sellerId &&
          other.sellerName == sellerName &&
          other.sellerOpenimUserId == sellerOpenimUserId &&
          other.serviceOpenimUserId == serviceOpenimUserId &&
          other.orderType == orderType &&
          other.payType == payType &&
          other.paymentMethod == paymentMethod &&
          other.currencyId == currencyId &&
          other.remark == remark &&
          other.deliveryDays == deliveryDays &&
          other.guaranteeType == guaranteeType &&
          other.productType == productType &&
          other.totalAmount == totalAmount &&
          other.payAmount == payAmount &&
          other.shippingFee == shippingFee &&
          other.discountAmount == discountAmount &&
          other.actualPaymentAmount == actualPaymentAmount &&
          other.priceAdjustmentId == priceAdjustmentId &&
          other.conversationId == conversationId &&
          other.customerServiceId == customerServiceId &&
          other.orderItems == orderItems &&
          other.memberId == memberId;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (userOpenimUserId == null ? 0 : userOpenimUserId!.hashCode) +
      (sellerId.hashCode) +
      (sellerName == null ? 0 : sellerName!.hashCode) +
      (sellerOpenimUserId == null ? 0 : sellerOpenimUserId!.hashCode) +
      (serviceOpenimUserId == null ? 0 : serviceOpenimUserId!.hashCode) +
      (orderType.hashCode) +
      (payType.hashCode) +
      (paymentMethod.hashCode) +
      (currencyId == null ? 0 : currencyId!.hashCode) +
      (remark == null ? 0 : remark!.hashCode) +
      (deliveryDays == null ? 0 : deliveryDays!.hashCode) +
      (guaranteeType == null ? 0 : guaranteeType!.hashCode) +
      (productType == null ? 0 : productType!.hashCode) +
      (totalAmount == null ? 0 : totalAmount!.hashCode) +
      (payAmount == null ? 0 : payAmount!.hashCode) +
      (shippingFee == null ? 0 : shippingFee!.hashCode) +
      (discountAmount == null ? 0 : discountAmount!.hashCode) +
      (actualPaymentAmount == null ? 0 : actualPaymentAmount!.hashCode) +
      (priceAdjustmentId == null ? 0 : priceAdjustmentId!.hashCode) +
      (conversationId == null ? 0 : conversationId!.hashCode) +
      (customerServiceId.hashCode) +
      (orderItems.hashCode) +
      (memberId == null ? 0 : memberId!.hashCode);

  @override
  String toString() =>
      'OrderCreateDTO[userOpenimUserId=$userOpenimUserId, sellerId=$sellerId, sellerName=$sellerName, sellerOpenimUserId=$sellerOpenimUserId, serviceOpenimUserId=$serviceOpenimUserId, orderType=$orderType, payType=$payType, paymentMethod=$paymentMethod, currencyId=$currencyId, remark=$remark, deliveryDays=$deliveryDays, guaranteeType=$guaranteeType, productType=$productType, totalAmount=$totalAmount, payAmount=$payAmount, shippingFee=$shippingFee, discountAmount=$discountAmount, actualPaymentAmount=$actualPaymentAmount, priceAdjustmentId=$priceAdjustmentId, conversationId=$conversationId, customerServiceId=$customerServiceId, orderItems=$orderItems, memberId=$memberId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.userOpenimUserId != null) {
      json[r'userOpenimUserId'] = this.userOpenimUserId;
    } else {
      json[r'userOpenimUserId'] = null;
    }
    json[r'sellerId'] = this.sellerId;
    if (this.sellerName != null) {
      json[r'sellerName'] = this.sellerName;
    } else {
      json[r'sellerName'] = null;
    }
    if (this.sellerOpenimUserId != null) {
      json[r'sellerOpenimUserId'] = this.sellerOpenimUserId;
    } else {
      json[r'sellerOpenimUserId'] = null;
    }
    if (this.serviceOpenimUserId != null) {
      json[r'serviceOpenimUserId'] = this.serviceOpenimUserId;
    } else {
      json[r'serviceOpenimUserId'] = null;
    }
    json[r'orderType'] = this.orderType;
    json[r'payType'] = this.payType;
    json[r'paymentMethod'] = this.paymentMethod;
    if (this.currencyId != null) {
      json[r'currencyId'] = this.currencyId;
    } else {
      json[r'currencyId'] = null;
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
    if (this.actualPaymentAmount != null) {
      json[r'actualPaymentAmount'] = this.actualPaymentAmount;
    } else {
      json[r'actualPaymentAmount'] = null;
    }
    if (this.priceAdjustmentId != null) {
      json[r'priceAdjustmentId'] = this.priceAdjustmentId;
    } else {
      json[r'priceAdjustmentId'] = null;
    }
    if (this.conversationId != null) {
      json[r'conversationId'] = this.conversationId;
    } else {
      json[r'conversationId'] = null;
    }
    json[r'customerServiceId'] = this.customerServiceId;
    json[r'orderItems'] = this.orderItems;
    if (this.memberId != null) {
      json[r'memberId'] = this.memberId;
    } else {
      json[r'memberId'] = null;
    }
    return json;
  }

  /// Returns a new [OrderCreateDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderCreateDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "OrderCreateDTO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "OrderCreateDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrderCreateDTO(
        userOpenimUserId: mapValueOfType<String>(json, r'userOpenimUserId'),
        sellerId: mapValueOfType<int>(json, r'sellerId')!,
        sellerName: mapValueOfType<String>(json, r'sellerName'),
        sellerOpenimUserId: mapValueOfType<String>(json, r'sellerOpenimUserId'),
        serviceOpenimUserId:
            mapValueOfType<String>(json, r'serviceOpenimUserId'),
        orderType: mapValueOfType<String>(json, r'orderType')!,
        payType: mapValueOfType<int>(json, r'payType')!,
        paymentMethod: mapValueOfType<String>(json, r'paymentMethod')!,
        currencyId: mapValueOfType<int>(json, r'currencyId'),
        remark: mapValueOfType<String>(json, r'remark'),
        deliveryDays: mapValueOfType<int>(json, r'deliveryDays'),
        guaranteeType: mapValueOfType<String>(json, r'guaranteeType'),
        productType: mapValueOfType<String>(json, r'productType'),
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
        actualPaymentAmount: json[r'actualPaymentAmount'] == null
            ? null
            : num.parse(json[r'actualPaymentAmount'].toString()),
        priceAdjustmentId: mapValueOfType<String>(json, r'priceAdjustmentId'),
        conversationId: mapValueOfType<String>(json, r'conversationId'),
        customerServiceId: mapValueOfType<int>(json, r'customerServiceId')!,
        orderItems: OrderItemDTO.listFromJson(json[r'orderItems']),
        memberId: mapValueOfType<int>(json, r'memberId'),
      );
    }
    return null;
  }

  static List<OrderCreateDTO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <OrderCreateDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderCreateDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderCreateDTO> mapFromJson(dynamic json) {
    final map = <String, OrderCreateDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderCreateDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderCreateDTO-objects as value to a dart map
  static Map<String, List<OrderCreateDTO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<OrderCreateDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrderCreateDTO.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'sellerId',
    'orderType',
    'payType',
    'paymentMethod',
    'customerServiceId',
  };
}
