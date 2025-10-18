// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_fund_currency_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WalletFundCurrencyData _$WalletFundCurrencyDataFromJson(
    Map<String, dynamic> json) {
  return _WalletFundCurrencyData.fromJson(json);
}

/// @nodoc
mixin _$WalletFundCurrencyData {
  /// 资金ID
  String get id => throw _privateConstructorUsedError;

  /// 会员ID
  String get memberId => throw _privateConstructorUsedError;

  /// 货币ID
  int get currencyId => throw _privateConstructorUsedError;

  /// 货币名称
  String get currencyName => throw _privateConstructorUsedError;

  /// 可用金额
  double get availableAmount => throw _privateConstructorUsedError;

  /// 冻结金额
  double get frozenAmount => throw _privateConstructorUsedError;

  /// 总金额
  double get totalAmount => throw _privateConstructorUsedError;

  /// 版本号
  int get version => throw _privateConstructorUsedError;

  /// 状态
  int get status => throw _privateConstructorUsedError;

  /// 创建时间
  String get createdAt => throw _privateConstructorUsedError;

  /// 更新时间
  String get updatedAt => throw _privateConstructorUsedError;

  /// 是否删除
  int get isDeleted => throw _privateConstructorUsedError;

  /// Serializes this WalletFundCurrencyData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WalletFundCurrencyData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalletFundCurrencyDataCopyWith<WalletFundCurrencyData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletFundCurrencyDataCopyWith<$Res> {
  factory $WalletFundCurrencyDataCopyWith(WalletFundCurrencyData value,
          $Res Function(WalletFundCurrencyData) then) =
      _$WalletFundCurrencyDataCopyWithImpl<$Res, WalletFundCurrencyData>;
  @useResult
  $Res call(
      {String id,
      String memberId,
      int currencyId,
      String currencyName,
      double availableAmount,
      double frozenAmount,
      double totalAmount,
      int version,
      int status,
      String createdAt,
      String updatedAt,
      int isDeleted});
}

/// @nodoc
class _$WalletFundCurrencyDataCopyWithImpl<$Res,
        $Val extends WalletFundCurrencyData>
    implements $WalletFundCurrencyDataCopyWith<$Res> {
  _$WalletFundCurrencyDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletFundCurrencyData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? memberId = null,
    Object? currencyId = null,
    Object? currencyName = null,
    Object? availableAmount = null,
    Object? frozenAmount = null,
    Object? totalAmount = null,
    Object? version = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? isDeleted = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as String,
      currencyId: null == currencyId
          ? _value.currencyId
          : currencyId // ignore: cast_nullable_to_non_nullable
              as int,
      currencyName: null == currencyName
          ? _value.currencyName
          : currencyName // ignore: cast_nullable_to_non_nullable
              as String,
      availableAmount: null == availableAmount
          ? _value.availableAmount
          : availableAmount // ignore: cast_nullable_to_non_nullable
              as double,
      frozenAmount: null == frozenAmount
          ? _value.frozenAmount
          : frozenAmount // ignore: cast_nullable_to_non_nullable
              as double,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalletFundCurrencyDataImplCopyWith<$Res>
    implements $WalletFundCurrencyDataCopyWith<$Res> {
  factory _$$WalletFundCurrencyDataImplCopyWith(
          _$WalletFundCurrencyDataImpl value,
          $Res Function(_$WalletFundCurrencyDataImpl) then) =
      __$$WalletFundCurrencyDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String memberId,
      int currencyId,
      String currencyName,
      double availableAmount,
      double frozenAmount,
      double totalAmount,
      int version,
      int status,
      String createdAt,
      String updatedAt,
      int isDeleted});
}

/// @nodoc
class __$$WalletFundCurrencyDataImplCopyWithImpl<$Res>
    extends _$WalletFundCurrencyDataCopyWithImpl<$Res,
        _$WalletFundCurrencyDataImpl>
    implements _$$WalletFundCurrencyDataImplCopyWith<$Res> {
  __$$WalletFundCurrencyDataImplCopyWithImpl(
      _$WalletFundCurrencyDataImpl _value,
      $Res Function(_$WalletFundCurrencyDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletFundCurrencyData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? memberId = null,
    Object? currencyId = null,
    Object? currencyName = null,
    Object? availableAmount = null,
    Object? frozenAmount = null,
    Object? totalAmount = null,
    Object? version = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? isDeleted = null,
  }) {
    return _then(_$WalletFundCurrencyDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as String,
      currencyId: null == currencyId
          ? _value.currencyId
          : currencyId // ignore: cast_nullable_to_non_nullable
              as int,
      currencyName: null == currencyName
          ? _value.currencyName
          : currencyName // ignore: cast_nullable_to_non_nullable
              as String,
      availableAmount: null == availableAmount
          ? _value.availableAmount
          : availableAmount // ignore: cast_nullable_to_non_nullable
              as double,
      frozenAmount: null == frozenAmount
          ? _value.frozenAmount
          : frozenAmount // ignore: cast_nullable_to_non_nullable
              as double,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletFundCurrencyDataImpl implements _WalletFundCurrencyData {
  const _$WalletFundCurrencyDataImpl(
      {required this.id,
      required this.memberId,
      required this.currencyId,
      required this.currencyName,
      required this.availableAmount,
      required this.frozenAmount,
      required this.totalAmount,
      required this.version,
      required this.status,
      required this.createdAt,
      required this.updatedAt,
      required this.isDeleted});

  factory _$WalletFundCurrencyDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletFundCurrencyDataImplFromJson(json);

  /// 资金ID
  @override
  final String id;

  /// 会员ID
  @override
  final String memberId;

  /// 货币ID
  @override
  final int currencyId;

  /// 货币名称
  @override
  final String currencyName;

  /// 可用金额
  @override
  final double availableAmount;

  /// 冻结金额
  @override
  final double frozenAmount;

  /// 总金额
  @override
  final double totalAmount;

  /// 版本号
  @override
  final int version;

  /// 状态
  @override
  final int status;

  /// 创建时间
  @override
  final String createdAt;

  /// 更新时间
  @override
  final String updatedAt;

  /// 是否删除
  @override
  final int isDeleted;

  @override
  String toString() {
    return 'WalletFundCurrencyData(id: $id, memberId: $memberId, currencyId: $currencyId, currencyName: $currencyName, availableAmount: $availableAmount, frozenAmount: $frozenAmount, totalAmount: $totalAmount, version: $version, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, isDeleted: $isDeleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletFundCurrencyDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.currencyId, currencyId) ||
                other.currencyId == currencyId) &&
            (identical(other.currencyName, currencyName) ||
                other.currencyName == currencyName) &&
            (identical(other.availableAmount, availableAmount) ||
                other.availableAmount == availableAmount) &&
            (identical(other.frozenAmount, frozenAmount) ||
                other.frozenAmount == frozenAmount) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      memberId,
      currencyId,
      currencyName,
      availableAmount,
      frozenAmount,
      totalAmount,
      version,
      status,
      createdAt,
      updatedAt,
      isDeleted);

  /// Create a copy of WalletFundCurrencyData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletFundCurrencyDataImplCopyWith<_$WalletFundCurrencyDataImpl>
      get copyWith => __$$WalletFundCurrencyDataImplCopyWithImpl<
          _$WalletFundCurrencyDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletFundCurrencyDataImplToJson(
      this,
    );
  }
}

abstract class _WalletFundCurrencyData implements WalletFundCurrencyData {
  const factory _WalletFundCurrencyData(
      {required final String id,
      required final String memberId,
      required final int currencyId,
      required final String currencyName,
      required final double availableAmount,
      required final double frozenAmount,
      required final double totalAmount,
      required final int version,
      required final int status,
      required final String createdAt,
      required final String updatedAt,
      required final int isDeleted}) = _$WalletFundCurrencyDataImpl;

  factory _WalletFundCurrencyData.fromJson(Map<String, dynamic> json) =
      _$WalletFundCurrencyDataImpl.fromJson;

  /// 资金ID
  @override
  String get id;

  /// 会员ID
  @override
  String get memberId;

  /// 货币ID
  @override
  int get currencyId;

  /// 货币名称
  @override
  String get currencyName;

  /// 可用金额
  @override
  double get availableAmount;

  /// 冻结金额
  @override
  double get frozenAmount;

  /// 总金额
  @override
  double get totalAmount;

  /// 版本号
  @override
  int get version;

  /// 状态
  @override
  int get status;

  /// 创建时间
  @override
  String get createdAt;

  /// 更新时间
  @override
  String get updatedAt;

  /// 是否删除
  @override
  int get isDeleted;

  /// Create a copy of WalletFundCurrencyData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletFundCurrencyDataImplCopyWith<_$WalletFundCurrencyDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
