// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trader_apply_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TraderApplyRequest _$TraderApplyRequestFromJson(Map<String, dynamic> json) {
  return _TraderApplyRequest.fromJson(json);
}

/// @nodoc
mixin _$TraderApplyRequest {
  /// 交易员名称
  @JsonKey(name: 'traderName')
  String get traderName => throw _privateConstructorUsedError;

  /// 交易员头像
  @JsonKey(name: 'traderAvatar')
  String get traderAvatar => throw _privateConstructorUsedError;

  /// 个人简介
  @JsonKey(name: 'bio')
  String get bio => throw _privateConstructorUsedError;

  /// 价格配置数组
  @JsonKey(name: 'pricingConfigs')
  List<PricingConfig> get pricingConfigs => throw _privateConstructorUsedError;

  /// Serializes this TraderApplyRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TraderApplyRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TraderApplyRequestCopyWith<TraderApplyRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TraderApplyRequestCopyWith<$Res> {
  factory $TraderApplyRequestCopyWith(
          TraderApplyRequest value, $Res Function(TraderApplyRequest) then) =
      _$TraderApplyRequestCopyWithImpl<$Res, TraderApplyRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'traderName') String traderName,
      @JsonKey(name: 'traderAvatar') String traderAvatar,
      @JsonKey(name: 'bio') String bio,
      @JsonKey(name: 'pricingConfigs') List<PricingConfig> pricingConfigs});
}

/// @nodoc
class _$TraderApplyRequestCopyWithImpl<$Res, $Val extends TraderApplyRequest>
    implements $TraderApplyRequestCopyWith<$Res> {
  _$TraderApplyRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TraderApplyRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? traderName = null,
    Object? traderAvatar = null,
    Object? bio = null,
    Object? pricingConfigs = null,
  }) {
    return _then(_value.copyWith(
      traderName: null == traderName
          ? _value.traderName
          : traderName // ignore: cast_nullable_to_non_nullable
              as String,
      traderAvatar: null == traderAvatar
          ? _value.traderAvatar
          : traderAvatar // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      pricingConfigs: null == pricingConfigs
          ? _value.pricingConfigs
          : pricingConfigs // ignore: cast_nullable_to_non_nullable
              as List<PricingConfig>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TraderApplyRequestImplCopyWith<$Res>
    implements $TraderApplyRequestCopyWith<$Res> {
  factory _$$TraderApplyRequestImplCopyWith(_$TraderApplyRequestImpl value,
          $Res Function(_$TraderApplyRequestImpl) then) =
      __$$TraderApplyRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'traderName') String traderName,
      @JsonKey(name: 'traderAvatar') String traderAvatar,
      @JsonKey(name: 'bio') String bio,
      @JsonKey(name: 'pricingConfigs') List<PricingConfig> pricingConfigs});
}

/// @nodoc
class __$$TraderApplyRequestImplCopyWithImpl<$Res>
    extends _$TraderApplyRequestCopyWithImpl<$Res, _$TraderApplyRequestImpl>
    implements _$$TraderApplyRequestImplCopyWith<$Res> {
  __$$TraderApplyRequestImplCopyWithImpl(_$TraderApplyRequestImpl _value,
      $Res Function(_$TraderApplyRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of TraderApplyRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? traderName = null,
    Object? traderAvatar = null,
    Object? bio = null,
    Object? pricingConfigs = null,
  }) {
    return _then(_$TraderApplyRequestImpl(
      traderName: null == traderName
          ? _value.traderName
          : traderName // ignore: cast_nullable_to_non_nullable
              as String,
      traderAvatar: null == traderAvatar
          ? _value.traderAvatar
          : traderAvatar // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      pricingConfigs: null == pricingConfigs
          ? _value._pricingConfigs
          : pricingConfigs // ignore: cast_nullable_to_non_nullable
              as List<PricingConfig>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TraderApplyRequestImpl implements _TraderApplyRequest {
  const _$TraderApplyRequestImpl(
      {@JsonKey(name: 'traderName') required this.traderName,
      @JsonKey(name: 'traderAvatar') required this.traderAvatar,
      @JsonKey(name: 'bio') required this.bio,
      @JsonKey(name: 'pricingConfigs')
      required final List<PricingConfig> pricingConfigs})
      : _pricingConfigs = pricingConfigs;

  factory _$TraderApplyRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$TraderApplyRequestImplFromJson(json);

  /// 交易员名称
  @override
  @JsonKey(name: 'traderName')
  final String traderName;

  /// 交易员头像
  @override
  @JsonKey(name: 'traderAvatar')
  final String traderAvatar;

  /// 个人简介
  @override
  @JsonKey(name: 'bio')
  final String bio;

  /// 价格配置数组
  final List<PricingConfig> _pricingConfigs;

  /// 价格配置数组
  @override
  @JsonKey(name: 'pricingConfigs')
  List<PricingConfig> get pricingConfigs {
    if (_pricingConfigs is EqualUnmodifiableListView) return _pricingConfigs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pricingConfigs);
  }

  @override
  String toString() {
    return 'TraderApplyRequest(traderName: $traderName, traderAvatar: $traderAvatar, bio: $bio, pricingConfigs: $pricingConfigs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TraderApplyRequestImpl &&
            (identical(other.traderName, traderName) ||
                other.traderName == traderName) &&
            (identical(other.traderAvatar, traderAvatar) ||
                other.traderAvatar == traderAvatar) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            const DeepCollectionEquality()
                .equals(other._pricingConfigs, _pricingConfigs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, traderName, traderAvatar, bio,
      const DeepCollectionEquality().hash(_pricingConfigs));

  /// Create a copy of TraderApplyRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TraderApplyRequestImplCopyWith<_$TraderApplyRequestImpl> get copyWith =>
      __$$TraderApplyRequestImplCopyWithImpl<_$TraderApplyRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TraderApplyRequestImplToJson(
      this,
    );
  }
}

abstract class _TraderApplyRequest implements TraderApplyRequest {
  const factory _TraderApplyRequest(
          {@JsonKey(name: 'traderName') required final String traderName,
          @JsonKey(name: 'traderAvatar') required final String traderAvatar,
          @JsonKey(name: 'bio') required final String bio,
          @JsonKey(name: 'pricingConfigs')
          required final List<PricingConfig> pricingConfigs}) =
      _$TraderApplyRequestImpl;

  factory _TraderApplyRequest.fromJson(Map<String, dynamic> json) =
      _$TraderApplyRequestImpl.fromJson;

  /// 交易员名称
  @override
  @JsonKey(name: 'traderName')
  String get traderName;

  /// 交易员头像
  @override
  @JsonKey(name: 'traderAvatar')
  String get traderAvatar;

  /// 个人简介
  @override
  @JsonKey(name: 'bio')
  String get bio;

  /// 价格配置数组
  @override
  @JsonKey(name: 'pricingConfigs')
  List<PricingConfig> get pricingConfigs;

  /// Create a copy of TraderApplyRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TraderApplyRequestImplCopyWith<_$TraderApplyRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PricingConfig _$PricingConfigFromJson(Map<String, dynamic> json) {
  return _PricingConfig.fromJson(json);
}

/// @nodoc
mixin _$PricingConfig {
  /// 交易员ID (默认为0)
  @JsonKey(name: 'traderId')
  int get traderId => throw _privateConstructorUsedError;

  /// 策略类型 (SPOT-现货, FUTURES-合约)
  @JsonKey(name: 'strategyType')
  String get strategyType => throw _privateConstructorUsedError;

  /// 月订阅费
  @JsonKey(name: 'monthlyPrice')
  double get monthlyPrice => throw _privateConstructorUsedError;

  /// 季度订阅费
  @JsonKey(name: 'quarterlyPrice')
  double get quarterlyPrice => throw _privateConstructorUsedError;

  /// 年订阅费
  @JsonKey(name: 'yearlyPrice')
  double get yearlyPrice => throw _privateConstructorUsedError;

  /// 货币单位 (默认CNY)
  @JsonKey(name: 'currency')
  String get currency => throw _privateConstructorUsedError;

  /// Serializes this PricingConfig to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PricingConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PricingConfigCopyWith<PricingConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PricingConfigCopyWith<$Res> {
  factory $PricingConfigCopyWith(
          PricingConfig value, $Res Function(PricingConfig) then) =
      _$PricingConfigCopyWithImpl<$Res, PricingConfig>;
  @useResult
  $Res call(
      {@JsonKey(name: 'traderId') int traderId,
      @JsonKey(name: 'strategyType') String strategyType,
      @JsonKey(name: 'monthlyPrice') double monthlyPrice,
      @JsonKey(name: 'quarterlyPrice') double quarterlyPrice,
      @JsonKey(name: 'yearlyPrice') double yearlyPrice,
      @JsonKey(name: 'currency') String currency});
}

/// @nodoc
class _$PricingConfigCopyWithImpl<$Res, $Val extends PricingConfig>
    implements $PricingConfigCopyWith<$Res> {
  _$PricingConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PricingConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? traderId = null,
    Object? strategyType = null,
    Object? monthlyPrice = null,
    Object? quarterlyPrice = null,
    Object? yearlyPrice = null,
    Object? currency = null,
  }) {
    return _then(_value.copyWith(
      traderId: null == traderId
          ? _value.traderId
          : traderId // ignore: cast_nullable_to_non_nullable
              as int,
      strategyType: null == strategyType
          ? _value.strategyType
          : strategyType // ignore: cast_nullable_to_non_nullable
              as String,
      monthlyPrice: null == monthlyPrice
          ? _value.monthlyPrice
          : monthlyPrice // ignore: cast_nullable_to_non_nullable
              as double,
      quarterlyPrice: null == quarterlyPrice
          ? _value.quarterlyPrice
          : quarterlyPrice // ignore: cast_nullable_to_non_nullable
              as double,
      yearlyPrice: null == yearlyPrice
          ? _value.yearlyPrice
          : yearlyPrice // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PricingConfigImplCopyWith<$Res>
    implements $PricingConfigCopyWith<$Res> {
  factory _$$PricingConfigImplCopyWith(
          _$PricingConfigImpl value, $Res Function(_$PricingConfigImpl) then) =
      __$$PricingConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'traderId') int traderId,
      @JsonKey(name: 'strategyType') String strategyType,
      @JsonKey(name: 'monthlyPrice') double monthlyPrice,
      @JsonKey(name: 'quarterlyPrice') double quarterlyPrice,
      @JsonKey(name: 'yearlyPrice') double yearlyPrice,
      @JsonKey(name: 'currency') String currency});
}

/// @nodoc
class __$$PricingConfigImplCopyWithImpl<$Res>
    extends _$PricingConfigCopyWithImpl<$Res, _$PricingConfigImpl>
    implements _$$PricingConfigImplCopyWith<$Res> {
  __$$PricingConfigImplCopyWithImpl(
      _$PricingConfigImpl _value, $Res Function(_$PricingConfigImpl) _then)
      : super(_value, _then);

  /// Create a copy of PricingConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? traderId = null,
    Object? strategyType = null,
    Object? monthlyPrice = null,
    Object? quarterlyPrice = null,
    Object? yearlyPrice = null,
    Object? currency = null,
  }) {
    return _then(_$PricingConfigImpl(
      traderId: null == traderId
          ? _value.traderId
          : traderId // ignore: cast_nullable_to_non_nullable
              as int,
      strategyType: null == strategyType
          ? _value.strategyType
          : strategyType // ignore: cast_nullable_to_non_nullable
              as String,
      monthlyPrice: null == monthlyPrice
          ? _value.monthlyPrice
          : monthlyPrice // ignore: cast_nullable_to_non_nullable
              as double,
      quarterlyPrice: null == quarterlyPrice
          ? _value.quarterlyPrice
          : quarterlyPrice // ignore: cast_nullable_to_non_nullable
              as double,
      yearlyPrice: null == yearlyPrice
          ? _value.yearlyPrice
          : yearlyPrice // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PricingConfigImpl implements _PricingConfig {
  const _$PricingConfigImpl(
      {@JsonKey(name: 'traderId') this.traderId = 0,
      @JsonKey(name: 'strategyType') required this.strategyType,
      @JsonKey(name: 'monthlyPrice') required this.monthlyPrice,
      @JsonKey(name: 'quarterlyPrice') required this.quarterlyPrice,
      @JsonKey(name: 'yearlyPrice') required this.yearlyPrice,
      @JsonKey(name: 'currency') this.currency = 'CNY'});

  factory _$PricingConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$PricingConfigImplFromJson(json);

  /// 交易员ID (默认为0)
  @override
  @JsonKey(name: 'traderId')
  final int traderId;

  /// 策略类型 (SPOT-现货, FUTURES-合约)
  @override
  @JsonKey(name: 'strategyType')
  final String strategyType;

  /// 月订阅费
  @override
  @JsonKey(name: 'monthlyPrice')
  final double monthlyPrice;

  /// 季度订阅费
  @override
  @JsonKey(name: 'quarterlyPrice')
  final double quarterlyPrice;

  /// 年订阅费
  @override
  @JsonKey(name: 'yearlyPrice')
  final double yearlyPrice;

  /// 货币单位 (默认CNY)
  @override
  @JsonKey(name: 'currency')
  final String currency;

  @override
  String toString() {
    return 'PricingConfig(traderId: $traderId, strategyType: $strategyType, monthlyPrice: $monthlyPrice, quarterlyPrice: $quarterlyPrice, yearlyPrice: $yearlyPrice, currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PricingConfigImpl &&
            (identical(other.traderId, traderId) ||
                other.traderId == traderId) &&
            (identical(other.strategyType, strategyType) ||
                other.strategyType == strategyType) &&
            (identical(other.monthlyPrice, monthlyPrice) ||
                other.monthlyPrice == monthlyPrice) &&
            (identical(other.quarterlyPrice, quarterlyPrice) ||
                other.quarterlyPrice == quarterlyPrice) &&
            (identical(other.yearlyPrice, yearlyPrice) ||
                other.yearlyPrice == yearlyPrice) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, traderId, strategyType,
      monthlyPrice, quarterlyPrice, yearlyPrice, currency);

  /// Create a copy of PricingConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PricingConfigImplCopyWith<_$PricingConfigImpl> get copyWith =>
      __$$PricingConfigImplCopyWithImpl<_$PricingConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PricingConfigImplToJson(
      this,
    );
  }
}

abstract class _PricingConfig implements PricingConfig {
  const factory _PricingConfig(
      {@JsonKey(name: 'traderId') final int traderId,
      @JsonKey(name: 'strategyType') required final String strategyType,
      @JsonKey(name: 'monthlyPrice') required final double monthlyPrice,
      @JsonKey(name: 'quarterlyPrice') required final double quarterlyPrice,
      @JsonKey(name: 'yearlyPrice') required final double yearlyPrice,
      @JsonKey(name: 'currency') final String currency}) = _$PricingConfigImpl;

  factory _PricingConfig.fromJson(Map<String, dynamic> json) =
      _$PricingConfigImpl.fromJson;

  /// 交易员ID (默认为0)
  @override
  @JsonKey(name: 'traderId')
  int get traderId;

  /// 策略类型 (SPOT-现货, FUTURES-合约)
  @override
  @JsonKey(name: 'strategyType')
  String get strategyType;

  /// 月订阅费
  @override
  @JsonKey(name: 'monthlyPrice')
  double get monthlyPrice;

  /// 季度订阅费
  @override
  @JsonKey(name: 'quarterlyPrice')
  double get quarterlyPrice;

  /// 年订阅费
  @override
  @JsonKey(name: 'yearlyPrice')
  double get yearlyPrice;

  /// 货币单位 (默认CNY)
  @override
  @JsonKey(name: 'currency')
  String get currency;

  /// Create a copy of PricingConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PricingConfigImplCopyWith<_$PricingConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
