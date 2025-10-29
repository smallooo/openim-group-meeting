import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_order_model.freezed.dart';
part 'review_order_model.g.dart';

@freezed
class ApproveRefundResponse with _$ApproveRefundResponse {
  const factory ApproveRefundResponse({
    @Default(0) int code,
    @Default('') String message,
    @Default(false) bool ok,
    @JsonKey(fromJson: _approveDataFromJson) ApproveRefundData? data,
  }) = _ApproveRefundResponse;

  factory ApproveRefundResponse.fromJson(Map<String, dynamic> json) =>
      _$ApproveRefundResponseFromJson(json);
}

ApproveRefundData? _approveDataFromJson(dynamic json) {
  if (json == null || json == '' || json is String) return null;
  if (json is Map<String, dynamic>) return ApproveRefundData.fromJson(json);
  return null;
}

@freezed
class ApproveRefundData with _$ApproveRefundData {
  const factory ApproveRefundData({
    @Default('') String id,
    @Default('') String refundNo,
    @Default('') String orderId,
    @Default('') String orderNo,
    @Default('') String refundType,
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
  }) = _ApproveRefundData;

  factory ApproveRefundData.fromJson(Map<String, dynamic> json) =>
      _$ApproveRefundDataFromJson(json);
}
