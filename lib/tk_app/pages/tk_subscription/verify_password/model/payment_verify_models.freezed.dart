// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_verify_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentVerifyRequest _$PaymentVerifyRequestFromJson(Map<String, dynamic> json) {
  return _PaymentVerifyRequest.fromJson(json);
}

/// @nodoc
mixin _$PaymentVerifyRequest {
  @JsonKey(name: 'paymentPassword')
  String get paymentPassword => throw _privateConstructorUsedError;
  @JsonKey(name: 'walletOrderNo')
  String get walletOrderNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount')
  double get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'currencyId')
  int get currencyId => throw _privateConstructorUsedError;

  /// Serializes this PaymentVerifyRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentVerifyRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentVerifyRequestCopyWith<PaymentVerifyRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentVerifyRequestCopyWith<$Res> {
  factory $PaymentVerifyRequestCopyWith(PaymentVerifyRequest value,
          $Res Function(PaymentVerifyRequest) then) =
      _$PaymentVerifyRequestCopyWithImpl<$Res, PaymentVerifyRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'paymentPassword') String paymentPassword,
      @JsonKey(name: 'walletOrderNo') String walletOrderNo,
      @JsonKey(name: 'amount') double amount,
      @JsonKey(name: 'currencyId') int currencyId});
}

/// @nodoc
class _$PaymentVerifyRequestCopyWithImpl<$Res,
        $Val extends PaymentVerifyRequest>
    implements $PaymentVerifyRequestCopyWith<$Res> {
  _$PaymentVerifyRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentVerifyRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentPassword = null,
    Object? walletOrderNo = null,
    Object? amount = null,
    Object? currencyId = null,
  }) {
    return _then(_value.copyWith(
      paymentPassword: null == paymentPassword
          ? _value.paymentPassword
          : paymentPassword // ignore: cast_nullable_to_non_nullable
              as String,
      walletOrderNo: null == walletOrderNo
          ? _value.walletOrderNo
          : walletOrderNo // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currencyId: null == currencyId
          ? _value.currencyId
          : currencyId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentVerifyRequestImplCopyWith<$Res>
    implements $PaymentVerifyRequestCopyWith<$Res> {
  factory _$$PaymentVerifyRequestImplCopyWith(_$PaymentVerifyRequestImpl value,
          $Res Function(_$PaymentVerifyRequestImpl) then) =
      __$$PaymentVerifyRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'paymentPassword') String paymentPassword,
      @JsonKey(name: 'walletOrderNo') String walletOrderNo,
      @JsonKey(name: 'amount') double amount,
      @JsonKey(name: 'currencyId') int currencyId});
}

/// @nodoc
class __$$PaymentVerifyRequestImplCopyWithImpl<$Res>
    extends _$PaymentVerifyRequestCopyWithImpl<$Res, _$PaymentVerifyRequestImpl>
    implements _$$PaymentVerifyRequestImplCopyWith<$Res> {
  __$$PaymentVerifyRequestImplCopyWithImpl(_$PaymentVerifyRequestImpl _value,
      $Res Function(_$PaymentVerifyRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentVerifyRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentPassword = null,
    Object? walletOrderNo = null,
    Object? amount = null,
    Object? currencyId = null,
  }) {
    return _then(_$PaymentVerifyRequestImpl(
      paymentPassword: null == paymentPassword
          ? _value.paymentPassword
          : paymentPassword // ignore: cast_nullable_to_non_nullable
              as String,
      walletOrderNo: null == walletOrderNo
          ? _value.walletOrderNo
          : walletOrderNo // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currencyId: null == currencyId
          ? _value.currencyId
          : currencyId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentVerifyRequestImpl implements _PaymentVerifyRequest {
  const _$PaymentVerifyRequestImpl(
      {@JsonKey(name: 'paymentPassword') required this.paymentPassword,
      @JsonKey(name: 'walletOrderNo') required this.walletOrderNo,
      @JsonKey(name: 'amount') required this.amount,
      @JsonKey(name: 'currencyId') this.currencyId = 7});

  factory _$PaymentVerifyRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentVerifyRequestImplFromJson(json);

  @override
  @JsonKey(name: 'paymentPassword')
  final String paymentPassword;
  @override
  @JsonKey(name: 'walletOrderNo')
  final String walletOrderNo;
  @override
  @JsonKey(name: 'amount')
  final double amount;
  @override
  @JsonKey(name: 'currencyId')
  final int currencyId;

  @override
  String toString() {
    return 'PaymentVerifyRequest(paymentPassword: $paymentPassword, walletOrderNo: $walletOrderNo, amount: $amount, currencyId: $currencyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentVerifyRequestImpl &&
            (identical(other.paymentPassword, paymentPassword) ||
                other.paymentPassword == paymentPassword) &&
            (identical(other.walletOrderNo, walletOrderNo) ||
                other.walletOrderNo == walletOrderNo) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currencyId, currencyId) ||
                other.currencyId == currencyId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, paymentPassword, walletOrderNo, amount, currencyId);

  /// Create a copy of PaymentVerifyRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentVerifyRequestImplCopyWith<_$PaymentVerifyRequestImpl>
      get copyWith =>
          __$$PaymentVerifyRequestImplCopyWithImpl<_$PaymentVerifyRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentVerifyRequestImplToJson(
      this,
    );
  }
}

abstract class _PaymentVerifyRequest implements PaymentVerifyRequest {
  const factory _PaymentVerifyRequest(
      {@JsonKey(name: 'paymentPassword') required final String paymentPassword,
      @JsonKey(name: 'walletOrderNo') required final String walletOrderNo,
      @JsonKey(name: 'amount') required final double amount,
      @JsonKey(name: 'currencyId')
      final int currencyId}) = _$PaymentVerifyRequestImpl;

  factory _PaymentVerifyRequest.fromJson(Map<String, dynamic> json) =
      _$PaymentVerifyRequestImpl.fromJson;

  @override
  @JsonKey(name: 'paymentPassword')
  String get paymentPassword;
  @override
  @JsonKey(name: 'walletOrderNo')
  String get walletOrderNo;
  @override
  @JsonKey(name: 'amount')
  double get amount;
  @override
  @JsonKey(name: 'currencyId')
  int get currencyId;

  /// Create a copy of PaymentVerifyRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentVerifyRequestImplCopyWith<_$PaymentVerifyRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PaymentVerifyData _$PaymentVerifyDataFromJson(Map<String, dynamic> json) {
  return _PaymentVerifyData.fromJson(json);
}

/// @nodoc
mixin _$PaymentVerifyData {
  @JsonKey(name: 'success')
  bool get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'errorCode')
  String get errorCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'errorMessage')
  String get errorMessage => throw _privateConstructorUsedError;
  @JsonKey(name: 'partnerOrderNo')
  String get partnerOrderNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'walletOrderNo')
  String get walletOrderNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount')
  double get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'currencyId')
  int get currencyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'paymentTime')
  String get paymentTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'createTime')
  String get createTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'userBalance')
  double get userBalance => throw _privateConstructorUsedError;

  /// Serializes this PaymentVerifyData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentVerifyData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentVerifyDataCopyWith<PaymentVerifyData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentVerifyDataCopyWith<$Res> {
  factory $PaymentVerifyDataCopyWith(
          PaymentVerifyData value, $Res Function(PaymentVerifyData) then) =
      _$PaymentVerifyDataCopyWithImpl<$Res, PaymentVerifyData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool success,
      @JsonKey(name: 'errorCode') String errorCode,
      @JsonKey(name: 'errorMessage') String errorMessage,
      @JsonKey(name: 'partnerOrderNo') String partnerOrderNo,
      @JsonKey(name: 'walletOrderNo') String walletOrderNo,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'amount') double amount,
      @JsonKey(name: 'currencyId') int currencyId,
      @JsonKey(name: 'paymentTime') String paymentTime,
      @JsonKey(name: 'createTime') String createTime,
      @JsonKey(name: 'userBalance') double userBalance});
}

/// @nodoc
class _$PaymentVerifyDataCopyWithImpl<$Res, $Val extends PaymentVerifyData>
    implements $PaymentVerifyDataCopyWith<$Res> {
  _$PaymentVerifyDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentVerifyData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? errorCode = null,
    Object? errorMessage = null,
    Object? partnerOrderNo = null,
    Object? walletOrderNo = null,
    Object? status = null,
    Object? amount = null,
    Object? currencyId = null,
    Object? paymentTime = null,
    Object? createTime = null,
    Object? userBalance = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      errorCode: null == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      partnerOrderNo: null == partnerOrderNo
          ? _value.partnerOrderNo
          : partnerOrderNo // ignore: cast_nullable_to_non_nullable
              as String,
      walletOrderNo: null == walletOrderNo
          ? _value.walletOrderNo
          : walletOrderNo // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currencyId: null == currencyId
          ? _value.currencyId
          : currencyId // ignore: cast_nullable_to_non_nullable
              as int,
      paymentTime: null == paymentTime
          ? _value.paymentTime
          : paymentTime // ignore: cast_nullable_to_non_nullable
              as String,
      createTime: null == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as String,
      userBalance: null == userBalance
          ? _value.userBalance
          : userBalance // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentVerifyDataImplCopyWith<$Res>
    implements $PaymentVerifyDataCopyWith<$Res> {
  factory _$$PaymentVerifyDataImplCopyWith(_$PaymentVerifyDataImpl value,
          $Res Function(_$PaymentVerifyDataImpl) then) =
      __$$PaymentVerifyDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool success,
      @JsonKey(name: 'errorCode') String errorCode,
      @JsonKey(name: 'errorMessage') String errorMessage,
      @JsonKey(name: 'partnerOrderNo') String partnerOrderNo,
      @JsonKey(name: 'walletOrderNo') String walletOrderNo,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'amount') double amount,
      @JsonKey(name: 'currencyId') int currencyId,
      @JsonKey(name: 'paymentTime') String paymentTime,
      @JsonKey(name: 'createTime') String createTime,
      @JsonKey(name: 'userBalance') double userBalance});
}

/// @nodoc
class __$$PaymentVerifyDataImplCopyWithImpl<$Res>
    extends _$PaymentVerifyDataCopyWithImpl<$Res, _$PaymentVerifyDataImpl>
    implements _$$PaymentVerifyDataImplCopyWith<$Res> {
  __$$PaymentVerifyDataImplCopyWithImpl(_$PaymentVerifyDataImpl _value,
      $Res Function(_$PaymentVerifyDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentVerifyData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? errorCode = null,
    Object? errorMessage = null,
    Object? partnerOrderNo = null,
    Object? walletOrderNo = null,
    Object? status = null,
    Object? amount = null,
    Object? currencyId = null,
    Object? paymentTime = null,
    Object? createTime = null,
    Object? userBalance = null,
  }) {
    return _then(_$PaymentVerifyDataImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      errorCode: null == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      partnerOrderNo: null == partnerOrderNo
          ? _value.partnerOrderNo
          : partnerOrderNo // ignore: cast_nullable_to_non_nullable
              as String,
      walletOrderNo: null == walletOrderNo
          ? _value.walletOrderNo
          : walletOrderNo // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currencyId: null == currencyId
          ? _value.currencyId
          : currencyId // ignore: cast_nullable_to_non_nullable
              as int,
      paymentTime: null == paymentTime
          ? _value.paymentTime
          : paymentTime // ignore: cast_nullable_to_non_nullable
              as String,
      createTime: null == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as String,
      userBalance: null == userBalance
          ? _value.userBalance
          : userBalance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentVerifyDataImpl implements _PaymentVerifyData {
  const _$PaymentVerifyDataImpl(
      {@JsonKey(name: 'success') required this.success,
      @JsonKey(name: 'errorCode') required this.errorCode,
      @JsonKey(name: 'errorMessage') required this.errorMessage,
      @JsonKey(name: 'partnerOrderNo') required this.partnerOrderNo,
      @JsonKey(name: 'walletOrderNo') required this.walletOrderNo,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'amount') required this.amount,
      @JsonKey(name: 'currencyId') required this.currencyId,
      @JsonKey(name: 'paymentTime') required this.paymentTime,
      @JsonKey(name: 'createTime') required this.createTime,
      @JsonKey(name: 'userBalance') required this.userBalance});

  factory _$PaymentVerifyDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentVerifyDataImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool success;
  @override
  @JsonKey(name: 'errorCode')
  final String errorCode;
  @override
  @JsonKey(name: 'errorMessage')
  final String errorMessage;
  @override
  @JsonKey(name: 'partnerOrderNo')
  final String partnerOrderNo;
  @override
  @JsonKey(name: 'walletOrderNo')
  final String walletOrderNo;
  @override
  @JsonKey(name: 'status')
  final String status;
  @override
  @JsonKey(name: 'amount')
  final double amount;
  @override
  @JsonKey(name: 'currencyId')
  final int currencyId;
  @override
  @JsonKey(name: 'paymentTime')
  final String paymentTime;
  @override
  @JsonKey(name: 'createTime')
  final String createTime;
  @override
  @JsonKey(name: 'userBalance')
  final double userBalance;

  @override
  String toString() {
    return 'PaymentVerifyData(success: $success, errorCode: $errorCode, errorMessage: $errorMessage, partnerOrderNo: $partnerOrderNo, walletOrderNo: $walletOrderNo, status: $status, amount: $amount, currencyId: $currencyId, paymentTime: $paymentTime, createTime: $createTime, userBalance: $userBalance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentVerifyDataImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.partnerOrderNo, partnerOrderNo) ||
                other.partnerOrderNo == partnerOrderNo) &&
            (identical(other.walletOrderNo, walletOrderNo) ||
                other.walletOrderNo == walletOrderNo) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currencyId, currencyId) ||
                other.currencyId == currencyId) &&
            (identical(other.paymentTime, paymentTime) ||
                other.paymentTime == paymentTime) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime) &&
            (identical(other.userBalance, userBalance) ||
                other.userBalance == userBalance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      success,
      errorCode,
      errorMessage,
      partnerOrderNo,
      walletOrderNo,
      status,
      amount,
      currencyId,
      paymentTime,
      createTime,
      userBalance);

  /// Create a copy of PaymentVerifyData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentVerifyDataImplCopyWith<_$PaymentVerifyDataImpl> get copyWith =>
      __$$PaymentVerifyDataImplCopyWithImpl<_$PaymentVerifyDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentVerifyDataImplToJson(
      this,
    );
  }
}

abstract class _PaymentVerifyData implements PaymentVerifyData {
  const factory _PaymentVerifyData(
          {@JsonKey(name: 'success') required final bool success,
          @JsonKey(name: 'errorCode') required final String errorCode,
          @JsonKey(name: 'errorMessage') required final String errorMessage,
          @JsonKey(name: 'partnerOrderNo') required final String partnerOrderNo,
          @JsonKey(name: 'walletOrderNo') required final String walletOrderNo,
          @JsonKey(name: 'status') required final String status,
          @JsonKey(name: 'amount') required final double amount,
          @JsonKey(name: 'currencyId') required final int currencyId,
          @JsonKey(name: 'paymentTime') required final String paymentTime,
          @JsonKey(name: 'createTime') required final String createTime,
          @JsonKey(name: 'userBalance') required final double userBalance}) =
      _$PaymentVerifyDataImpl;

  factory _PaymentVerifyData.fromJson(Map<String, dynamic> json) =
      _$PaymentVerifyDataImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool get success;
  @override
  @JsonKey(name: 'errorCode')
  String get errorCode;
  @override
  @JsonKey(name: 'errorMessage')
  String get errorMessage;
  @override
  @JsonKey(name: 'partnerOrderNo')
  String get partnerOrderNo;
  @override
  @JsonKey(name: 'walletOrderNo')
  String get walletOrderNo;
  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(name: 'amount')
  double get amount;
  @override
  @JsonKey(name: 'currencyId')
  int get currencyId;
  @override
  @JsonKey(name: 'paymentTime')
  String get paymentTime;
  @override
  @JsonKey(name: 'createTime')
  String get createTime;
  @override
  @JsonKey(name: 'userBalance')
  double get userBalance;

  /// Create a copy of PaymentVerifyData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentVerifyDataImplCopyWith<_$PaymentVerifyDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentVerifyResponse _$PaymentVerifyResponseFromJson(
    Map<String, dynamic> json) {
  return _PaymentVerifyResponse.fromJson(json);
}

/// @nodoc
mixin _$PaymentVerifyResponse {
  @JsonKey(name: 'errCode')
  int get errCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'errMsg')
  String get errMsg => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  PaymentVerifyData? get data => throw _privateConstructorUsedError;

  /// Serializes this PaymentVerifyResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentVerifyResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentVerifyResponseCopyWith<PaymentVerifyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentVerifyResponseCopyWith<$Res> {
  factory $PaymentVerifyResponseCopyWith(PaymentVerifyResponse value,
          $Res Function(PaymentVerifyResponse) then) =
      _$PaymentVerifyResponseCopyWithImpl<$Res, PaymentVerifyResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'errCode') int errCode,
      @JsonKey(name: 'errMsg') String errMsg,
      @JsonKey(name: 'data') PaymentVerifyData? data});

  $PaymentVerifyDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$PaymentVerifyResponseCopyWithImpl<$Res,
        $Val extends PaymentVerifyResponse>
    implements $PaymentVerifyResponseCopyWith<$Res> {
  _$PaymentVerifyResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentVerifyResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errCode = null,
    Object? errMsg = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      errCode: null == errCode
          ? _value.errCode
          : errCode // ignore: cast_nullable_to_non_nullable
              as int,
      errMsg: null == errMsg
          ? _value.errMsg
          : errMsg // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaymentVerifyData?,
    ) as $Val);
  }

  /// Create a copy of PaymentVerifyResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentVerifyDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $PaymentVerifyDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaymentVerifyResponseImplCopyWith<$Res>
    implements $PaymentVerifyResponseCopyWith<$Res> {
  factory _$$PaymentVerifyResponseImplCopyWith(
          _$PaymentVerifyResponseImpl value,
          $Res Function(_$PaymentVerifyResponseImpl) then) =
      __$$PaymentVerifyResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'errCode') int errCode,
      @JsonKey(name: 'errMsg') String errMsg,
      @JsonKey(name: 'data') PaymentVerifyData? data});

  @override
  $PaymentVerifyDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$PaymentVerifyResponseImplCopyWithImpl<$Res>
    extends _$PaymentVerifyResponseCopyWithImpl<$Res,
        _$PaymentVerifyResponseImpl>
    implements _$$PaymentVerifyResponseImplCopyWith<$Res> {
  __$$PaymentVerifyResponseImplCopyWithImpl(_$PaymentVerifyResponseImpl _value,
      $Res Function(_$PaymentVerifyResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentVerifyResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errCode = null,
    Object? errMsg = null,
    Object? data = freezed,
  }) {
    return _then(_$PaymentVerifyResponseImpl(
      errCode: null == errCode
          ? _value.errCode
          : errCode // ignore: cast_nullable_to_non_nullable
              as int,
      errMsg: null == errMsg
          ? _value.errMsg
          : errMsg // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaymentVerifyData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentVerifyResponseImpl implements _PaymentVerifyResponse {
  const _$PaymentVerifyResponseImpl(
      {@JsonKey(name: 'errCode') required this.errCode,
      @JsonKey(name: 'errMsg') required this.errMsg,
      @JsonKey(name: 'data') this.data});

  factory _$PaymentVerifyResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentVerifyResponseImplFromJson(json);

  @override
  @JsonKey(name: 'errCode')
  final int errCode;
  @override
  @JsonKey(name: 'errMsg')
  final String errMsg;
  @override
  @JsonKey(name: 'data')
  final PaymentVerifyData? data;

  @override
  String toString() {
    return 'PaymentVerifyResponse(errCode: $errCode, errMsg: $errMsg, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentVerifyResponseImpl &&
            (identical(other.errCode, errCode) || other.errCode == errCode) &&
            (identical(other.errMsg, errMsg) || other.errMsg == errMsg) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, errCode, errMsg, data);

  /// Create a copy of PaymentVerifyResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentVerifyResponseImplCopyWith<_$PaymentVerifyResponseImpl>
      get copyWith => __$$PaymentVerifyResponseImplCopyWithImpl<
          _$PaymentVerifyResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentVerifyResponseImplToJson(
      this,
    );
  }
}

abstract class _PaymentVerifyResponse implements PaymentVerifyResponse {
  const factory _PaymentVerifyResponse(
          {@JsonKey(name: 'errCode') required final int errCode,
          @JsonKey(name: 'errMsg') required final String errMsg,
          @JsonKey(name: 'data') final PaymentVerifyData? data}) =
      _$PaymentVerifyResponseImpl;

  factory _PaymentVerifyResponse.fromJson(Map<String, dynamic> json) =
      _$PaymentVerifyResponseImpl.fromJson;

  @override
  @JsonKey(name: 'errCode')
  int get errCode;
  @override
  @JsonKey(name: 'errMsg')
  String get errMsg;
  @override
  @JsonKey(name: 'data')
  PaymentVerifyData? get data;

  /// Create a copy of PaymentVerifyResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentVerifyResponseImplCopyWith<_$PaymentVerifyResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
