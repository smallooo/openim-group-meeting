import 'package:freezed_annotation/freezed_annotation.dart';

part 'guarantee_refund_order_model.freezed.dart';
part 'guarantee_refund_order_model.g.dart';

// 退款订单项数据
@freezed
class RefundRecord with _$RefundRecord {
  const factory RefundRecord({
    required String id,
    required String refundNo,
    required String orderId,
    required String orderNo,
    required String refundType,
    required double refundAmount,
    required String refundReason,
    @Default('') String description,
    @Default('') String evidenceImages,
    @Default('') String evidenceVideos,
    @Default('') String evidenceFiles,
    required String status,
    required String statusText,
    @Default('') String reviewTime,
    @Default('') String reviewerName,
    @Default('') String reviewRemark,
    @Default('') String reviewComment,
    @Default('') String completeTime,
    required String createdAt,
    required String updatedAt,
  }) = _RefundRecord;

  factory RefundRecord.fromJson(Map<String, dynamic> json) => _$RefundRecordFromJson(json);
}

// 分页数据
@freezed
class RefundListData with _$RefundListData {
  const factory RefundListData({
    required List<RefundRecord> records,
    required String total,
    required String size,
    required String current,
    required String pages,
    required bool hasNext,
    required bool hasPrevious,
    required bool isEmpty,
    required bool isFirst,
    required bool isLast,
  }) = _RefundListData;

  factory RefundListData.fromJson(Map<String, dynamic> json) => _$RefundListDataFromJson(json);
}

// 退款列表响应
@freezed
class RefundListResponse with _$RefundListResponse {
  const factory RefundListResponse({
    required int code,
    required String message,
    required bool ok,
    required RefundListData data,
  }) = _RefundListResponse;

  factory RefundListResponse.fromJson(Map<String, dynamic> json) => _$RefundListResponseFromJson(json);
}

