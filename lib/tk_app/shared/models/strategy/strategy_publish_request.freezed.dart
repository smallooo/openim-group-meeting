// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'strategy_publish_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StrategyPublishRequest _$StrategyPublishRequestFromJson(
    Map<String, dynamic> json) {
  return _StrategyPublishRequest.fromJson(json);
}

/// @nodoc
mixin _$StrategyPublishRequest {
  /// 交易员ID
  @JsonKey(name: 'traderId')
  int get traderId => throw _privateConstructorUsedError;

  /// 策略标题
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;

  /// 策略简介
  @JsonKey(name: 'summary')
  String get summary => throw _privateConstructorUsedError;

  /// 具体交易方案
  @JsonKey(name: 'content')
  String get content => throw _privateConstructorUsedError;

  /// 币种符号
  @JsonKey(name: 'coinSymbol')
  String get coinSymbol => throw _privateConstructorUsedError;

  /// 策略类型 (1: 短线, 2: 中线, 3: 长线)
  @JsonKey(name: 'strategyType')
  int get strategyType => throw _privateConstructorUsedError;

  /// 价格类型 (1: 限价, 2: 市价)
  @JsonKey(name: 'priceType')
  int get priceType => throw _privateConstructorUsedError;

  /// 目标价格
  @JsonKey(name: 'targetPrice')
  double get targetPrice => throw _privateConstructorUsedError;

  /// 止盈价格
  @JsonKey(name: 'takeProfitPrice')
  double get takeProfitPrice => throw _privateConstructorUsedError;

  /// 止损价格
  @JsonKey(name: 'stopLossPrice')
  double get stopLossPrice => throw _privateConstructorUsedError;

  /// 有效期开始时间
  @JsonKey(name: 'validFrom')
  String get validFrom => throw _privateConstructorUsedError;

  /// 有效期结束时间
  @JsonKey(name: 'validTo')
  String get validTo => throw _privateConstructorUsedError;

  /// Serializes this StrategyPublishRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StrategyPublishRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StrategyPublishRequestCopyWith<StrategyPublishRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StrategyPublishRequestCopyWith<$Res> {
  factory $StrategyPublishRequestCopyWith(StrategyPublishRequest value,
          $Res Function(StrategyPublishRequest) then) =
      _$StrategyPublishRequestCopyWithImpl<$Res, StrategyPublishRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'traderId') int traderId,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'summary') String summary,
      @JsonKey(name: 'content') String content,
      @JsonKey(name: 'coinSymbol') String coinSymbol,
      @JsonKey(name: 'strategyType') int strategyType,
      @JsonKey(name: 'priceType') int priceType,
      @JsonKey(name: 'targetPrice') double targetPrice,
      @JsonKey(name: 'takeProfitPrice') double takeProfitPrice,
      @JsonKey(name: 'stopLossPrice') double stopLossPrice,
      @JsonKey(name: 'validFrom') String validFrom,
      @JsonKey(name: 'validTo') String validTo});
}

/// @nodoc
class _$StrategyPublishRequestCopyWithImpl<$Res,
        $Val extends StrategyPublishRequest>
    implements $StrategyPublishRequestCopyWith<$Res> {
  _$StrategyPublishRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StrategyPublishRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? traderId = null,
    Object? title = null,
    Object? summary = null,
    Object? content = null,
    Object? coinSymbol = null,
    Object? strategyType = null,
    Object? priceType = null,
    Object? targetPrice = null,
    Object? takeProfitPrice = null,
    Object? stopLossPrice = null,
    Object? validFrom = null,
    Object? validTo = null,
  }) {
    return _then(_value.copyWith(
      traderId: null == traderId
          ? _value.traderId
          : traderId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      coinSymbol: null == coinSymbol
          ? _value.coinSymbol
          : coinSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      strategyType: null == strategyType
          ? _value.strategyType
          : strategyType // ignore: cast_nullable_to_non_nullable
              as int,
      priceType: null == priceType
          ? _value.priceType
          : priceType // ignore: cast_nullable_to_non_nullable
              as int,
      targetPrice: null == targetPrice
          ? _value.targetPrice
          : targetPrice // ignore: cast_nullable_to_non_nullable
              as double,
      takeProfitPrice: null == takeProfitPrice
          ? _value.takeProfitPrice
          : takeProfitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      stopLossPrice: null == stopLossPrice
          ? _value.stopLossPrice
          : stopLossPrice // ignore: cast_nullable_to_non_nullable
              as double,
      validFrom: null == validFrom
          ? _value.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as String,
      validTo: null == validTo
          ? _value.validTo
          : validTo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StrategyPublishRequestImplCopyWith<$Res>
    implements $StrategyPublishRequestCopyWith<$Res> {
  factory _$$StrategyPublishRequestImplCopyWith(
          _$StrategyPublishRequestImpl value,
          $Res Function(_$StrategyPublishRequestImpl) then) =
      __$$StrategyPublishRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'traderId') int traderId,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'summary') String summary,
      @JsonKey(name: 'content') String content,
      @JsonKey(name: 'coinSymbol') String coinSymbol,
      @JsonKey(name: 'strategyType') int strategyType,
      @JsonKey(name: 'priceType') int priceType,
      @JsonKey(name: 'targetPrice') double targetPrice,
      @JsonKey(name: 'takeProfitPrice') double takeProfitPrice,
      @JsonKey(name: 'stopLossPrice') double stopLossPrice,
      @JsonKey(name: 'validFrom') String validFrom,
      @JsonKey(name: 'validTo') String validTo});
}

/// @nodoc
class __$$StrategyPublishRequestImplCopyWithImpl<$Res>
    extends _$StrategyPublishRequestCopyWithImpl<$Res,
        _$StrategyPublishRequestImpl>
    implements _$$StrategyPublishRequestImplCopyWith<$Res> {
  __$$StrategyPublishRequestImplCopyWithImpl(
      _$StrategyPublishRequestImpl _value,
      $Res Function(_$StrategyPublishRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of StrategyPublishRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? traderId = null,
    Object? title = null,
    Object? summary = null,
    Object? content = null,
    Object? coinSymbol = null,
    Object? strategyType = null,
    Object? priceType = null,
    Object? targetPrice = null,
    Object? takeProfitPrice = null,
    Object? stopLossPrice = null,
    Object? validFrom = null,
    Object? validTo = null,
  }) {
    return _then(_$StrategyPublishRequestImpl(
      traderId: null == traderId
          ? _value.traderId
          : traderId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      coinSymbol: null == coinSymbol
          ? _value.coinSymbol
          : coinSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      strategyType: null == strategyType
          ? _value.strategyType
          : strategyType // ignore: cast_nullable_to_non_nullable
              as int,
      priceType: null == priceType
          ? _value.priceType
          : priceType // ignore: cast_nullable_to_non_nullable
              as int,
      targetPrice: null == targetPrice
          ? _value.targetPrice
          : targetPrice // ignore: cast_nullable_to_non_nullable
              as double,
      takeProfitPrice: null == takeProfitPrice
          ? _value.takeProfitPrice
          : takeProfitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      stopLossPrice: null == stopLossPrice
          ? _value.stopLossPrice
          : stopLossPrice // ignore: cast_nullable_to_non_nullable
              as double,
      validFrom: null == validFrom
          ? _value.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as String,
      validTo: null == validTo
          ? _value.validTo
          : validTo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StrategyPublishRequestImpl implements _StrategyPublishRequest {
  const _$StrategyPublishRequestImpl(
      {@JsonKey(name: 'traderId') required this.traderId,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'summary') required this.summary,
      @JsonKey(name: 'content') required this.content,
      @JsonKey(name: 'coinSymbol') required this.coinSymbol,
      @JsonKey(name: 'strategyType') required this.strategyType,
      @JsonKey(name: 'priceType') required this.priceType,
      @JsonKey(name: 'targetPrice') required this.targetPrice,
      @JsonKey(name: 'takeProfitPrice') required this.takeProfitPrice,
      @JsonKey(name: 'stopLossPrice') required this.stopLossPrice,
      @JsonKey(name: 'validFrom') required this.validFrom,
      @JsonKey(name: 'validTo') required this.validTo});

  factory _$StrategyPublishRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$StrategyPublishRequestImplFromJson(json);

  /// 交易员ID
  @override
  @JsonKey(name: 'traderId')
  final int traderId;

  /// 策略标题
  @override
  @JsonKey(name: 'title')
  final String title;

  /// 策略简介
  @override
  @JsonKey(name: 'summary')
  final String summary;

  /// 具体交易方案
  @override
  @JsonKey(name: 'content')
  final String content;

  /// 币种符号
  @override
  @JsonKey(name: 'coinSymbol')
  final String coinSymbol;

  /// 策略类型 (1: 短线, 2: 中线, 3: 长线)
  @override
  @JsonKey(name: 'strategyType')
  final int strategyType;

  /// 价格类型 (1: 限价, 2: 市价)
  @override
  @JsonKey(name: 'priceType')
  final int priceType;

  /// 目标价格
  @override
  @JsonKey(name: 'targetPrice')
  final double targetPrice;

  /// 止盈价格
  @override
  @JsonKey(name: 'takeProfitPrice')
  final double takeProfitPrice;

  /// 止损价格
  @override
  @JsonKey(name: 'stopLossPrice')
  final double stopLossPrice;

  /// 有效期开始时间
  @override
  @JsonKey(name: 'validFrom')
  final String validFrom;

  /// 有效期结束时间
  @override
  @JsonKey(name: 'validTo')
  final String validTo;

  @override
  String toString() {
    return 'StrategyPublishRequest(traderId: $traderId, title: $title, summary: $summary, content: $content, coinSymbol: $coinSymbol, strategyType: $strategyType, priceType: $priceType, targetPrice: $targetPrice, takeProfitPrice: $takeProfitPrice, stopLossPrice: $stopLossPrice, validFrom: $validFrom, validTo: $validTo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StrategyPublishRequestImpl &&
            (identical(other.traderId, traderId) ||
                other.traderId == traderId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.coinSymbol, coinSymbol) ||
                other.coinSymbol == coinSymbol) &&
            (identical(other.strategyType, strategyType) ||
                other.strategyType == strategyType) &&
            (identical(other.priceType, priceType) ||
                other.priceType == priceType) &&
            (identical(other.targetPrice, targetPrice) ||
                other.targetPrice == targetPrice) &&
            (identical(other.takeProfitPrice, takeProfitPrice) ||
                other.takeProfitPrice == takeProfitPrice) &&
            (identical(other.stopLossPrice, stopLossPrice) ||
                other.stopLossPrice == stopLossPrice) &&
            (identical(other.validFrom, validFrom) ||
                other.validFrom == validFrom) &&
            (identical(other.validTo, validTo) || other.validTo == validTo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      traderId,
      title,
      summary,
      content,
      coinSymbol,
      strategyType,
      priceType,
      targetPrice,
      takeProfitPrice,
      stopLossPrice,
      validFrom,
      validTo);

  /// Create a copy of StrategyPublishRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StrategyPublishRequestImplCopyWith<_$StrategyPublishRequestImpl>
      get copyWith => __$$StrategyPublishRequestImplCopyWithImpl<
          _$StrategyPublishRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StrategyPublishRequestImplToJson(
      this,
    );
  }
}

abstract class _StrategyPublishRequest implements StrategyPublishRequest {
  const factory _StrategyPublishRequest(
      {@JsonKey(name: 'traderId') required final int traderId,
      @JsonKey(name: 'title') required final String title,
      @JsonKey(name: 'summary') required final String summary,
      @JsonKey(name: 'content') required final String content,
      @JsonKey(name: 'coinSymbol') required final String coinSymbol,
      @JsonKey(name: 'strategyType') required final int strategyType,
      @JsonKey(name: 'priceType') required final int priceType,
      @JsonKey(name: 'targetPrice') required final double targetPrice,
      @JsonKey(name: 'takeProfitPrice') required final double takeProfitPrice,
      @JsonKey(name: 'stopLossPrice') required final double stopLossPrice,
      @JsonKey(name: 'validFrom') required final String validFrom,
      @JsonKey(name: 'validTo')
      required final String validTo}) = _$StrategyPublishRequestImpl;

  factory _StrategyPublishRequest.fromJson(Map<String, dynamic> json) =
      _$StrategyPublishRequestImpl.fromJson;

  /// 交易员ID
  @override
  @JsonKey(name: 'traderId')
  int get traderId;

  /// 策略标题
  @override
  @JsonKey(name: 'title')
  String get title;

  /// 策略简介
  @override
  @JsonKey(name: 'summary')
  String get summary;

  /// 具体交易方案
  @override
  @JsonKey(name: 'content')
  String get content;

  /// 币种符号
  @override
  @JsonKey(name: 'coinSymbol')
  String get coinSymbol;

  /// 策略类型 (1: 短线, 2: 中线, 3: 长线)
  @override
  @JsonKey(name: 'strategyType')
  int get strategyType;

  /// 价格类型 (1: 限价, 2: 市价)
  @override
  @JsonKey(name: 'priceType')
  int get priceType;

  /// 目标价格
  @override
  @JsonKey(name: 'targetPrice')
  double get targetPrice;

  /// 止盈价格
  @override
  @JsonKey(name: 'takeProfitPrice')
  double get takeProfitPrice;

  /// 止损价格
  @override
  @JsonKey(name: 'stopLossPrice')
  double get stopLossPrice;

  /// 有效期开始时间
  @override
  @JsonKey(name: 'validFrom')
  String get validFrom;

  /// 有效期结束时间
  @override
  @JsonKey(name: 'validTo')
  String get validTo;

  /// Create a copy of StrategyPublishRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StrategyPublishRequestImplCopyWith<_$StrategyPublishRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
