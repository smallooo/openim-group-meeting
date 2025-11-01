// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApproveRefundResponse _$ApproveRefundResponseFromJson(
    Map<String, dynamic> json) {
  return _ApproveRefundResponse.fromJson(json);
}

/// @nodoc
mixin _$ApproveRefundResponse {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get ok => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _approveDataFromJson)
  ApproveRefundData? get data => throw _privateConstructorUsedError;

  /// Serializes this ApproveRefundResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApproveRefundResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApproveRefundResponseCopyWith<ApproveRefundResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApproveRefundResponseCopyWith<$Res> {
  factory $ApproveRefundResponseCopyWith(ApproveRefundResponse value,
          $Res Function(ApproveRefundResponse) then) =
      _$ApproveRefundResponseCopyWithImpl<$Res, ApproveRefundResponse>;
  @useResult
  $Res call(
      {int code,
      String message,
      bool ok,
      @JsonKey(fromJson: _approveDataFromJson) ApproveRefundData? data});

  $ApproveRefundDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ApproveRefundResponseCopyWithImpl<$Res,
        $Val extends ApproveRefundResponse>
    implements $ApproveRefundResponseCopyWith<$Res> {
  _$ApproveRefundResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApproveRefundResponse
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
              as ApproveRefundData?,
    ) as $Val);
  }

  /// Create a copy of ApproveRefundResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApproveRefundDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ApproveRefundDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApproveRefundResponseImplCopyWith<$Res>
    implements $ApproveRefundResponseCopyWith<$Res> {
  factory _$$ApproveRefundResponseImplCopyWith(
          _$ApproveRefundResponseImpl value,
          $Res Function(_$ApproveRefundResponseImpl) then) =
      __$$ApproveRefundResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int code,
      String message,
      bool ok,
      @JsonKey(fromJson: _approveDataFromJson) ApproveRefundData? data});

  @override
  $ApproveRefundDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ApproveRefundResponseImplCopyWithImpl<$Res>
    extends _$ApproveRefundResponseCopyWithImpl<$Res,
        _$ApproveRefundResponseImpl>
    implements _$$ApproveRefundResponseImplCopyWith<$Res> {
  __$$ApproveRefundResponseImplCopyWithImpl(_$ApproveRefundResponseImpl _value,
      $Res Function(_$ApproveRefundResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApproveRefundResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? ok = null,
    Object? data = freezed,
  }) {
    return _then(_$ApproveRefundResponseImpl(
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
              as ApproveRefundData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApproveRefundResponseImpl implements _ApproveRefundResponse {
  const _$ApproveRefundResponseImpl(
      {this.code = 0,
      this.message = '',
      this.ok = false,
      @JsonKey(fromJson: _approveDataFromJson) this.data});

  factory _$ApproveRefundResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApproveRefundResponseImplFromJson(json);

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
  @JsonKey(fromJson: _approveDataFromJson)
  final ApproveRefundData? data;

  @override
  String toString() {
    return 'ApproveRefundResponse(code: $code, message: $message, ok: $ok, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApproveRefundResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.ok, ok) || other.ok == ok) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, ok, data);

  /// Create a copy of ApproveRefundResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApproveRefundResponseImplCopyWith<_$ApproveRefundResponseImpl>
      get copyWith => __$$ApproveRefundResponseImplCopyWithImpl<
          _$ApproveRefundResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApproveRefundResponseImplToJson(
      this,
    );
  }
}

abstract class _ApproveRefundResponse implements ApproveRefundResponse {
  const factory _ApproveRefundResponse(
      {final int code,
      final String message,
      final bool ok,
      @JsonKey(fromJson: _approveDataFromJson)
      final ApproveRefundData? data}) = _$ApproveRefundResponseImpl;

  factory _ApproveRefundResponse.fromJson(Map<String, dynamic> json) =
      _$ApproveRefundResponseImpl.fromJson;

  @override
  int get code;
  @override
  String get message;
  @override
  bool get ok;
  @override
  @JsonKey(fromJson: _approveDataFromJson)
  ApproveRefundData? get data;

  /// Create a copy of ApproveRefundResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApproveRefundResponseImplCopyWith<_$ApproveRefundResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApproveRefundData _$ApproveRefundDataFromJson(Map<String, dynamic> json) {
  return _ApproveRefundData.fromJson(json);
}

/// @nodoc
mixin _$ApproveRefundData {
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

  /// Serializes this ApproveRefundData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApproveRefundData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApproveRefundDataCopyWith<ApproveRefundData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApproveRefundDataCopyWith<$Res> {
  factory $ApproveRefundDataCopyWith(
          ApproveRefundData value, $Res Function(ApproveRefundData) then) =
      _$ApproveRefundDataCopyWithImpl<$Res, ApproveRefundData>;
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
      String updatedAt});
}

/// @nodoc
class _$ApproveRefundDataCopyWithImpl<$Res, $Val extends ApproveRefundData>
    implements $ApproveRefundDataCopyWith<$Res> {
  _$ApproveRefundDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApproveRefundData
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApproveRefundDataImplCopyWith<$Res>
    implements $ApproveRefundDataCopyWith<$Res> {
  factory _$$ApproveRefundDataImplCopyWith(_$ApproveRefundDataImpl value,
          $Res Function(_$ApproveRefundDataImpl) then) =
      __$$ApproveRefundDataImplCopyWithImpl<$Res>;
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
      String updatedAt});
}

/// @nodoc
class __$$ApproveRefundDataImplCopyWithImpl<$Res>
    extends _$ApproveRefundDataCopyWithImpl<$Res, _$ApproveRefundDataImpl>
    implements _$$ApproveRefundDataImplCopyWith<$Res> {
  __$$ApproveRefundDataImplCopyWithImpl(_$ApproveRefundDataImpl _value,
      $Res Function(_$ApproveRefundDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApproveRefundData
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
  }) {
    return _then(_$ApproveRefundDataImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApproveRefundDataImpl implements _ApproveRefundData {
  const _$ApproveRefundDataImpl(
      {this.id = '',
      this.refundNo = '',
      this.orderId = '',
      this.orderNo = '',
      this.refundType = '',
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
      this.updatedAt = ''});

  factory _$ApproveRefundDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApproveRefundDataImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String refundNo;
  @override
  @JsonKey()
  final String orderId;
  @override
  @JsonKey()
  final String orderNo;
  @override
  @JsonKey()
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
  String toString() {
    return 'ApproveRefundData(id: $id, refundNo: $refundNo, orderId: $orderId, orderNo: $orderNo, refundType: $refundType, refundAmount: $refundAmount, refundReason: $refundReason, description: $description, evidenceImages: $evidenceImages, evidenceVideos: $evidenceVideos, evidenceFiles: $evidenceFiles, status: $status, statusText: $statusText, reviewTime: $reviewTime, reviewerName: $reviewerName, reviewRemark: $reviewRemark, reviewComment: $reviewComment, completeTime: $completeTime, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApproveRefundDataImpl &&
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
                other.updatedAt == updatedAt));
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
        updatedAt
      ]);

  /// Create a copy of ApproveRefundData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApproveRefundDataImplCopyWith<_$ApproveRefundDataImpl> get copyWith =>
      __$$ApproveRefundDataImplCopyWithImpl<_$ApproveRefundDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApproveRefundDataImplToJson(
      this,
    );
  }
}

abstract class _ApproveRefundData implements ApproveRefundData {
  const factory _ApproveRefundData(
      {final String id,
      final String refundNo,
      final String orderId,
      final String orderNo,
      final String refundType,
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
      final String updatedAt}) = _$ApproveRefundDataImpl;

  factory _ApproveRefundData.fromJson(Map<String, dynamic> json) =
      _$ApproveRefundDataImpl.fromJson;

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

  /// Create a copy of ApproveRefundData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApproveRefundDataImplCopyWith<_$ApproveRefundDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
