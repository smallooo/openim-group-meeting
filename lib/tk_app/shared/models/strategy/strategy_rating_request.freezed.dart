// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'strategy_rating_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StrategyRatingRequest _$StrategyRatingRequestFromJson(
    Map<String, dynamic> json) {
  return _StrategyRatingRequest.fromJson(json);
}

/// @nodoc
mixin _$StrategyRatingRequest {
  @JsonKey(name: 'rating')
  int get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment')
  String get comment => throw _privateConstructorUsedError;

  /// Serializes this StrategyRatingRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StrategyRatingRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StrategyRatingRequestCopyWith<StrategyRatingRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StrategyRatingRequestCopyWith<$Res> {
  factory $StrategyRatingRequestCopyWith(StrategyRatingRequest value,
          $Res Function(StrategyRatingRequest) then) =
      _$StrategyRatingRequestCopyWithImpl<$Res, StrategyRatingRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'rating') int rating,
      @JsonKey(name: 'comment') String comment});
}

/// @nodoc
class _$StrategyRatingRequestCopyWithImpl<$Res,
        $Val extends StrategyRatingRequest>
    implements $StrategyRatingRequestCopyWith<$Res> {
  _$StrategyRatingRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StrategyRatingRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = null,
    Object? comment = null,
  }) {
    return _then(_value.copyWith(
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StrategyRatingRequestImplCopyWith<$Res>
    implements $StrategyRatingRequestCopyWith<$Res> {
  factory _$$StrategyRatingRequestImplCopyWith(
          _$StrategyRatingRequestImpl value,
          $Res Function(_$StrategyRatingRequestImpl) then) =
      __$$StrategyRatingRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'rating') int rating,
      @JsonKey(name: 'comment') String comment});
}

/// @nodoc
class __$$StrategyRatingRequestImplCopyWithImpl<$Res>
    extends _$StrategyRatingRequestCopyWithImpl<$Res,
        _$StrategyRatingRequestImpl>
    implements _$$StrategyRatingRequestImplCopyWith<$Res> {
  __$$StrategyRatingRequestImplCopyWithImpl(_$StrategyRatingRequestImpl _value,
      $Res Function(_$StrategyRatingRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of StrategyRatingRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = null,
    Object? comment = null,
  }) {
    return _then(_$StrategyRatingRequestImpl(
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StrategyRatingRequestImpl implements _StrategyRatingRequest {
  const _$StrategyRatingRequestImpl(
      {@JsonKey(name: 'rating') required this.rating,
      @JsonKey(name: 'comment') required this.comment});

  factory _$StrategyRatingRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$StrategyRatingRequestImplFromJson(json);

  @override
  @JsonKey(name: 'rating')
  final int rating;
  @override
  @JsonKey(name: 'comment')
  final String comment;

  @override
  String toString() {
    return 'StrategyRatingRequest(rating: $rating, comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StrategyRatingRequestImpl &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rating, comment);

  /// Create a copy of StrategyRatingRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StrategyRatingRequestImplCopyWith<_$StrategyRatingRequestImpl>
      get copyWith => __$$StrategyRatingRequestImplCopyWithImpl<
          _$StrategyRatingRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StrategyRatingRequestImplToJson(
      this,
    );
  }
}

abstract class _StrategyRatingRequest implements StrategyRatingRequest {
  const factory _StrategyRatingRequest(
          {@JsonKey(name: 'rating') required final int rating,
          @JsonKey(name: 'comment') required final String comment}) =
      _$StrategyRatingRequestImpl;

  factory _StrategyRatingRequest.fromJson(Map<String, dynamic> json) =
      _$StrategyRatingRequestImpl.fromJson;

  @override
  @JsonKey(name: 'rating')
  int get rating;
  @override
  @JsonKey(name: 'comment')
  String get comment;

  /// Create a copy of StrategyRatingRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StrategyRatingRequestImplCopyWith<_$StrategyRatingRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StrategyRatingResponse _$StrategyRatingResponseFromJson(
    Map<String, dynamic> json) {
  return _StrategyRatingResponse.fromJson(json);
}

/// @nodoc
mixin _$StrategyRatingResponse {
  @JsonKey(name: 'errCode')
  int get errCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'errMsg')
  String get errMsg => throw _privateConstructorUsedError;

  /// Serializes this StrategyRatingResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StrategyRatingResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StrategyRatingResponseCopyWith<StrategyRatingResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StrategyRatingResponseCopyWith<$Res> {
  factory $StrategyRatingResponseCopyWith(StrategyRatingResponse value,
          $Res Function(StrategyRatingResponse) then) =
      _$StrategyRatingResponseCopyWithImpl<$Res, StrategyRatingResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'errCode') int errCode,
      @JsonKey(name: 'errMsg') String errMsg});
}

/// @nodoc
class _$StrategyRatingResponseCopyWithImpl<$Res,
        $Val extends StrategyRatingResponse>
    implements $StrategyRatingResponseCopyWith<$Res> {
  _$StrategyRatingResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StrategyRatingResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errCode = null,
    Object? errMsg = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StrategyRatingResponseImplCopyWith<$Res>
    implements $StrategyRatingResponseCopyWith<$Res> {
  factory _$$StrategyRatingResponseImplCopyWith(
          _$StrategyRatingResponseImpl value,
          $Res Function(_$StrategyRatingResponseImpl) then) =
      __$$StrategyRatingResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'errCode') int errCode,
      @JsonKey(name: 'errMsg') String errMsg});
}

/// @nodoc
class __$$StrategyRatingResponseImplCopyWithImpl<$Res>
    extends _$StrategyRatingResponseCopyWithImpl<$Res,
        _$StrategyRatingResponseImpl>
    implements _$$StrategyRatingResponseImplCopyWith<$Res> {
  __$$StrategyRatingResponseImplCopyWithImpl(
      _$StrategyRatingResponseImpl _value,
      $Res Function(_$StrategyRatingResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of StrategyRatingResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errCode = null,
    Object? errMsg = null,
  }) {
    return _then(_$StrategyRatingResponseImpl(
      errCode: null == errCode
          ? _value.errCode
          : errCode // ignore: cast_nullable_to_non_nullable
              as int,
      errMsg: null == errMsg
          ? _value.errMsg
          : errMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StrategyRatingResponseImpl implements _StrategyRatingResponse {
  const _$StrategyRatingResponseImpl(
      {@JsonKey(name: 'errCode') required this.errCode,
      @JsonKey(name: 'errMsg') required this.errMsg});

  factory _$StrategyRatingResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$StrategyRatingResponseImplFromJson(json);

  @override
  @JsonKey(name: 'errCode')
  final int errCode;
  @override
  @JsonKey(name: 'errMsg')
  final String errMsg;

  @override
  String toString() {
    return 'StrategyRatingResponse(errCode: $errCode, errMsg: $errMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StrategyRatingResponseImpl &&
            (identical(other.errCode, errCode) || other.errCode == errCode) &&
            (identical(other.errMsg, errMsg) || other.errMsg == errMsg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, errCode, errMsg);

  /// Create a copy of StrategyRatingResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StrategyRatingResponseImplCopyWith<_$StrategyRatingResponseImpl>
      get copyWith => __$$StrategyRatingResponseImplCopyWithImpl<
          _$StrategyRatingResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StrategyRatingResponseImplToJson(
      this,
    );
  }
}

abstract class _StrategyRatingResponse implements StrategyRatingResponse {
  const factory _StrategyRatingResponse(
          {@JsonKey(name: 'errCode') required final int errCode,
          @JsonKey(name: 'errMsg') required final String errMsg}) =
      _$StrategyRatingResponseImpl;

  factory _StrategyRatingResponse.fromJson(Map<String, dynamic> json) =
      _$StrategyRatingResponseImpl.fromJson;

  @override
  @JsonKey(name: 'errCode')
  int get errCode;
  @override
  @JsonKey(name: 'errMsg')
  String get errMsg;

  /// Create a copy of StrategyRatingResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StrategyRatingResponseImplCopyWith<_$StrategyRatingResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
