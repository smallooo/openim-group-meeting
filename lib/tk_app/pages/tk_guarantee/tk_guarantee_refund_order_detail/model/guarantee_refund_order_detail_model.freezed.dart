// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guarantee_refund_order_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RefundDetailResponse _$RefundDetailResponseFromJson(Map<String, dynamic> json) {
  return _RefundDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$RefundDetailResponse {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get ok => throw _privateConstructorUsedError;
  RefundDetailData get data => throw _privateConstructorUsedError;

  /// Serializes this RefundDetailResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RefundDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefundDetailResponseCopyWith<RefundDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefundDetailResponseCopyWith<$Res> {
  factory $RefundDetailResponseCopyWith(RefundDetailResponse value,
          $Res Function(RefundDetailResponse) then) =
      _$RefundDetailResponseCopyWithImpl<$Res, RefundDetailResponse>;
  @useResult
  $Res call({int code, String message, bool ok, RefundDetailData data});

  $RefundDetailDataCopyWith<$Res> get data;
}

/// @nodoc
class _$RefundDetailResponseCopyWithImpl<$Res,
        $Val extends RefundDetailResponse>
    implements $RefundDetailResponseCopyWith<$Res> {
  _$RefundDetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefundDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? ok = null,
    Object? data = null,
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
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RefundDetailData,
    ) as $Val);
  }

  /// Create a copy of RefundDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RefundDetailDataCopyWith<$Res> get data {
    return $RefundDetailDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RefundDetailResponseImplCopyWith<$Res>
    implements $RefundDetailResponseCopyWith<$Res> {
  factory _$$RefundDetailResponseImplCopyWith(_$RefundDetailResponseImpl value,
          $Res Function(_$RefundDetailResponseImpl) then) =
      __$$RefundDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String message, bool ok, RefundDetailData data});

  @override
  $RefundDetailDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$RefundDetailResponseImplCopyWithImpl<$Res>
    extends _$RefundDetailResponseCopyWithImpl<$Res, _$RefundDetailResponseImpl>
    implements _$$RefundDetailResponseImplCopyWith<$Res> {
  __$$RefundDetailResponseImplCopyWithImpl(_$RefundDetailResponseImpl _value,
      $Res Function(_$RefundDetailResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefundDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? ok = null,
    Object? data = null,
  }) {
    return _then(_$RefundDetailResponseImpl(
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
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RefundDetailData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RefundDetailResponseImpl implements _RefundDetailResponse {
  const _$RefundDetailResponseImpl(
      {this.code = 0, this.message = '', this.ok = true, required this.data});

  factory _$RefundDetailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefundDetailResponseImplFromJson(json);

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
  final RefundDetailData data;

  @override
  String toString() {
    return 'RefundDetailResponse(code: $code, message: $message, ok: $ok, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefundDetailResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.ok, ok) || other.ok == ok) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, ok, data);

  /// Create a copy of RefundDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefundDetailResponseImplCopyWith<_$RefundDetailResponseImpl>
      get copyWith =>
          __$$RefundDetailResponseImplCopyWithImpl<_$RefundDetailResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefundDetailResponseImplToJson(
      this,
    );
  }
}

abstract class _RefundDetailResponse implements RefundDetailResponse {
  const factory _RefundDetailResponse(
      {final int code,
      final String message,
      final bool ok,
      required final RefundDetailData data}) = _$RefundDetailResponseImpl;

  factory _RefundDetailResponse.fromJson(Map<String, dynamic> json) =
      _$RefundDetailResponseImpl.fromJson;

  @override
  int get code;
  @override
  String get message;
  @override
  bool get ok;
  @override
  RefundDetailData get data;

  /// Create a copy of RefundDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefundDetailResponseImplCopyWith<_$RefundDetailResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RefundDetailData _$RefundDetailDataFromJson(Map<String, dynamic> json) {
  return _RefundDetailData.fromJson(json);
}

/// @nodoc
mixin _$RefundDetailData {
  String get id => throw _privateConstructorUsedError;
  String get refundNo => throw _privateConstructorUsedError;
  String get orderId => throw _privateConstructorUsedError;
  String get orderNo => throw _privateConstructorUsedError;
  String get refundType => throw _privateConstructorUsedError;
  double get refundAmount => throw _privateConstructorUsedError;
  String get refundReason => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get evidenceImages => throw _privateConstructorUsedError;
  String get evidenceVideos => throw _privateConstructorUsedError;
  String get evidenceFiles => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get statusText => throw _privateConstructorUsedError;
  String get reviewTime => throw _privateConstructorUsedError;
  String get reviewerName => throw _privateConstructorUsedError;
  String get reviewRemark => throw _privateConstructorUsedError;
  String get reviewComment => throw _privateConstructorUsedError;
  String get completeTime => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _sellerIdFromJson)
  int get sellerId => throw _privateConstructorUsedError;

  /// Serializes this RefundDetailData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RefundDetailData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefundDetailDataCopyWith<RefundDetailData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefundDetailDataCopyWith<$Res> {
  factory $RefundDetailDataCopyWith(
          RefundDetailData value, $Res Function(RefundDetailData) then) =
      _$RefundDetailDataCopyWithImpl<$Res, RefundDetailData>;
  @useResult
  $Res call(
      {String id,
      String refundNo,
      String orderId,
      String orderNo,
      String refundType,
      double refundAmount,
      String refundReason,
      String description,
      String evidenceImages,
      String evidenceVideos,
      String evidenceFiles,
      String status,
      String statusText,
      String reviewTime,
      String reviewerName,
      String reviewRemark,
      String reviewComment,
      String completeTime,
      String createdAt,
      String updatedAt,
      @JsonKey(fromJson: _sellerIdFromJson) int sellerId});
}

/// @nodoc
class _$RefundDetailDataCopyWithImpl<$Res, $Val extends RefundDetailData>
    implements $RefundDetailDataCopyWith<$Res> {
  _$RefundDetailDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefundDetailData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? refundNo = null,
    Object? orderId = null,
    Object? orderNo = null,
    Object? refundType = null,
    Object? refundAmount = null,
    Object? refundReason = null,
    Object? description = null,
    Object? evidenceImages = null,
    Object? evidenceVideos = null,
    Object? evidenceFiles = null,
    Object? status = null,
    Object? statusText = null,
    Object? reviewTime = null,
    Object? reviewerName = null,
    Object? reviewRemark = null,
    Object? reviewComment = null,
    Object? completeTime = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? sellerId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      refundNo: null == refundNo
          ? _value.refundNo
          : refundNo // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      orderNo: null == orderNo
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as String,
      refundType: null == refundType
          ? _value.refundType
          : refundType // ignore: cast_nullable_to_non_nullable
              as String,
      refundAmount: null == refundAmount
          ? _value.refundAmount
          : refundAmount // ignore: cast_nullable_to_non_nullable
              as double,
      refundReason: null == refundReason
          ? _value.refundReason
          : refundReason // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      evidenceImages: null == evidenceImages
          ? _value.evidenceImages
          : evidenceImages // ignore: cast_nullable_to_non_nullable
              as String,
      evidenceVideos: null == evidenceVideos
          ? _value.evidenceVideos
          : evidenceVideos // ignore: cast_nullable_to_non_nullable
              as String,
      evidenceFiles: null == evidenceFiles
          ? _value.evidenceFiles
          : evidenceFiles // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      statusText: null == statusText
          ? _value.statusText
          : statusText // ignore: cast_nullable_to_non_nullable
              as String,
      reviewTime: null == reviewTime
          ? _value.reviewTime
          : reviewTime // ignore: cast_nullable_to_non_nullable
              as String,
      reviewerName: null == reviewerName
          ? _value.reviewerName
          : reviewerName // ignore: cast_nullable_to_non_nullable
              as String,
      reviewRemark: null == reviewRemark
          ? _value.reviewRemark
          : reviewRemark // ignore: cast_nullable_to_non_nullable
              as String,
      reviewComment: null == reviewComment
          ? _value.reviewComment
          : reviewComment // ignore: cast_nullable_to_non_nullable
              as String,
      completeTime: null == completeTime
          ? _value.completeTime
          : completeTime // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      sellerId: null == sellerId
          ? _value.sellerId
          : sellerId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RefundDetailDataImplCopyWith<$Res>
    implements $RefundDetailDataCopyWith<$Res> {
  factory _$$RefundDetailDataImplCopyWith(_$RefundDetailDataImpl value,
          $Res Function(_$RefundDetailDataImpl) then) =
      __$$RefundDetailDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String refundNo,
      String orderId,
      String orderNo,
      String refundType,
      double refundAmount,
      String refundReason,
      String description,
      String evidenceImages,
      String evidenceVideos,
      String evidenceFiles,
      String status,
      String statusText,
      String reviewTime,
      String reviewerName,
      String reviewRemark,
      String reviewComment,
      String completeTime,
      String createdAt,
      String updatedAt,
      @JsonKey(fromJson: _sellerIdFromJson) int sellerId});
}

/// @nodoc
class __$$RefundDetailDataImplCopyWithImpl<$Res>
    extends _$RefundDetailDataCopyWithImpl<$Res, _$RefundDetailDataImpl>
    implements _$$RefundDetailDataImplCopyWith<$Res> {
  __$$RefundDetailDataImplCopyWithImpl(_$RefundDetailDataImpl _value,
      $Res Function(_$RefundDetailDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefundDetailData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? refundNo = null,
    Object? orderId = null,
    Object? orderNo = null,
    Object? refundType = null,
    Object? refundAmount = null,
    Object? refundReason = null,
    Object? description = null,
    Object? evidenceImages = null,
    Object? evidenceVideos = null,
    Object? evidenceFiles = null,
    Object? status = null,
    Object? statusText = null,
    Object? reviewTime = null,
    Object? reviewerName = null,
    Object? reviewRemark = null,
    Object? reviewComment = null,
    Object? completeTime = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? sellerId = null,
  }) {
    return _then(_$RefundDetailDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      refundNo: null == refundNo
          ? _value.refundNo
          : refundNo // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      orderNo: null == orderNo
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as String,
      refundType: null == refundType
          ? _value.refundType
          : refundType // ignore: cast_nullable_to_non_nullable
              as String,
      refundAmount: null == refundAmount
          ? _value.refundAmount
          : refundAmount // ignore: cast_nullable_to_non_nullable
              as double,
      refundReason: null == refundReason
          ? _value.refundReason
          : refundReason // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      evidenceImages: null == evidenceImages
          ? _value.evidenceImages
          : evidenceImages // ignore: cast_nullable_to_non_nullable
              as String,
      evidenceVideos: null == evidenceVideos
          ? _value.evidenceVideos
          : evidenceVideos // ignore: cast_nullable_to_non_nullable
              as String,
      evidenceFiles: null == evidenceFiles
          ? _value.evidenceFiles
          : evidenceFiles // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      statusText: null == statusText
          ? _value.statusText
          : statusText // ignore: cast_nullable_to_non_nullable
              as String,
      reviewTime: null == reviewTime
          ? _value.reviewTime
          : reviewTime // ignore: cast_nullable_to_non_nullable
              as String,
      reviewerName: null == reviewerName
          ? _value.reviewerName
          : reviewerName // ignore: cast_nullable_to_non_nullable
              as String,
      reviewRemark: null == reviewRemark
          ? _value.reviewRemark
          : reviewRemark // ignore: cast_nullable_to_non_nullable
              as String,
      reviewComment: null == reviewComment
          ? _value.reviewComment
          : reviewComment // ignore: cast_nullable_to_non_nullable
              as String,
      completeTime: null == completeTime
          ? _value.completeTime
          : completeTime // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      sellerId: null == sellerId
          ? _value.sellerId
          : sellerId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RefundDetailDataImpl implements _RefundDetailData {
  const _$RefundDetailDataImpl(
      {required this.id,
      required this.refundNo,
      required this.orderId,
      required this.orderNo,
      required this.refundType,
      this.refundAmount = 0.0,
      this.refundReason = '',
      this.description = '',
      this.evidenceImages = '',
      this.evidenceVideos = '',
      this.evidenceFiles = '',
      this.status = '',
      this.statusText = '',
      this.reviewTime = '',
      this.reviewerName = '',
      this.reviewRemark = '',
      this.reviewComment = '',
      this.completeTime = '',
      this.createdAt = '',
      this.updatedAt = '',
      @JsonKey(fromJson: _sellerIdFromJson) this.sellerId = 0});

  factory _$RefundDetailDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefundDetailDataImplFromJson(json);

  @override
  final String id;
  @override
  final String refundNo;
  @override
  final String orderId;
  @override
  final String orderNo;
  @override
  final String refundType;
  @override
  @JsonKey()
  final double refundAmount;
  @override
  @JsonKey()
  final String refundReason;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String evidenceImages;
  @override
  @JsonKey()
  final String evidenceVideos;
  @override
  @JsonKey()
  final String evidenceFiles;
  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final String statusText;
  @override
  @JsonKey()
  final String reviewTime;
  @override
  @JsonKey()
  final String reviewerName;
  @override
  @JsonKey()
  final String reviewRemark;
  @override
  @JsonKey()
  final String reviewComment;
  @override
  @JsonKey()
  final String completeTime;
  @override
  @JsonKey()
  final String createdAt;
  @override
  @JsonKey()
  final String updatedAt;
  @override
  @JsonKey(fromJson: _sellerIdFromJson)
  final int sellerId;

  @override
  String toString() {
    return 'RefundDetailData(id: $id, refundNo: $refundNo, orderId: $orderId, orderNo: $orderNo, refundType: $refundType, refundAmount: $refundAmount, refundReason: $refundReason, description: $description, evidenceImages: $evidenceImages, evidenceVideos: $evidenceVideos, evidenceFiles: $evidenceFiles, status: $status, statusText: $statusText, reviewTime: $reviewTime, reviewerName: $reviewerName, reviewRemark: $reviewRemark, reviewComment: $reviewComment, completeTime: $completeTime, createdAt: $createdAt, updatedAt: $updatedAt, sellerId: $sellerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefundDetailDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.refundNo, refundNo) ||
                other.refundNo == refundNo) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.orderNo, orderNo) || other.orderNo == orderNo) &&
            (identical(other.refundType, refundType) ||
                other.refundType == refundType) &&
            (identical(other.refundAmount, refundAmount) ||
                other.refundAmount == refundAmount) &&
            (identical(other.refundReason, refundReason) ||
                other.refundReason == refundReason) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.evidenceImages, evidenceImages) ||
                other.evidenceImages == evidenceImages) &&
            (identical(other.evidenceVideos, evidenceVideos) ||
                other.evidenceVideos == evidenceVideos) &&
            (identical(other.evidenceFiles, evidenceFiles) ||
                other.evidenceFiles == evidenceFiles) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusText, statusText) ||
                other.statusText == statusText) &&
            (identical(other.reviewTime, reviewTime) ||
                other.reviewTime == reviewTime) &&
            (identical(other.reviewerName, reviewerName) ||
                other.reviewerName == reviewerName) &&
            (identical(other.reviewRemark, reviewRemark) ||
                other.reviewRemark == reviewRemark) &&
            (identical(other.reviewComment, reviewComment) ||
                other.reviewComment == reviewComment) &&
            (identical(other.completeTime, completeTime) ||
                other.completeTime == completeTime) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.sellerId, sellerId) ||
                other.sellerId == sellerId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        refundNo,
        orderId,
        orderNo,
        refundType,
        refundAmount,
        refundReason,
        description,
        evidenceImages,
        evidenceVideos,
        evidenceFiles,
        status,
        statusText,
        reviewTime,
        reviewerName,
        reviewRemark,
        reviewComment,
        completeTime,
        createdAt,
        updatedAt,
        sellerId
      ]);

  /// Create a copy of RefundDetailData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefundDetailDataImplCopyWith<_$RefundDetailDataImpl> get copyWith =>
      __$$RefundDetailDataImplCopyWithImpl<_$RefundDetailDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefundDetailDataImplToJson(
      this,
    );
  }
}

abstract class _RefundDetailData implements RefundDetailData {
  const factory _RefundDetailData(
          {required final String id,
          required final String refundNo,
          required final String orderId,
          required final String orderNo,
          required final String refundType,
          final double refundAmount,
          final String refundReason,
          final String description,
          final String evidenceImages,
          final String evidenceVideos,
          final String evidenceFiles,
          final String status,
          final String statusText,
          final String reviewTime,
          final String reviewerName,
          final String reviewRemark,
          final String reviewComment,
          final String completeTime,
          final String createdAt,
          final String updatedAt,
          @JsonKey(fromJson: _sellerIdFromJson) final int sellerId}) =
      _$RefundDetailDataImpl;

  factory _RefundDetailData.fromJson(Map<String, dynamic> json) =
      _$RefundDetailDataImpl.fromJson;

  @override
  String get id;
  @override
  String get refundNo;
  @override
  String get orderId;
  @override
  String get orderNo;
  @override
  String get refundType;
  @override
  double get refundAmount;
  @override
  String get refundReason;
  @override
  String get description;
  @override
  String get evidenceImages;
  @override
  String get evidenceVideos;
  @override
  String get evidenceFiles;
  @override
  String get status;
  @override
  String get statusText;
  @override
  String get reviewTime;
  @override
  String get reviewerName;
  @override
  String get reviewRemark;
  @override
  String get reviewComment;
  @override
  String get completeTime;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  @JsonKey(fromJson: _sellerIdFromJson)
  int get sellerId;

  /// Create a copy of RefundDetailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefundDetailDataImplCopyWith<_$RefundDetailDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CancelRefundResponse _$CancelRefundResponseFromJson(Map<String, dynamic> json) {
  return _CancelRefundResponse.fromJson(json);
}

/// @nodoc
mixin _$CancelRefundResponse {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get ok => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _cancelDataFromJson)
  CancelRefundData? get data => throw _privateConstructorUsedError;

  /// Serializes this CancelRefundResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CancelRefundResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CancelRefundResponseCopyWith<CancelRefundResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CancelRefundResponseCopyWith<$Res> {
  factory $CancelRefundResponseCopyWith(CancelRefundResponse value,
          $Res Function(CancelRefundResponse) then) =
      _$CancelRefundResponseCopyWithImpl<$Res, CancelRefundResponse>;
  @useResult
  $Res call(
      {int code,
      String message,
      bool ok,
      @JsonKey(fromJson: _cancelDataFromJson) CancelRefundData? data});

  $CancelRefundDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CancelRefundResponseCopyWithImpl<$Res,
        $Val extends CancelRefundResponse>
    implements $CancelRefundResponseCopyWith<$Res> {
  _$CancelRefundResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CancelRefundResponse
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
              as CancelRefundData?,
    ) as $Val);
  }

  /// Create a copy of CancelRefundResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CancelRefundDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CancelRefundDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CancelRefundResponseImplCopyWith<$Res>
    implements $CancelRefundResponseCopyWith<$Res> {
  factory _$$CancelRefundResponseImplCopyWith(_$CancelRefundResponseImpl value,
          $Res Function(_$CancelRefundResponseImpl) then) =
      __$$CancelRefundResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int code,
      String message,
      bool ok,
      @JsonKey(fromJson: _cancelDataFromJson) CancelRefundData? data});

  @override
  $CancelRefundDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CancelRefundResponseImplCopyWithImpl<$Res>
    extends _$CancelRefundResponseCopyWithImpl<$Res, _$CancelRefundResponseImpl>
    implements _$$CancelRefundResponseImplCopyWith<$Res> {
  __$$CancelRefundResponseImplCopyWithImpl(_$CancelRefundResponseImpl _value,
      $Res Function(_$CancelRefundResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CancelRefundResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? ok = null,
    Object? data = freezed,
  }) {
    return _then(_$CancelRefundResponseImpl(
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
              as CancelRefundData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CancelRefundResponseImpl implements _CancelRefundResponse {
  const _$CancelRefundResponseImpl(
      {this.code = 0,
      this.message = '',
      this.ok = false,
      @JsonKey(fromJson: _cancelDataFromJson) this.data});

  factory _$CancelRefundResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CancelRefundResponseImplFromJson(json);

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
  @JsonKey(fromJson: _cancelDataFromJson)
  final CancelRefundData? data;

  @override
  String toString() {
    return 'CancelRefundResponse(code: $code, message: $message, ok: $ok, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelRefundResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.ok, ok) || other.ok == ok) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, ok, data);

  /// Create a copy of CancelRefundResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelRefundResponseImplCopyWith<_$CancelRefundResponseImpl>
      get copyWith =>
          __$$CancelRefundResponseImplCopyWithImpl<_$CancelRefundResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CancelRefundResponseImplToJson(
      this,
    );
  }
}

abstract class _CancelRefundResponse implements CancelRefundResponse {
  const factory _CancelRefundResponse(
      {final int code,
      final String message,
      final bool ok,
      @JsonKey(fromJson: _cancelDataFromJson)
      final CancelRefundData? data}) = _$CancelRefundResponseImpl;

  factory _CancelRefundResponse.fromJson(Map<String, dynamic> json) =
      _$CancelRefundResponseImpl.fromJson;

  @override
  int get code;
  @override
  String get message;
  @override
  bool get ok;
  @override
  @JsonKey(fromJson: _cancelDataFromJson)
  CancelRefundData? get data;

  /// Create a copy of CancelRefundResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CancelRefundResponseImplCopyWith<_$CancelRefundResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CancelRefundData _$CancelRefundDataFromJson(Map<String, dynamic> json) {
  return _CancelRefundData.fromJson(json);
}

/// @nodoc
mixin _$CancelRefundData {
  String get result => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get refundId => throw _privateConstructorUsedError;
  String get refundNo => throw _privateConstructorUsedError;
  String get cancelTime => throw _privateConstructorUsedError;
  String get cancelReason => throw _privateConstructorUsedError;

  /// Serializes this CancelRefundData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CancelRefundData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CancelRefundDataCopyWith<CancelRefundData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CancelRefundDataCopyWith<$Res> {
  factory $CancelRefundDataCopyWith(
          CancelRefundData value, $Res Function(CancelRefundData) then) =
      _$CancelRefundDataCopyWithImpl<$Res, CancelRefundData>;
  @useResult
  $Res call(
      {String result,
      String message,
      String refundId,
      String refundNo,
      String cancelTime,
      String cancelReason});
}

/// @nodoc
class _$CancelRefundDataCopyWithImpl<$Res, $Val extends CancelRefundData>
    implements $CancelRefundDataCopyWith<$Res> {
  _$CancelRefundDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CancelRefundData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? message = null,
    Object? refundId = null,
    Object? refundNo = null,
    Object? cancelTime = null,
    Object? cancelReason = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      refundId: null == refundId
          ? _value.refundId
          : refundId // ignore: cast_nullable_to_non_nullable
              as String,
      refundNo: null == refundNo
          ? _value.refundNo
          : refundNo // ignore: cast_nullable_to_non_nullable
              as String,
      cancelTime: null == cancelTime
          ? _value.cancelTime
          : cancelTime // ignore: cast_nullable_to_non_nullable
              as String,
      cancelReason: null == cancelReason
          ? _value.cancelReason
          : cancelReason // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CancelRefundDataImplCopyWith<$Res>
    implements $CancelRefundDataCopyWith<$Res> {
  factory _$$CancelRefundDataImplCopyWith(_$CancelRefundDataImpl value,
          $Res Function(_$CancelRefundDataImpl) then) =
      __$$CancelRefundDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String result,
      String message,
      String refundId,
      String refundNo,
      String cancelTime,
      String cancelReason});
}

/// @nodoc
class __$$CancelRefundDataImplCopyWithImpl<$Res>
    extends _$CancelRefundDataCopyWithImpl<$Res, _$CancelRefundDataImpl>
    implements _$$CancelRefundDataImplCopyWith<$Res> {
  __$$CancelRefundDataImplCopyWithImpl(_$CancelRefundDataImpl _value,
      $Res Function(_$CancelRefundDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CancelRefundData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? message = null,
    Object? refundId = null,
    Object? refundNo = null,
    Object? cancelTime = null,
    Object? cancelReason = null,
  }) {
    return _then(_$CancelRefundDataImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      refundId: null == refundId
          ? _value.refundId
          : refundId // ignore: cast_nullable_to_non_nullable
              as String,
      refundNo: null == refundNo
          ? _value.refundNo
          : refundNo // ignore: cast_nullable_to_non_nullable
              as String,
      cancelTime: null == cancelTime
          ? _value.cancelTime
          : cancelTime // ignore: cast_nullable_to_non_nullable
              as String,
      cancelReason: null == cancelReason
          ? _value.cancelReason
          : cancelReason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CancelRefundDataImpl implements _CancelRefundData {
  const _$CancelRefundDataImpl(
      {this.result = '',
      this.message = '',
      this.refundId = '',
      this.refundNo = '',
      this.cancelTime = '',
      this.cancelReason = ''});

  factory _$CancelRefundDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CancelRefundDataImplFromJson(json);

  @override
  @JsonKey()
  final String result;
  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String refundId;
  @override
  @JsonKey()
  final String refundNo;
  @override
  @JsonKey()
  final String cancelTime;
  @override
  @JsonKey()
  final String cancelReason;

  @override
  String toString() {
    return 'CancelRefundData(result: $result, message: $message, refundId: $refundId, refundNo: $refundNo, cancelTime: $cancelTime, cancelReason: $cancelReason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelRefundDataImpl &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.refundId, refundId) ||
                other.refundId == refundId) &&
            (identical(other.refundNo, refundNo) ||
                other.refundNo == refundNo) &&
            (identical(other.cancelTime, cancelTime) ||
                other.cancelTime == cancelTime) &&
            (identical(other.cancelReason, cancelReason) ||
                other.cancelReason == cancelReason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, result, message, refundId,
      refundNo, cancelTime, cancelReason);

  /// Create a copy of CancelRefundData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelRefundDataImplCopyWith<_$CancelRefundDataImpl> get copyWith =>
      __$$CancelRefundDataImplCopyWithImpl<_$CancelRefundDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CancelRefundDataImplToJson(
      this,
    );
  }
}

abstract class _CancelRefundData implements CancelRefundData {
  const factory _CancelRefundData(
      {final String result,
      final String message,
      final String refundId,
      final String refundNo,
      final String cancelTime,
      final String cancelReason}) = _$CancelRefundDataImpl;

  factory _CancelRefundData.fromJson(Map<String, dynamic> json) =
      _$CancelRefundDataImpl.fromJson;

  @override
  String get result;
  @override
  String get message;
  @override
  String get refundId;
  @override
  String get refundNo;
  @override
  String get cancelTime;
  @override
  String get cancelReason;

  /// Create a copy of CancelRefundData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CancelRefundDataImplCopyWith<_$CancelRefundDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
