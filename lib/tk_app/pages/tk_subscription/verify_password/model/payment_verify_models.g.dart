// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_verify_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentVerifyRequestImpl _$$PaymentVerifyRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentVerifyRequestImpl(
      paymentPassword: json['paymentPassword'] as String,
      walletOrderNo: json['walletOrderNo'] as String,
      amount: (json['amount'] as num).toDouble(),
      currencyId: (json['currencyId'] as num?)?.toInt() ?? 7,
    );

Map<String, dynamic> _$$PaymentVerifyRequestImplToJson(
        _$PaymentVerifyRequestImpl instance) =>
    <String, dynamic>{
      'paymentPassword': instance.paymentPassword,
      'walletOrderNo': instance.walletOrderNo,
      'amount': instance.amount,
      'currencyId': instance.currencyId,
    };

_$PaymentVerifyDataImpl _$$PaymentVerifyDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentVerifyDataImpl(
      success: json['success'] as bool,
      errorCode: json['errorCode'] as String,
      errorMessage: json['errorMessage'] as String,
      partnerOrderNo: json['partnerOrderNo'] as String,
      walletOrderNo: json['walletOrderNo'] as String,
      status: json['status'] as String,
      amount: (json['amount'] as num).toDouble(),
      currencyId: (json['currencyId'] as num).toInt(),
      paymentTime: json['paymentTime'] as String,
      createTime: json['createTime'] as String,
      userBalance: (json['userBalance'] as num).toDouble(),
    );

Map<String, dynamic> _$$PaymentVerifyDataImplToJson(
        _$PaymentVerifyDataImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
      'partnerOrderNo': instance.partnerOrderNo,
      'walletOrderNo': instance.walletOrderNo,
      'status': instance.status,
      'amount': instance.amount,
      'currencyId': instance.currencyId,
      'paymentTime': instance.paymentTime,
      'createTime': instance.createTime,
      'userBalance': instance.userBalance,
    };

_$PaymentVerifyResponseImpl _$$PaymentVerifyResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentVerifyResponseImpl(
      errCode: (json['errCode'] as num).toInt(),
      errMsg: json['errMsg'] as String,
      data: json['data'] == null
          ? null
          : PaymentVerifyData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PaymentVerifyResponseImplToJson(
        _$PaymentVerifyResponseImpl instance) =>
    <String, dynamic>{
      'errCode': instance.errCode,
      'errMsg': instance.errMsg,
      'data': instance.data,
    };
