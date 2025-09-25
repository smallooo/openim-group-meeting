// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'strategy_detail_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StrategyDetailData _$StrategyDetailDataFromJson(Map<String, dynamic> json) {
  return _StrategyDetailData.fromJson(json);
}

/// @nodoc
mixin _$StrategyDetailData {
  /// 策略ID
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;

  /// 交易员ID
  @JsonKey(name: 'traderId')
  String get traderId => throw _privateConstructorUsedError;

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

  /// 策略类型
  @JsonKey(name: 'strategyType')
  int get strategyType => throw _privateConstructorUsedError;

  /// 价格类型
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

  /// 查看次数
  @JsonKey(name: 'viewCount')
  String get viewCount => throw _privateConstructorUsedError;

  /// 关注次数
  @JsonKey(name: 'followCount')
  int get followCount => throw _privateConstructorUsedError;

  /// 平均评分
  @JsonKey(name: 'avgRating')
  double get avgRating => throw _privateConstructorUsedError;

  /// 评分次数
  @JsonKey(name: 'ratingCount')
  int get ratingCount => throw _privateConstructorUsedError;

  /// 状态
  @JsonKey(name: 'status')
  int get status => throw _privateConstructorUsedError;

  /// 版本
  @JsonKey(name: 'version')
  String get version => throw _privateConstructorUsedError;

  /// 是否删除
  @JsonKey(name: 'isDeleted')
  int get isDeleted => throw _privateConstructorUsedError;

  /// 创建者
  @JsonKey(name: 'createdBy')
  String? get createdBy => throw _privateConstructorUsedError;

  /// 更新者
  @JsonKey(name: 'updatedBy')
  String? get updatedBy => throw _privateConstructorUsedError;

  /// 创建时间
  @JsonKey(name: 'createdAt')
  String get createdAt => throw _privateConstructorUsedError;

  /// 更新时间
  @JsonKey(name: 'updatedAt')
  String get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this StrategyDetailData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StrategyDetailData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StrategyDetailDataCopyWith<StrategyDetailData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StrategyDetailDataCopyWith<$Res> {
  factory $StrategyDetailDataCopyWith(
          StrategyDetailData value, $Res Function(StrategyDetailData) then) =
      _$StrategyDetailDataCopyWithImpl<$Res, StrategyDetailData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'traderId') String traderId,
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
      @JsonKey(name: 'validTo') String validTo,
      @JsonKey(name: 'viewCount') String viewCount,
      @JsonKey(name: 'followCount') int followCount,
      @JsonKey(name: 'avgRating') double avgRating,
      @JsonKey(name: 'ratingCount') int ratingCount,
      @JsonKey(name: 'status') int status,
      @JsonKey(name: 'version') String version,
      @JsonKey(name: 'isDeleted') int isDeleted,
      @JsonKey(name: 'createdBy') String? createdBy,
      @JsonKey(name: 'updatedBy') String? updatedBy,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'updatedAt') String updatedAt});
}

/// @nodoc
class _$StrategyDetailDataCopyWithImpl<$Res, $Val extends StrategyDetailData>
    implements $StrategyDetailDataCopyWith<$Res> {
  _$StrategyDetailDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StrategyDetailData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
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
    Object? viewCount = null,
    Object? followCount = null,
    Object? avgRating = null,
    Object? ratingCount = null,
    Object? status = null,
    Object? version = null,
    Object? isDeleted = null,
    Object? createdBy = freezed,
    Object? updatedBy = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      traderId: null == traderId
          ? _value.traderId
          : traderId // ignore: cast_nullable_to_non_nullable
              as String,
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
      viewCount: null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as String,
      followCount: null == followCount
          ? _value.followCount
          : followCount // ignore: cast_nullable_to_non_nullable
              as int,
      avgRating: null == avgRating
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as double,
      ratingCount: null == ratingCount
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as int,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedBy: freezed == updatedBy
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$StrategyDetailDataImplCopyWith<$Res>
    implements $StrategyDetailDataCopyWith<$Res> {
  factory _$$StrategyDetailDataImplCopyWith(_$StrategyDetailDataImpl value,
          $Res Function(_$StrategyDetailDataImpl) then) =
      __$$StrategyDetailDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'traderId') String traderId,
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
      @JsonKey(name: 'validTo') String validTo,
      @JsonKey(name: 'viewCount') String viewCount,
      @JsonKey(name: 'followCount') int followCount,
      @JsonKey(name: 'avgRating') double avgRating,
      @JsonKey(name: 'ratingCount') int ratingCount,
      @JsonKey(name: 'status') int status,
      @JsonKey(name: 'version') String version,
      @JsonKey(name: 'isDeleted') int isDeleted,
      @JsonKey(name: 'createdBy') String? createdBy,
      @JsonKey(name: 'updatedBy') String? updatedBy,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'updatedAt') String updatedAt});
}

/// @nodoc
class __$$StrategyDetailDataImplCopyWithImpl<$Res>
    extends _$StrategyDetailDataCopyWithImpl<$Res, _$StrategyDetailDataImpl>
    implements _$$StrategyDetailDataImplCopyWith<$Res> {
  __$$StrategyDetailDataImplCopyWithImpl(_$StrategyDetailDataImpl _value,
      $Res Function(_$StrategyDetailDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of StrategyDetailData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
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
    Object? viewCount = null,
    Object? followCount = null,
    Object? avgRating = null,
    Object? ratingCount = null,
    Object? status = null,
    Object? version = null,
    Object? isDeleted = null,
    Object? createdBy = freezed,
    Object? updatedBy = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$StrategyDetailDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      traderId: null == traderId
          ? _value.traderId
          : traderId // ignore: cast_nullable_to_non_nullable
              as String,
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
      viewCount: null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as String,
      followCount: null == followCount
          ? _value.followCount
          : followCount // ignore: cast_nullable_to_non_nullable
              as int,
      avgRating: null == avgRating
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as double,
      ratingCount: null == ratingCount
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as int,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedBy: freezed == updatedBy
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$StrategyDetailDataImpl implements _StrategyDetailData {
  const _$StrategyDetailDataImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'traderId') required this.traderId,
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
      @JsonKey(name: 'validTo') required this.validTo,
      @JsonKey(name: 'viewCount') required this.viewCount,
      @JsonKey(name: 'followCount') required this.followCount,
      @JsonKey(name: 'avgRating') required this.avgRating,
      @JsonKey(name: 'ratingCount') required this.ratingCount,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'version') required this.version,
      @JsonKey(name: 'isDeleted') required this.isDeleted,
      @JsonKey(name: 'createdBy') this.createdBy,
      @JsonKey(name: 'updatedBy') this.updatedBy,
      @JsonKey(name: 'createdAt') required this.createdAt,
      @JsonKey(name: 'updatedAt') required this.updatedAt});

  factory _$StrategyDetailDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$StrategyDetailDataImplFromJson(json);

  /// 策略ID
  @override
  @JsonKey(name: 'id')
  final String id;

  /// 交易员ID
  @override
  @JsonKey(name: 'traderId')
  final String traderId;

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

  /// 策略类型
  @override
  @JsonKey(name: 'strategyType')
  final int strategyType;

  /// 价格类型
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

  /// 查看次数
  @override
  @JsonKey(name: 'viewCount')
  final String viewCount;

  /// 关注次数
  @override
  @JsonKey(name: 'followCount')
  final int followCount;

  /// 平均评分
  @override
  @JsonKey(name: 'avgRating')
  final double avgRating;

  /// 评分次数
  @override
  @JsonKey(name: 'ratingCount')
  final int ratingCount;

  /// 状态
  @override
  @JsonKey(name: 'status')
  final int status;

  /// 版本
  @override
  @JsonKey(name: 'version')
  final String version;

  /// 是否删除
  @override
  @JsonKey(name: 'isDeleted')
  final int isDeleted;

  /// 创建者
  @override
  @JsonKey(name: 'createdBy')
  final String? createdBy;

  /// 更新者
  @override
  @JsonKey(name: 'updatedBy')
  final String? updatedBy;

  /// 创建时间
  @override
  @JsonKey(name: 'createdAt')
  final String createdAt;

  /// 更新时间
  @override
  @JsonKey(name: 'updatedAt')
  final String updatedAt;

  @override
  String toString() {
    return 'StrategyDetailData(id: $id, traderId: $traderId, title: $title, summary: $summary, content: $content, coinSymbol: $coinSymbol, strategyType: $strategyType, priceType: $priceType, targetPrice: $targetPrice, takeProfitPrice: $takeProfitPrice, stopLossPrice: $stopLossPrice, validFrom: $validFrom, validTo: $validTo, viewCount: $viewCount, followCount: $followCount, avgRating: $avgRating, ratingCount: $ratingCount, status: $status, version: $version, isDeleted: $isDeleted, createdBy: $createdBy, updatedBy: $updatedBy, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StrategyDetailDataImpl &&
            (identical(other.id, id) || other.id == id) &&
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
            (identical(other.validTo, validTo) || other.validTo == validTo) &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount) &&
            (identical(other.followCount, followCount) ||
                other.followCount == followCount) &&
            (identical(other.avgRating, avgRating) ||
                other.avgRating == avgRating) &&
            (identical(other.ratingCount, ratingCount) ||
                other.ratingCount == ratingCount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.updatedBy, updatedBy) ||
                other.updatedBy == updatedBy) &&
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
        validTo,
        viewCount,
        followCount,
        avgRating,
        ratingCount,
        status,
        version,
        isDeleted,
        createdBy,
        updatedBy,
        createdAt,
        updatedAt
      ]);

  /// Create a copy of StrategyDetailData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StrategyDetailDataImplCopyWith<_$StrategyDetailDataImpl> get copyWith =>
      __$$StrategyDetailDataImplCopyWithImpl<_$StrategyDetailDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StrategyDetailDataImplToJson(
      this,
    );
  }
}

abstract class _StrategyDetailData implements StrategyDetailData {
  const factory _StrategyDetailData(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'traderId') required final String traderId,
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
      @JsonKey(name: 'validTo') required final String validTo,
      @JsonKey(name: 'viewCount') required final String viewCount,
      @JsonKey(name: 'followCount') required final int followCount,
      @JsonKey(name: 'avgRating') required final double avgRating,
      @JsonKey(name: 'ratingCount') required final int ratingCount,
      @JsonKey(name: 'status') required final int status,
      @JsonKey(name: 'version') required final String version,
      @JsonKey(name: 'isDeleted') required final int isDeleted,
      @JsonKey(name: 'createdBy') final String? createdBy,
      @JsonKey(name: 'updatedBy') final String? updatedBy,
      @JsonKey(name: 'createdAt') required final String createdAt,
      @JsonKey(name: 'updatedAt')
      required final String updatedAt}) = _$StrategyDetailDataImpl;

  factory _StrategyDetailData.fromJson(Map<String, dynamic> json) =
      _$StrategyDetailDataImpl.fromJson;

  /// 策略ID
  @override
  @JsonKey(name: 'id')
  String get id;

  /// 交易员ID
  @override
  @JsonKey(name: 'traderId')
  String get traderId;

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

  /// 策略类型
  @override
  @JsonKey(name: 'strategyType')
  int get strategyType;

  /// 价格类型
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

  /// 查看次数
  @override
  @JsonKey(name: 'viewCount')
  String get viewCount;

  /// 关注次数
  @override
  @JsonKey(name: 'followCount')
  int get followCount;

  /// 平均评分
  @override
  @JsonKey(name: 'avgRating')
  double get avgRating;

  /// 评分次数
  @override
  @JsonKey(name: 'ratingCount')
  int get ratingCount;

  /// 状态
  @override
  @JsonKey(name: 'status')
  int get status;

  /// 版本
  @override
  @JsonKey(name: 'version')
  String get version;

  /// 是否删除
  @override
  @JsonKey(name: 'isDeleted')
  int get isDeleted;

  /// 创建者
  @override
  @JsonKey(name: 'createdBy')
  String? get createdBy;

  /// 更新者
  @override
  @JsonKey(name: 'updatedBy')
  String? get updatedBy;

  /// 创建时间
  @override
  @JsonKey(name: 'createdAt')
  String get createdAt;

  /// 更新时间
  @override
  @JsonKey(name: 'updatedAt')
  String get updatedAt;

  /// Create a copy of StrategyDetailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StrategyDetailDataImplCopyWith<_$StrategyDetailDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
