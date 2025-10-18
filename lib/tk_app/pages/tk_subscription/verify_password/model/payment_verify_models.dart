import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_verify_models.freezed.dart';
part 'payment_verify_models.g.dart';

/// 支付验证请求模型
@freezed
class PaymentVerifyRequest with _$PaymentVerifyRequest {
  const factory PaymentVerifyRequest({
    @JsonKey(name: 'paymentPassword') required String paymentPassword,
    @JsonKey(name: 'walletOrderNo') required String walletOrderNo,
    @JsonKey(name: 'amount') required double amount,
    @JsonKey(name: 'currencyId') @Default(7) int currencyId,
  }) = _PaymentVerifyRequest;

  factory PaymentVerifyRequest.fromJson(Map<String, dynamic> json) =>
      _$PaymentVerifyRequestFromJson(json);
}

/// 支付验证响应数据模型
@freezed
class PaymentVerifyData with _$PaymentVerifyData {
  const factory PaymentVerifyData({
    @JsonKey(name: 'success') required bool success,
    @JsonKey(name: 'errorCode') required String errorCode,
    @JsonKey(name: 'errorMessage') required String errorMessage,
    @JsonKey(name: 'partnerOrderNo') required String partnerOrderNo,
    @JsonKey(name: 'walletOrderNo') required String walletOrderNo,
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'amount') required double amount,
    @JsonKey(name: 'currencyId') required int currencyId,
    @JsonKey(name: 'paymentTime') required String paymentTime,
    @JsonKey(name: 'createTime') required String createTime,
    @JsonKey(name: 'userBalance') required double userBalance,
  }) = _PaymentVerifyData;

  factory PaymentVerifyData.fromJson(Map<String, dynamic> json) =>
      _$PaymentVerifyDataFromJson(json);
}

/// 支付验证响应模型
@freezed
class PaymentVerifyResponse with _$PaymentVerifyResponse {
  const factory PaymentVerifyResponse({
    @JsonKey(name: 'errCode') required int errCode,
    @JsonKey(name: 'errMsg') required String errMsg,
    @JsonKey(name: 'data') PaymentVerifyData? data,
  }) = _PaymentVerifyResponse;

  factory PaymentVerifyResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentVerifyResponseFromJson(json);
}
