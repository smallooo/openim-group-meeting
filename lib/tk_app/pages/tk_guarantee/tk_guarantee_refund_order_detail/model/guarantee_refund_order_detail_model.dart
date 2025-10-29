import 'package:freezed_annotation/freezed_annotation.dart';

part 'guarantee_refund_order_detail_model.freezed.dart';
part 'guarantee_refund_order_detail_model.g.dart';

@freezed
class RefundDetailResponse with _$RefundDetailResponse {
  const factory RefundDetailResponse({
    @Default(0) int code,
    @Default('') String message,
    @Default(true) bool ok,
    required RefundDetailData data,
  }) = _RefundDetailResponse;

  factory RefundDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$RefundDetailResponseFromJson(json);
}

@freezed
class RefundDetailData with _$RefundDetailData {
  const factory RefundDetailData({
    required String id,
    required String refundNo,
    required String orderId,
    required String orderNo,
    required String refundType,
    @Default(0.0) double refundAmount,
    @Default('') String refundReason,
    @Default('') String description,
    @Default('') String evidenceImages,
    @Default('') String evidenceVideos,
    @Default('') String evidenceFiles,
    @Default('') String status,
    @Default('') String statusText,
    @Default('') String reviewTime,
    @Default('') String reviewerName,
    @Default('') String reviewRemark,
    @Default('') String reviewComment,
    @Default('') String completeTime,
    @Default('') String createdAt,
    @Default('') String updatedAt,
  }) = _RefundDetailData;

  factory RefundDetailData.fromJson(Map<String, dynamic> json) =>
      _$RefundDetailDataFromJson(json);
}


@freezed
class CancelRefundResponse with _$CancelRefundResponse {
  const factory CancelRefundResponse({
    @Default(0) int code,
    @Default('') String message,
    @Default(false) bool ok,
    @JsonKey(fromJson: _cancelDataFromJson) CancelRefundData? data,
  }) = _CancelRefundResponse;

  factory CancelRefundResponse.fromJson(Map<String, dynamic> json) =>
      _$CancelRefundResponseFromJson(json);
}

CancelRefundData? _cancelDataFromJson(dynamic json) {
  if (json == null || json == '' || json is String) return null;
  if (json is Map<String, dynamic>) return CancelRefundData.fromJson(json);
  return null;
}

@freezed
class CancelRefundData with _$CancelRefundData {
  const factory CancelRefundData({
    @Default('') String result,
    @Default('') String message,
    @Default('') String refundId,
    @Default('') String refundNo,
    @Default('') String cancelTime,
    @Default('') String cancelReason,
  }) = _CancelRefundData;

  factory CancelRefundData.fromJson(Map<String, dynamic> json) =>
      _$CancelRefundDataFromJson(json);
}


