// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guarantee_refund_confirm_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConfirmRefundRequest _$ConfirmRefundRequestFromJson(Map<String, dynamic> json) {
  return _ConfirmRefundRequest.fromJson(json);
}

/// @nodoc
mixin _$ConfirmRefundRequest {
  String get refundNo => throw _privateConstructorUsedError;
  int get sellerId => throw _privateConstructorUsedError;
  String get confirmRemark => throw _privateConstructorUsedError;
  double get refundAmount => throw _privateConstructorUsedError;
  String get refundMethod => throw _privateConstructorUsedError;

  /// Serializes this ConfirmRefundRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConfirmRefundRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConfirmRefundRequestCopyWith<ConfirmRefundRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmRefundRequestCopyWith<$Res> {
  factory $ConfirmRefundRequestCopyWith(ConfirmRefundRequest value,
          $Res Function(ConfirmRefundRequest) then) =
      _$ConfirmRefundRequestCopyWithImpl<$Res, ConfirmRefundRequest>;
  @useResult
  $Res call(
      {String refundNo,
      int sellerId,
      String confirmRemark,
      double refundAmount,
      String refundMethod});
}

/// @nodoc
class _$ConfirmRefundRequestCopyWithImpl<$Res,
        $Val extends ConfirmRefundRequest>
    implements $ConfirmRefundRequestCopyWith<$Res> {
  _$ConfirmRefundRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConfirmRefundRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refundNo = null,
    Object? sellerId = null,
    Object? confirmRemark = null,
    Object? refundAmount = null,
    Object? refundMethod = null,
  }) {
    return _then(_value.copyWith(
      refundNo: null == refundNo
          ? _value.refundNo
          : refundNo // ignore: cast_nullable_to_non_nullable
              as String,
      sellerId: null == sellerId
          ? _value.sellerId
          : sellerId // ignore: cast_nullable_to_non_nullable
              as int,
      confirmRemark: null == confirmRemark
          ? _value.confirmRemark
          : confirmRemark // ignore: cast_nullable_to_non_nullable
              as String,
      refundAmount: null == refundAmount
          ? _value.refundAmount
          : refundAmount // ignore: cast_nullable_to_non_nullable
              as double,
      refundMethod: null == refundMethod
          ? _value.refundMethod
          : refundMethod // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConfirmRefundRequestImplCopyWith<$Res>
    implements $ConfirmRefundRequestCopyWith<$Res> {
  factory _$$ConfirmRefundRequestImplCopyWith(_$ConfirmRefundRequestImpl value,
          $Res Function(_$ConfirmRefundRequestImpl) then) =
      __$$ConfirmRefundRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String refundNo,
      int sellerId,
      String confirmRemark,
      double refundAmount,
      String refundMethod});
}

/// @nodoc
class __$$ConfirmRefundRequestImplCopyWithImpl<$Res>
    extends _$ConfirmRefundRequestCopyWithImpl<$Res, _$ConfirmRefundRequestImpl>
    implements _$$ConfirmRefundRequestImplCopyWith<$Res> {
  __$$ConfirmRefundRequestImplCopyWithImpl(_$ConfirmRefundRequestImpl _value,
      $Res Function(_$ConfirmRefundRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConfirmRefundRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refundNo = null,
    Object? sellerId = null,
    Object? confirmRemark = null,
    Object? refundAmount = null,
    Object? refundMethod = null,
  }) {
    return _then(_$ConfirmRefundRequestImpl(
      refundNo: null == refundNo
          ? _value.refundNo
          : refundNo // ignore: cast_nullable_to_non_nullable
              as String,
      sellerId: null == sellerId
          ? _value.sellerId
          : sellerId // ignore: cast_nullable_to_non_nullable
              as int,
      confirmRemark: null == confirmRemark
          ? _value.confirmRemark
          : confirmRemark // ignore: cast_nullable_to_non_nullable
              as String,
      refundAmount: null == refundAmount
          ? _value.refundAmount
          : refundAmount // ignore: cast_nullable_to_non_nullable
              as double,
      refundMethod: null == refundMethod
          ? _value.refundMethod
          : refundMethod // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConfirmRefundRequestImpl implements _ConfirmRefundRequest {
  const _$ConfirmRefundRequestImpl(
      {required this.refundNo,
      required this.sellerId,
      this.confirmRemark = '商家确认退款，已向用户转账',
      required this.refundAmount,
      this.refundMethod = '原路退回'});

  factory _$ConfirmRefundRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConfirmRefundRequestImplFromJson(json);

  @override
  final String refundNo;
  @override
  final int sellerId;
  @override
  @JsonKey()
  final String confirmRemark;
  @override
  final double refundAmount;
  @override
  @JsonKey()
  final String refundMethod;

  @override
  String toString() {
    return 'ConfirmRefundRequest(refundNo: $refundNo, sellerId: $sellerId, confirmRemark: $confirmRemark, refundAmount: $refundAmount, refundMethod: $refundMethod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmRefundRequestImpl &&
            (identical(other.refundNo, refundNo) ||
                other.refundNo == refundNo) &&
            (identical(other.sellerId, sellerId) ||
                other.sellerId == sellerId) &&
            (identical(other.confirmRemark, confirmRemark) ||
                other.confirmRemark == confirmRemark) &&
            (identical(other.refundAmount, refundAmount) ||
                other.refundAmount == refundAmount) &&
            (identical(other.refundMethod, refundMethod) ||
                other.refundMethod == refundMethod));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, refundNo, sellerId,
      confirmRemark, refundAmount, refundMethod);

  /// Create a copy of ConfirmRefundRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmRefundRequestImplCopyWith<_$ConfirmRefundRequestImpl>
      get copyWith =>
          __$$ConfirmRefundRequestImplCopyWithImpl<_$ConfirmRefundRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfirmRefundRequestImplToJson(
      this,
    );
  }
}

abstract class _ConfirmRefundRequest implements ConfirmRefundRequest {
  const factory _ConfirmRefundRequest(
      {required final String refundNo,
      required final int sellerId,
      final String confirmRemark,
      required final double refundAmount,
      final String refundMethod}) = _$ConfirmRefundRequestImpl;

  factory _ConfirmRefundRequest.fromJson(Map<String, dynamic> json) =
      _$ConfirmRefundRequestImpl.fromJson;

  @override
  String get refundNo;
  @override
  int get sellerId;
  @override
  String get confirmRemark;
  @override
  double get refundAmount;
  @override
  String get refundMethod;

  /// Create a copy of ConfirmRefundRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfirmRefundRequestImplCopyWith<_$ConfirmRefundRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConfirmRefundResponse _$ConfirmRefundResponseFromJson(
    Map<String, dynamic> json) {
  return _ConfirmRefundResponse.fromJson(json);
}

/// @nodoc
mixin _$ConfirmRefundResponse {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get ok => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _confirmDataFromJson)
  ConfirmRefundData? get data => throw _privateConstructorUsedError;

  /// Serializes this ConfirmRefundResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConfirmRefundResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConfirmRefundResponseCopyWith<ConfirmRefundResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmRefundResponseCopyWith<$Res> {
  factory $ConfirmRefundResponseCopyWith(ConfirmRefundResponse value,
          $Res Function(ConfirmRefundResponse) then) =
      _$ConfirmRefundResponseCopyWithImpl<$Res, ConfirmRefundResponse>;
  @useResult
  $Res call(
      {int code,
      String message,
      bool ok,
      @JsonKey(fromJson: _confirmDataFromJson) ConfirmRefundData? data});

  $ConfirmRefundDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ConfirmRefundResponseCopyWithImpl<$Res,
        $Val extends ConfirmRefundResponse>
    implements $ConfirmRefundResponseCopyWith<$Res> {
  _$ConfirmRefundResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConfirmRefundResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? ok = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      ok: null == ok
          ? _value.ok
          : ok // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ConfirmRefundData?,
    ) as $Val);
  }

  /// Create a copy of ConfirmRefundResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConfirmRefundDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ConfirmRefundDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConfirmRefundResponseImplCopyWith<$Res>
    implements $ConfirmRefundResponseCopyWith<$Res> {
  factory _$$ConfirmRefundResponseImplCopyWith(
          _$ConfirmRefundResponseImpl value,
          $Res Function(_$ConfirmRefundResponseImpl) then) =
      __$$ConfirmRefundResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int code,
      String message,
      bool ok,
      @JsonKey(fromJson: _confirmDataFromJson) ConfirmRefundData? data});

  @override
  $ConfirmRefundDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ConfirmRefundResponseImplCopyWithImpl<$Res>
    extends _$ConfirmRefundResponseCopyWithImpl<$Res,
        _$ConfirmRefundResponseImpl>
    implements _$$ConfirmRefundResponseImplCopyWith<$Res> {
  __$$ConfirmRefundResponseImplCopyWithImpl(_$ConfirmRefundResponseImpl _value,
      $Res Function(_$ConfirmRefundResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConfirmRefundResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? ok = null,
    Object? data = freezed,
  }) {
    return _then(_$ConfirmRefundResponseImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      ok: null == ok
          ? _value.ok
          : ok // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ConfirmRefundData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConfirmRefundResponseImpl implements _ConfirmRefundResponse {
  const _$ConfirmRefundResponseImpl(
      {this.code = 0,
      this.message = '',
      this.ok = false,
      @JsonKey(fromJson: _confirmDataFromJson) this.data});

  factory _$ConfirmRefundResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConfirmRefundResponseImplFromJson(json);

  @override
  @JsonKey()
  final int code;
  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final bool ok;
  @override
  @JsonKey(fromJson: _confirmDataFromJson)
  final ConfirmRefundData? data;

  @override
  String toString() {
    return 'ConfirmRefundResponse(code: $code, message: $message, ok: $ok, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmRefundResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.ok, ok) || other.ok == ok) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, ok, data);

  /// Create a copy of ConfirmRefundResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmRefundResponseImplCopyWith<_$ConfirmRefundResponseImpl>
      get copyWith => __$$ConfirmRefundResponseImplCopyWithImpl<
          _$ConfirmRefundResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfirmRefundResponseImplToJson(
      this,
    );
  }
}

abstract class _ConfirmRefundResponse implements ConfirmRefundResponse {
  const factory _ConfirmRefundResponse(
      {final int code,
      final String message,
      final bool ok,
      @JsonKey(fromJson: _confirmDataFromJson)
      final ConfirmRefundData? data}) = _$ConfirmRefundResponseImpl;

  factory _ConfirmRefundResponse.fromJson(Map<String, dynamic> json) =
      _$ConfirmRefundResponseImpl.fromJson;

  @override
  int get code;
  @override
  String get message;
  @override
  bool get ok;
  @override
  @JsonKey(fromJson: _confirmDataFromJson)
  ConfirmRefundData? get data;

  /// Create a copy of ConfirmRefundResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfirmRefundResponseImplCopyWith<_$ConfirmRefundResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConfirmRefundData _$ConfirmRefundDataFromJson(Map<String, dynamic> json) {
  return _ConfirmRefundData.fromJson(json);
}

/// @nodoc
mixin _$ConfirmRefundData {
  String get refundId => throw _privateConstructorUsedError;
  String get refundNo => throw _privateConstructorUsedError;
  String get orderNo => throw _privateConstructorUsedError;
  String get refundStatus => throw _privateConstructorUsedError;
  String get refundStatusText => throw _privateConstructorUsedError;
  int get orderStatus => throw _privateConstructorUsedError;
  String get orderStatusText => throw _privateConstructorUsedError;
  double get refundAmount => throw _privateConstructorUsedError;
  String get paymentRefundId => throw _privateConstructorUsedError;
  String get confirmTime => throw _privateConstructorUsedError;
  String get confirmRemark => throw _privateConstructorUsedError;
  String get result => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get thirdPartyRefundNo => throw _privateConstructorUsedError;

  /// Serializes this ConfirmRefundData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConfirmRefundData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConfirmRefundDataCopyWith<ConfirmRefundData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmRefundDataCopyWith<$Res> {
  factory $ConfirmRefundDataCopyWith(
          ConfirmRefundData value, $Res Function(ConfirmRefundData) then) =
      _$ConfirmRefundDataCopyWithImpl<$Res, ConfirmRefundData>;
  @useResult
  $Res call(
      {String refundId,
      String refundNo,
      String orderNo,
      String refundStatus,
      String refundStatusText,
      int orderStatus,
      String orderStatusText,
      double refundAmount,
      String paymentRefundId,
      String confirmTime,
      String confirmRemark,
      String result,
      String message,
      String thirdPartyRefundNo});
}

/// @nodoc
class _$ConfirmRefundDataCopyWithImpl<$Res, $Val extends ConfirmRefundData>
    implements $ConfirmRefundDataCopyWith<$Res> {
  _$ConfirmRefundDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConfirmRefundData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refundId = null,
    Object? refundNo = null,
    Object? orderNo = null,
    Object? refundStatus = null,
    Object? refundStatusText = null,
    Object? orderStatus = null,
    Object? orderStatusText = null,
    Object? refundAmount = null,
    Object? paymentRefundId = null,
    Object? confirmTime = null,
    Object? confirmRemark = null,
    Object? result = null,
    Object? message = null,
    Object? thirdPartyRefundNo = null,
  }) {
    return _then(_value.copyWith(
      refundId: null == refundId
          ? _value.refundId
          : refundId // ignore: cast_nullable_to_non_nullable
              as String,
      refundNo: null == refundNo
          ? _value.refundNo
          : refundNo // ignore: cast_nullable_to_non_nullable
              as String,
      orderNo: null == orderNo
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as String,
      refundStatus: null == refundStatus
          ? _value.refundStatus
          : refundStatus // ignore: cast_nullable_to_non_nullable
              as String,
      refundStatusText: null == refundStatusText
          ? _value.refundStatusText
          : refundStatusText // ignore: cast_nullable_to_non_nullable
              as String,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as int,
      orderStatusText: null == orderStatusText
          ? _value.orderStatusText
          : orderStatusText // ignore: cast_nullable_to_non_nullable
              as String,
      refundAmount: null == refundAmount
          ? _value.refundAmount
          : refundAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentRefundId: null == paymentRefundId
          ? _value.paymentRefundId
          : paymentRefundId // ignore: cast_nullable_to_non_nullable
              as String,
      confirmTime: null == confirmTime
          ? _value.confirmTime
          : confirmTime // ignore: cast_nullable_to_non_nullable
              as String,
      confirmRemark: null == confirmRemark
          ? _value.confirmRemark
          : confirmRemark // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      thirdPartyRefundNo: null == thirdPartyRefundNo
          ? _value.thirdPartyRefundNo
          : thirdPartyRefundNo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConfirmRefundDataImplCopyWith<$Res>
    implements $ConfirmRefundDataCopyWith<$Res> {
  factory _$$ConfirmRefundDataImplCopyWith(_$ConfirmRefundDataImpl value,
          $Res Function(_$ConfirmRefundDataImpl) then) =
      __$$ConfirmRefundDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String refundId,
      String refundNo,
      String orderNo,
      String refundStatus,
      String refundStatusText,
      int orderStatus,
      String orderStatusText,
      double refundAmount,
      String paymentRefundId,
      String confirmTime,
      String confirmRemark,
      String result,
      String message,
      String thirdPartyRefundNo});
}

/// @nodoc
class __$$ConfirmRefundDataImplCopyWithImpl<$Res>
    extends _$ConfirmRefundDataCopyWithImpl<$Res, _$ConfirmRefundDataImpl>
    implements _$$ConfirmRefundDataImplCopyWith<$Res> {
  __$$ConfirmRefundDataImplCopyWithImpl(_$ConfirmRefundDataImpl _value,
      $Res Function(_$ConfirmRefundDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConfirmRefundData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refundId = null,
    Object? refundNo = null,
    Object? orderNo = null,
    Object? refundStatus = null,
    Object? refundStatusText = null,
    Object? orderStatus = null,
    Object? orderStatusText = null,
    Object? refundAmount = null,
    Object? paymentRefundId = null,
    Object? confirmTime = null,
    Object? confirmRemark = null,
    Object? result = null,
    Object? message = null,
    Object? thirdPartyRefundNo = null,
  }) {
    return _then(_$ConfirmRefundDataImpl(
      refundId: null == refundId
          ? _value.refundId
          : refundId // ignore: cast_nullable_to_non_nullable
              as String,
      refundNo: null == refundNo
          ? _value.refundNo
          : refundNo // ignore: cast_nullable_to_non_nullable
              as String,
      orderNo: null == orderNo
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as String,
      refundStatus: null == refundStatus
          ? _value.refundStatus
          : refundStatus // ignore: cast_nullable_to_non_nullable
              as String,
      refundStatusText: null == refundStatusText
          ? _value.refundStatusText
          : refundStatusText // ignore: cast_nullable_to_non_nullable
              as String,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as int,
      orderStatusText: null == orderStatusText
          ? _value.orderStatusText
          : orderStatusText // ignore: cast_nullable_to_non_nullable
              as String,
      refundAmount: null == refundAmount
          ? _value.refundAmount
          : refundAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentRefundId: null == paymentRefundId
          ? _value.paymentRefundId
          : paymentRefundId // ignore: cast_nullable_to_non_nullable
              as String,
      confirmTime: null == confirmTime
          ? _value.confirmTime
          : confirmTime // ignore: cast_nullable_to_non_nullable
              as String,
      confirmRemark: null == confirmRemark
          ? _value.confirmRemark
          : confirmRemark // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      thirdPartyRefundNo: null == thirdPartyRefundNo
          ? _value.thirdPartyRefundNo
          : thirdPartyRefundNo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConfirmRefundDataImpl implements _ConfirmRefundData {
  const _$ConfirmRefundDataImpl(
      {this.refundId = '',
      this.refundNo = '',
      this.orderNo = '',
      this.refundStatus = '',
      this.refundStatusText = '',
      this.orderStatus = 0,
      this.orderStatusText = '',
      this.refundAmount = 0.0,
      this.paymentRefundId = '',
      this.confirmTime = '',
      this.confirmRemark = '',
      this.result = '',
      this.message = '',
      this.thirdPartyRefundNo = ''});

  factory _$ConfirmRefundDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConfirmRefundDataImplFromJson(json);

  @override
  @JsonKey()
  final String refundId;
  @override
  @JsonKey()
  final String refundNo;
  @override
  @JsonKey()
  final String orderNo;
  @override
  @JsonKey()
  final String refundStatus;
  @override
  @JsonKey()
  final String refundStatusText;
  @override
  @JsonKey()
  final int orderStatus;
  @override
  @JsonKey()
  final String orderStatusText;
  @override
  @JsonKey()
  final double refundAmount;
  @override
  @JsonKey()
  final String paymentRefundId;
  @override
  @JsonKey()
  final String confirmTime;
  @override
  @JsonKey()
  final String confirmRemark;
  @override
  @JsonKey()
  final String result;
  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String thirdPartyRefundNo;

  @override
  String toString() {
    return 'ConfirmRefundData(refundId: $refundId, refundNo: $refundNo, orderNo: $orderNo, refundStatus: $refundStatus, refundStatusText: $refundStatusText, orderStatus: $orderStatus, orderStatusText: $orderStatusText, refundAmount: $refundAmount, paymentRefundId: $paymentRefundId, confirmTime: $confirmTime, confirmRemark: $confirmRemark, result: $result, message: $message, thirdPartyRefundNo: $thirdPartyRefundNo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmRefundDataImpl &&
            (identical(other.refundId, refundId) ||
                other.refundId == refundId) &&
            (identical(other.refundNo, refundNo) ||
                other.refundNo == refundNo) &&
            (identical(other.orderNo, orderNo) || other.orderNo == orderNo) &&
            (identical(other.refundStatus, refundStatus) ||
                other.refundStatus == refundStatus) &&
            (identical(other.refundStatusText, refundStatusText) ||
                other.refundStatusText == refundStatusText) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus) &&
            (identical(other.orderStatusText, orderStatusText) ||
                other.orderStatusText == orderStatusText) &&
            (identical(other.refundAmount, refundAmount) ||
                other.refundAmount == refundAmount) &&
            (identical(other.paymentRefundId, paymentRefundId) ||
                other.paymentRefundId == paymentRefundId) &&
            (identical(other.confirmTime, confirmTime) ||
                other.confirmTime == confirmTime) &&
            (identical(other.confirmRemark, confirmRemark) ||
                other.confirmRemark == confirmRemark) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.thirdPartyRefundNo, thirdPartyRefundNo) ||
                other.thirdPartyRefundNo == thirdPartyRefundNo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      refundId,
      refundNo,
      orderNo,
      refundStatus,
      refundStatusText,
      orderStatus,
      orderStatusText,
      refundAmount,
      paymentRefundId,
      confirmTime,
      confirmRemark,
      result,
      message,
      thirdPartyRefundNo);

  /// Create a copy of ConfirmRefundData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmRefundDataImplCopyWith<_$ConfirmRefundDataImpl> get copyWith =>
      __$$ConfirmRefundDataImplCopyWithImpl<_$ConfirmRefundDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfirmRefundDataImplToJson(
      this,
    );
  }
}

abstract class _ConfirmRefundData implements ConfirmRefundData {
  const factory _ConfirmRefundData(
      {final String refundId,
      final String refundNo,
      final String orderNo,
      final String refundStatus,
      final String refundStatusText,
      final int orderStatus,
      final String orderStatusText,
      final double refundAmount,
      final String paymentRefundId,
      final String confirmTime,
      final String confirmRemark,
      final String result,
      final String message,
      final String thirdPartyRefundNo}) = _$ConfirmRefundDataImpl;

  factory _ConfirmRefundData.fromJson(Map<String, dynamic> json) =
      _$ConfirmRefundDataImpl.fromJson;

  @override
  String get refundId;
  @override
  String get refundNo;
  @override
  String get orderNo;
  @override
  String get refundStatus;
  @override
  String get refundStatusText;
  @override
  int get orderStatus;
  @override
  String get orderStatusText;
  @override
  double get refundAmount;
  @override
  String get paymentRefundId;
  @override
  String get confirmTime;
  @override
  String get confirmRemark;
  @override
  String get result;
  @override
  String get message;
  @override
  String get thirdPartyRefundNo;

  /// Create a copy of ConfirmRefundData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfirmRefundDataImplCopyWith<_$ConfirmRefundDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
