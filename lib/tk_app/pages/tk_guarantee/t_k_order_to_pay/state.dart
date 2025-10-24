import 'package:get/get.dart';
import '../../tk_guarantee/tk_guarantee_order_detail/model/order_detail_models.dart';

// 订单项信息
class OrderItemInfo {
  final String id;
  final String productId;
  final String skuId;
  final String productName;
  final String productPic;
  final String productSpecs;
  final int quantity;
  final double unitPrice;
  final double totalPrice;

  const OrderItemInfo({
    required this.id,
    required this.productId,
    required this.skuId,
    required this.productName,
    required this.productPic,
    required this.productSpecs,
    required this.quantity,
    required this.unitPrice,
    required this.totalPrice,
  });

  factory OrderItemInfo.fromJson(Map<String, dynamic> json) {
    return OrderItemInfo(
      id: json['id']?.toString() ?? '',
      productId: json['productId']?.toString() ?? '',
      skuId: json['skuId']?.toString() ?? '',
      productName: json['productName']?.toString() ?? '',
      productPic: json['productPic']?.toString() ?? '',
      productSpecs: json['productSpecs']?.toString() ?? '{}',
      quantity: json['quantity']?.toInt() ?? 1,
      unitPrice: json['unitPrice']?.toDouble() ?? 0.0,
      totalPrice: json['totalPrice']?.toDouble() ?? 0.0,
    );
  }
}

// 支付信息
class PaymentInfoData {
  final String id;
  final String paymentId;
  final double amount;
  final int payType;
  final String paymentMethod;
  final String status;
  final String statusText;
  final String transactionId;
  final String paymentUrl;
  final String qrCode;
  final String payTime;
  final String expireTime;
  final String createdAt;
  final String updatedAt;
  final String thirdPartyOrderNo;

  const PaymentInfoData({
    required this.id,
    required this.paymentId,
    required this.amount,
    required this.payType,
    required this.paymentMethod,
    required this.status,
    required this.statusText,
    required this.transactionId,
    required this.paymentUrl,
    required this.qrCode,
    required this.payTime,
    required this.expireTime,
    required this.createdAt,
    required this.updatedAt,
    required this.thirdPartyOrderNo,
  });

  factory PaymentInfoData.fromJson(Map<String, dynamic> json) {
    return PaymentInfoData(
      id: json['id']?.toString() ?? '',
      paymentId: json['paymentId']?.toString() ?? '',
      amount: json['amount']?.toDouble() ?? 0.0,
      payType: json['payType']?.toInt() ?? 1,
      paymentMethod: json['paymentMethod']?.toString() ?? '',
      status: json['status']?.toString() ?? '',
      statusText: json['statusText']?.toString() ?? '',
      transactionId: json['transactionId']?.toString() ?? '',
      paymentUrl: json['paymentUrl']?.toString() ?? '',
      qrCode: json['qrCode']?.toString() ?? '',
      payTime: json['payTime']?.toString() ?? '',
      expireTime: json['expireTime']?.toString() ?? '',
      createdAt: json['createdAt']?.toString() ?? '',
      updatedAt: json['updatedAt']?.toString() ?? '',
      thirdPartyOrderNo: json['thirdPartyOrderNo']?.toString() ?? '',
    );
  }
}

class TKOrderToPayState {
  // 加载状态
  final isLoading = false.obs;
  
  // 订单信息
  final orderDetail = Rxn<OrderDetailData>();
  final orderNo = ''.obs;
  final orderItems = <OrderItemInfo>[].obs;
  
  // 支付信息
  final paymentInfo = Rxn<PaymentInfoData>();
  
  // 显示信息
  final currency = 'CNY'.obs;
  final feeRate = 0.0.obs;
  final feeAmount = 0.0.obs;
  final totalAmount = 0.0.obs;
  
  TKOrderToPayState() {
    ///Initialize variables
  }
}
