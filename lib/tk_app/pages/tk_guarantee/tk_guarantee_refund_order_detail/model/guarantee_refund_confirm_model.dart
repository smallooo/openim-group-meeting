import 'package:freezed_annotation/freezed_annotation.dart';

part 'guarantee_refund_confirm_model.freezed.dart';
part 'guarantee_refund_confirm_model.g.dart';

/// 确认退款请求参数
@freezed
class ConfirmRefundRequest with _$ConfirmRefundRequest {
  const factory ConfirmRefundRequest({
    required String refundNo,
    required int sellerId,
    @Default('商家确认退款，已向用户转账') String confirmRemark,
    required double refundAmount,
    @Default('原路退回') String refundMethod,
  }) = _ConfirmRefundRequest;

  factory ConfirmRefundRequest.fromJson(Map<String, dynamic> json) =>
      _$ConfirmRefundRequestFromJson(json);
}

/// 确认退款响应
@freezed
class ConfirmRefundResponse with _$ConfirmRefundResponse {
  const factory ConfirmRefundResponse({
    @Default(0) int code,
    @Default('') String message,
    @Default(false) bool ok,
    @JsonKey(fromJson: _confirmDataFromJson) ConfirmRefundData? data,
  }) = _ConfirmRefundResponse;

  factory ConfirmRefundResponse.fromJson(Map<String, dynamic> json) =>
      _$ConfirmRefundResponseFromJson(json);
}

ConfirmRefundData? _confirmDataFromJson(dynamic json) {
  if (json == null || json == '' || json is String) return null;
  if (json is Map<String, dynamic>) return ConfirmRefundData.fromJson(json);
  return null;
}

/// 确认退款数据
@freezed
class ConfirmRefundData with _$ConfirmRefundData {
  const factory ConfirmRefundData({
    @Default('') String refundId,
    @Default('') String refundNo,
    @Default('') String orderNo,
    @Default('') String refundStatus,
    @Default('') String refundStatusText,
    @Default(0) int orderStatus,
    @Default('') String orderStatusText,
    @Default(0.0) double refundAmount,
    @Default('') String paymentRefundId,
    @Default('') String confirmTime,
    @Default('') String confirmRemark,
    @Default('') String result,
    @Default('') String message,
    @Default('') String thirdPartyRefundNo,
  }) = _ConfirmRefundData;

  factory ConfirmRefundData.fromJson(Map<String, dynamic> json) =>
      _$ConfirmRefundDataFromJson(json);
}

