// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_fund_summary_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WalletFundCurrencyItem _$WalletFundCurrencyItemFromJson(
    Map<String, dynamic> json) {
  return _WalletFundCurrencyItem.fromJson(json);
}

/// @nodoc
mixin _$WalletFundCurrencyItem {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'memberId')
  String get memberId => throw _privateConstructorUsedError;
  @JsonKey(name: 'currencyId')
  int get currencyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'currencyName')
  String get currencyName => throw _privateConstructorUsedError;
  @JsonKey(name: 'availableAmount')
  @DecimalConverter()
  Decimal get availableAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'frozenAmount')
  @DecimalConverter()
  Decimal get frozenAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalAmount')
  @DecimalConverter()
  Decimal get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'version')
  int get version => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  int get status =>
      throw _privateConstructorUsedError; // 时间格式为 "yyyy-MM-dd HH:mm:ss"，这里先按字符串保存
  @JsonKey(name: 'createdAt')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  String get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'isDeleted')
  int get isDeleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletFundCurrencyItemCopyWith<WalletFundCurrencyItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletFundCurrencyItemCopyWith<$Res> {
  factory $WalletFundCurrencyItemCopyWith(WalletFundCurrencyItem value,
          $Res Function(WalletFundCurrencyItem) then) =
      _$WalletFundCurrencyItemCopyWithImpl<$Res, WalletFundCurrencyItem>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'memberId') String memberId,
      @JsonKey(name: 'currencyId') int currencyId,
      @JsonKey(name: 'currencyName') String currencyName,
      @JsonKey(name: 'availableAmount')
      @DecimalConverter()
      Decimal availableAmount,
      @JsonKey(name: 'frozenAmount') @DecimalConverter() Decimal frozenAmount,
      @JsonKey(name: 'totalAmount') @DecimalConverter() Decimal totalAmount,
      @JsonKey(name: 'version') int version,
      @JsonKey(name: 'status') int status,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'updatedAt') String updatedAt,
      @JsonKey(name: 'isDeleted') int isDeleted});
}

/// @nodoc
class _$WalletFundCurrencyItemCopyWithImpl<$Res,
        $Val extends WalletFundCurrencyItem>
    implements $WalletFundCurrencyItemCopyWith<$Res> {
  _$WalletFundCurrencyItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
              as Decimal,
      frozenAmount: null == frozenAmount
          ? _value.frozenAmount
          : frozenAmount // ignore: cast_nullable_to_non_nullable
              as Decimal,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as Decimal,
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
abstract class _$$WalletFundCurrencyItemImplCopyWith<$Res>
    implements $WalletFundCurrencyItemCopyWith<$Res> {
  factory _$$WalletFundCurrencyItemImplCopyWith(
          _$WalletFundCurrencyItemImpl value,
          $Res Function(_$WalletFundCurrencyItemImpl) then) =
      __$$WalletFundCurrencyItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'memberId') String memberId,
      @JsonKey(name: 'currencyId') int currencyId,
      @JsonKey(name: 'currencyName') String currencyName,
      @JsonKey(name: 'availableAmount')
      @DecimalConverter()
      Decimal availableAmount,
      @JsonKey(name: 'frozenAmount') @DecimalConverter() Decimal frozenAmount,
      @JsonKey(name: 'totalAmount') @DecimalConverter() Decimal totalAmount,
      @JsonKey(name: 'version') int version,
      @JsonKey(name: 'status') int status,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'updatedAt') String updatedAt,
      @JsonKey(name: 'isDeleted') int isDeleted});
}

/// @nodoc
class __$$WalletFundCurrencyItemImplCopyWithImpl<$Res>
    extends _$WalletFundCurrencyItemCopyWithImpl<$Res,
        _$WalletFundCurrencyItemImpl>
    implements _$$WalletFundCurrencyItemImplCopyWith<$Res> {
  __$$WalletFundCurrencyItemImplCopyWithImpl(
      _$WalletFundCurrencyItemImpl _value,
      $Res Function(_$WalletFundCurrencyItemImpl) _then)
      : super(_value, _then);

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
    return _then(_$WalletFundCurrencyItemImpl(
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
              as Decimal,
      frozenAmount: null == frozenAmount
          ? _value.frozenAmount
          : frozenAmount // ignore: cast_nullable_to_non_nullable
              as Decimal,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as Decimal,
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
class _$WalletFundCurrencyItemImpl implements _WalletFundCurrencyItem {
  const _$WalletFundCurrencyItemImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'memberId') required this.memberId,
      @JsonKey(name: 'currencyId') required this.currencyId,
      @JsonKey(name: 'currencyName') required this.currencyName,
      @JsonKey(name: 'availableAmount')
      @DecimalConverter()
      required this.availableAmount,
      @JsonKey(name: 'frozenAmount')
      @DecimalConverter()
      required this.frozenAmount,
      @JsonKey(name: 'totalAmount')
      @DecimalConverter()
      required this.totalAmount,
      @JsonKey(name: 'version') required this.version,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'createdAt') required this.createdAt,
      @JsonKey(name: 'updatedAt') required this.updatedAt,
      @JsonKey(name: 'isDeleted') required this.isDeleted});

  factory _$WalletFundCurrencyItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletFundCurrencyItemImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'memberId')
  final String memberId;
  @override
  @JsonKey(name: 'currencyId')
  final int currencyId;
  @override
  @JsonKey(name: 'currencyName')
  final String currencyName;
  @override
  @JsonKey(name: 'availableAmount')
  @DecimalConverter()
  final Decimal availableAmount;
  @override
  @JsonKey(name: 'frozenAmount')
  @DecimalConverter()
  final Decimal frozenAmount;
  @override
  @JsonKey(name: 'totalAmount')
  @DecimalConverter()
  final Decimal totalAmount;
  @override
  @JsonKey(name: 'version')
  final int version;
  @override
  @JsonKey(name: 'status')
  final int status;
// 时间格式为 "yyyy-MM-dd HH:mm:ss"，这里先按字符串保存
  @override
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  @override
  @JsonKey(name: 'isDeleted')
  final int isDeleted;

  @override
  String toString() {
    return 'WalletFundCurrencyItem(id: $id, memberId: $memberId, currencyId: $currencyId, currencyName: $currencyName, availableAmount: $availableAmount, frozenAmount: $frozenAmount, totalAmount: $totalAmount, version: $version, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, isDeleted: $isDeleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletFundCurrencyItemImpl &&
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletFundCurrencyItemImplCopyWith<_$WalletFundCurrencyItemImpl>
      get copyWith => __$$WalletFundCurrencyItemImplCopyWithImpl<
          _$WalletFundCurrencyItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletFundCurrencyItemImplToJson(
      this,
    );
  }
}

abstract class _WalletFundCurrencyItem implements WalletFundCurrencyItem {
  const factory _WalletFundCurrencyItem(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'memberId') required final String memberId,
          @JsonKey(name: 'currencyId') required final int currencyId,
          @JsonKey(name: 'currencyName') required final String currencyName,
          @JsonKey(name: 'availableAmount')
          @DecimalConverter()
          required final Decimal availableAmount,
          @JsonKey(name: 'frozenAmount')
          @DecimalConverter()
          required final Decimal frozenAmount,
          @JsonKey(name: 'totalAmount')
          @DecimalConverter()
          required final Decimal totalAmount,
          @JsonKey(name: 'version') required final int version,
          @JsonKey(name: 'status') required final int status,
          @JsonKey(name: 'createdAt') required final String createdAt,
          @JsonKey(name: 'updatedAt') required final String updatedAt,
          @JsonKey(name: 'isDeleted') required final int isDeleted}) =
      _$WalletFundCurrencyItemImpl;

  factory _WalletFundCurrencyItem.fromJson(Map<String, dynamic> json) =
      _$WalletFundCurrencyItemImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'memberId')
  String get memberId;
  @override
  @JsonKey(name: 'currencyId')
  int get currencyId;
  @override
  @JsonKey(name: 'currencyName')
  String get currencyName;
  @override
  @JsonKey(name: 'availableAmount')
  @DecimalConverter()
  Decimal get availableAmount;
  @override
  @JsonKey(name: 'frozenAmount')
  @DecimalConverter()
  Decimal get frozenAmount;
  @override
  @JsonKey(name: 'totalAmount')
  @DecimalConverter()
  Decimal get totalAmount;
  @override
  @JsonKey(name: 'version')
  int get version;
  @override
  @JsonKey(name: 'status')
  int get status;
  @override // 时间格式为 "yyyy-MM-dd HH:mm:ss"，这里先按字符串保存
  @JsonKey(name: 'createdAt')
  String get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  String get updatedAt;
  @override
  @JsonKey(name: 'isDeleted')
  int get isDeleted;
  @override
  @JsonKey(ignore: true)
  _$$WalletFundCurrencyItemImplCopyWith<_$WalletFundCurrencyItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WalletFundCurrencyResponse _$WalletFundCurrencyResponseFromJson(
    Map<String, dynamic> json) {
  return _WalletFundCurrencyResponse.fromJson(json);
}

/// @nodoc
mixin _$WalletFundCurrencyResponse {
  @JsonKey(name: 'errCode')
  int get errCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'errMsg')
  String get errMsg => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<WalletFundCurrencyItem> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletFundCurrencyResponseCopyWith<WalletFundCurrencyResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletFundCurrencyResponseCopyWith<$Res> {
  factory $WalletFundCurrencyResponseCopyWith(WalletFundCurrencyResponse value,
          $Res Function(WalletFundCurrencyResponse) then) =
      _$WalletFundCurrencyResponseCopyWithImpl<$Res,
          WalletFundCurrencyResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'errCode') int errCode,
      @JsonKey(name: 'errMsg') String errMsg,
      @JsonKey(name: 'data') List<WalletFundCurrencyItem> data});
}

/// @nodoc
class _$WalletFundCurrencyResponseCopyWithImpl<$Res,
        $Val extends WalletFundCurrencyResponse>
    implements $WalletFundCurrencyResponseCopyWith<$Res> {
  _$WalletFundCurrencyResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errCode = null,
    Object? errMsg = null,
    Object? data = null,
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
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<WalletFundCurrencyItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalletFundCurrencyResponseImplCopyWith<$Res>
    implements $WalletFundCurrencyResponseCopyWith<$Res> {
  factory _$$WalletFundCurrencyResponseImplCopyWith(
          _$WalletFundCurrencyResponseImpl value,
          $Res Function(_$WalletFundCurrencyResponseImpl) then) =
      __$$WalletFundCurrencyResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'errCode') int errCode,
      @JsonKey(name: 'errMsg') String errMsg,
      @JsonKey(name: 'data') List<WalletFundCurrencyItem> data});
}

/// @nodoc
class __$$WalletFundCurrencyResponseImplCopyWithImpl<$Res>
    extends _$WalletFundCurrencyResponseCopyWithImpl<$Res,
        _$WalletFundCurrencyResponseImpl>
    implements _$$WalletFundCurrencyResponseImplCopyWith<$Res> {
  __$$WalletFundCurrencyResponseImplCopyWithImpl(
      _$WalletFundCurrencyResponseImpl _value,
      $Res Function(_$WalletFundCurrencyResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errCode = null,
    Object? errMsg = null,
    Object? data = null,
  }) {
    return _then(_$WalletFundCurrencyResponseImpl(
      errCode: null == errCode
          ? _value.errCode
          : errCode // ignore: cast_nullable_to_non_nullable
              as int,
      errMsg: null == errMsg
          ? _value.errMsg
          : errMsg // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<WalletFundCurrencyItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletFundCurrencyResponseImpl implements _WalletFundCurrencyResponse {
  const _$WalletFundCurrencyResponseImpl(
      {@JsonKey(name: 'errCode') required this.errCode,
      @JsonKey(name: 'errMsg') required this.errMsg,
      @JsonKey(name: 'data') required final List<WalletFundCurrencyItem> data})
      : _data = data;

  factory _$WalletFundCurrencyResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$WalletFundCurrencyResponseImplFromJson(json);

  @override
  @JsonKey(name: 'errCode')
  final int errCode;
  @override
  @JsonKey(name: 'errMsg')
  final String errMsg;
  final List<WalletFundCurrencyItem> _data;
  @override
  @JsonKey(name: 'data')
  List<WalletFundCurrencyItem> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'WalletFundCurrencyResponse(errCode: $errCode, errMsg: $errMsg, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletFundCurrencyResponseImpl &&
            (identical(other.errCode, errCode) || other.errCode == errCode) &&
            (identical(other.errMsg, errMsg) || other.errMsg == errMsg) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, errCode, errMsg, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletFundCurrencyResponseImplCopyWith<_$WalletFundCurrencyResponseImpl>
      get copyWith => __$$WalletFundCurrencyResponseImplCopyWithImpl<
          _$WalletFundCurrencyResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletFundCurrencyResponseImplToJson(
      this,
    );
  }
}

abstract class _WalletFundCurrencyResponse
    implements WalletFundCurrencyResponse {
  const factory _WalletFundCurrencyResponse(
          {@JsonKey(name: 'errCode') required final int errCode,
          @JsonKey(name: 'errMsg') required final String errMsg,
          @JsonKey(name: 'data')
          required final List<WalletFundCurrencyItem> data}) =
      _$WalletFundCurrencyResponseImpl;

  factory _WalletFundCurrencyResponse.fromJson(Map<String, dynamic> json) =
      _$WalletFundCurrencyResponseImpl.fromJson;

  @override
  @JsonKey(name: 'errCode')
  int get errCode;
  @override
  @JsonKey(name: 'errMsg')
  String get errMsg;
  @override
  @JsonKey(name: 'data')
  List<WalletFundCurrencyItem> get data;
  @override
  @JsonKey(ignore: true)
  _$$WalletFundCurrencyResponseImplCopyWith<_$WalletFundCurrencyResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
