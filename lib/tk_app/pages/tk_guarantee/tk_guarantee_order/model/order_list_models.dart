import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_list_models.freezed.dart';
part 'order_list_models.g.dart';

// 订单项数据
@freezed
class OrderRecord with _$OrderRecord {
  const factory OrderRecord({
    required String orderId,
    required String orderNo,
    @Default("") String sellerName,
    required double totalAmount,
    required double payAmount,
    required int orderStatus,
    required String orderStatusText,
    required String productName,
    @Default("https://example.com/image.jpg") String productPic,
    @Default(1) int productCount,
    required String createdAt,
    @Default("") String payTime,
    @Default("") String deliveryTime,
    @Default("") String receiveTime,
    @Default("") String cancelTime,
    required String updatedAt,
    @Default("") String buyerName,
    @Default("") String buyerAvatar,
  }) = _OrderRecord;

  factory OrderRecord.fromJson(Map<String, dynamic> json) => _$OrderRecordFromJson(json);
}

// 分页数据
@freezed
class OrderListData with _$OrderListData {
  const factory OrderListData({
    required List<OrderRecord> records,
    required String total,
    required String size,
    required String current,
    required String pages,
    required bool hasNext,
    required bool hasPrevious,
    required bool isEmpty,
    required bool isFirst,
    required bool isLast,
  }) = _OrderListData;

  factory OrderListData.fromJson(Map<String, dynamic> json) => _$OrderListDataFromJson(json);
}

// 订单列表响应
@freezed
class OrderListResponse with _$OrderListResponse {
  const factory OrderListResponse({
    required int errCode,
    required String errMsg,
    required OrderListData data,
  }) = _OrderListResponse;

  factory OrderListResponse.fromJson(Map<String, dynamic> json) => _$OrderListResponseFromJson(json);
}

// 订单状态枚举
enum OrderStatus {
  @JsonValue(1)
  pendingPayment(1, '待付款'),
  @JsonValue(2)
  pendingShipment(2, '待发货'),
  @JsonValue(3)
  shipped(3, '已发货'),
  @JsonValue(4)
  completed(4, '已完成'),
  @JsonValue(5)
  cancelled(5, '已取消'),
  @JsonValue(6)
  refunded(6, '已退款');

  const OrderStatus(this.value, this.text);
  final int value;
  final String text;

  static OrderStatus fromValue(int value) {
    return OrderStatus.values.firstWhere(
      (status) => status.value == value,
      orElse: () => OrderStatus.pendingPayment,
    );
  }
}

// 订单状态筛选枚举
enum OrderStatusFilter {
  all('全部'),
  inProgress('进行中'),
  pendingPay('待付款'),
  pendingShip('待发货'),
  completed('已完成'),
  afterSales('售后');

  const OrderStatusFilter(this.text);
  final String text;

  // 获取对应的订单状态值列表
  List<int>? get statusValues {
    switch (this) {
      case OrderStatusFilter.all:
        return null; // 全部不需要筛选
      case OrderStatusFilter.inProgress:
        return [2, 3]; // 待发货、已发货
      case OrderStatusFilter.pendingPay:
        return [1]; // 待付款
      case OrderStatusFilter.pendingShip:
        return [2]; // 待发货
      case OrderStatusFilter.completed:
        return [4]; // 已完成
      case OrderStatusFilter.afterSales:
        return [6]; // 售后
    }
  }
}
