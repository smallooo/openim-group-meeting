// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seller_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SellerListResponse _$SellerListResponseFromJson(Map<String, dynamic> json) {
  return _SellerListResponse.fromJson(json);
}

/// @nodoc
mixin _$SellerListResponse {
  int get errCode => throw _privateConstructorUsedError;
  String get errMsg => throw _privateConstructorUsedError;
  List<MchSellerModel> get data => throw _privateConstructorUsedError;

  /// Serializes this SellerListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SellerListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SellerListResponseCopyWith<SellerListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SellerListResponseCopyWith<$Res> {
  factory $SellerListResponseCopyWith(
          SellerListResponse value, $Res Function(SellerListResponse) then) =
      _$SellerListResponseCopyWithImpl<$Res, SellerListResponse>;
  @useResult
  $Res call({int errCode, String errMsg, List<MchSellerModel> data});
}

/// @nodoc
class _$SellerListResponseCopyWithImpl<$Res, $Val extends SellerListResponse>
    implements $SellerListResponseCopyWith<$Res> {
  _$SellerListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SellerListResponse
  /// with the given fields replaced by the non-null parameter values.
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
              as List<MchSellerModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SellerListResponseImplCopyWith<$Res>
    implements $SellerListResponseCopyWith<$Res> {
  factory _$$SellerListResponseImplCopyWith(_$SellerListResponseImpl value,
          $Res Function(_$SellerListResponseImpl) then) =
      __$$SellerListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int errCode, String errMsg, List<MchSellerModel> data});
}

/// @nodoc
class __$$SellerListResponseImplCopyWithImpl<$Res>
    extends _$SellerListResponseCopyWithImpl<$Res, _$SellerListResponseImpl>
    implements _$$SellerListResponseImplCopyWith<$Res> {
  __$$SellerListResponseImplCopyWithImpl(_$SellerListResponseImpl _value,
      $Res Function(_$SellerListResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SellerListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errCode = null,
    Object? errMsg = null,
    Object? data = null,
  }) {
    return _then(_$SellerListResponseImpl(
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
              as List<MchSellerModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SellerListResponseImpl implements _SellerListResponse {
  const _$SellerListResponseImpl(
      {this.errCode = 0,
      this.errMsg = '',
      final List<MchSellerModel> data = const []})
      : _data = data;

  factory _$SellerListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SellerListResponseImplFromJson(json);

  @override
  @JsonKey()
  final int errCode;
  @override
  @JsonKey()
  final String errMsg;
  final List<MchSellerModel> _data;
  @override
  @JsonKey()
  List<MchSellerModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'SellerListResponse(errCode: $errCode, errMsg: $errMsg, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SellerListResponseImpl &&
            (identical(other.errCode, errCode) || other.errCode == errCode) &&
            (identical(other.errMsg, errMsg) || other.errMsg == errMsg) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, errCode, errMsg, const DeepCollectionEquality().hash(_data));

  /// Create a copy of SellerListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SellerListResponseImplCopyWith<_$SellerListResponseImpl> get copyWith =>
      __$$SellerListResponseImplCopyWithImpl<_$SellerListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SellerListResponseImplToJson(
      this,
    );
  }
}

abstract class _SellerListResponse implements SellerListResponse {
  const factory _SellerListResponse(
      {final int errCode,
      final String errMsg,
      final List<MchSellerModel> data}) = _$SellerListResponseImpl;

  factory _SellerListResponse.fromJson(Map<String, dynamic> json) =
      _$SellerListResponseImpl.fromJson;

  @override
  int get errCode;
  @override
  String get errMsg;
  @override
  List<MchSellerModel> get data;

  /// Create a copy of SellerListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SellerListResponseImplCopyWith<_$SellerListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MchSellerModel _$MchSellerModelFromJson(Map<String, dynamic> json) {
  return _MchSellerModel.fromJson(json);
}

/// @nodoc
mixin _$MchSellerModel {
  String get id => throw _privateConstructorUsedError;
  String get sellerCode => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get contactName => throw _privateConstructorUsedError;
  String get contactPhone => throw _privateConstructorUsedError;
  String get contactEmail => throw _privateConstructorUsedError;
  String get licenseNo => throw _privateConstructorUsedError;
  String get licenseImgs => throw _privateConstructorUsedError;
  String get provinceCode => throw _privateConstructorUsedError;
  String get cityCode => throw _privateConstructorUsedError;
  String get districtCode => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  int get auditStatus => throw _privateConstructorUsedError;
  String get openimUserId => throw _privateConstructorUsedError;
  String get remark => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  List<ShopModel> get shops => throw _privateConstructorUsedError;

  /// Serializes this MchSellerModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MchSellerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MchSellerModelCopyWith<MchSellerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MchSellerModelCopyWith<$Res> {
  factory $MchSellerModelCopyWith(
          MchSellerModel value, $Res Function(MchSellerModel) then) =
      _$MchSellerModelCopyWithImpl<$Res, MchSellerModel>;
  @useResult
  $Res call(
      {String id,
      String sellerCode,
      String name,
      String contactName,
      String contactPhone,
      String contactEmail,
      String licenseNo,
      String licenseImgs,
      String provinceCode,
      String cityCode,
      String districtCode,
      String address,
      int status,
      int auditStatus,
      String openimUserId,
      String remark,
      String createdAt,
      String updatedAt,
      List<ShopModel> shops});
}

/// @nodoc
class _$MchSellerModelCopyWithImpl<$Res, $Val extends MchSellerModel>
    implements $MchSellerModelCopyWith<$Res> {
  _$MchSellerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MchSellerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sellerCode = null,
    Object? name = null,
    Object? contactName = null,
    Object? contactPhone = null,
    Object? contactEmail = null,
    Object? licenseNo = null,
    Object? licenseImgs = null,
    Object? provinceCode = null,
    Object? cityCode = null,
    Object? districtCode = null,
    Object? address = null,
    Object? status = null,
    Object? auditStatus = null,
    Object? openimUserId = null,
    Object? remark = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? shops = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sellerCode: null == sellerCode
          ? _value.sellerCode
          : sellerCode // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      contactName: null == contactName
          ? _value.contactName
          : contactName // ignore: cast_nullable_to_non_nullable
              as String,
      contactPhone: null == contactPhone
          ? _value.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
              as String,
      contactEmail: null == contactEmail
          ? _value.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String,
      licenseNo: null == licenseNo
          ? _value.licenseNo
          : licenseNo // ignore: cast_nullable_to_non_nullable
              as String,
      licenseImgs: null == licenseImgs
          ? _value.licenseImgs
          : licenseImgs // ignore: cast_nullable_to_non_nullable
              as String,
      provinceCode: null == provinceCode
          ? _value.provinceCode
          : provinceCode // ignore: cast_nullable_to_non_nullable
              as String,
      cityCode: null == cityCode
          ? _value.cityCode
          : cityCode // ignore: cast_nullable_to_non_nullable
              as String,
      districtCode: null == districtCode
          ? _value.districtCode
          : districtCode // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      auditStatus: null == auditStatus
          ? _value.auditStatus
          : auditStatus // ignore: cast_nullable_to_non_nullable
              as int,
      openimUserId: null == openimUserId
          ? _value.openimUserId
          : openimUserId // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      shops: null == shops
          ? _value.shops
          : shops // ignore: cast_nullable_to_non_nullable
              as List<ShopModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MchSellerModelImplCopyWith<$Res>
    implements $MchSellerModelCopyWith<$Res> {
  factory _$$MchSellerModelImplCopyWith(_$MchSellerModelImpl value,
          $Res Function(_$MchSellerModelImpl) then) =
      __$$MchSellerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String sellerCode,
      String name,
      String contactName,
      String contactPhone,
      String contactEmail,
      String licenseNo,
      String licenseImgs,
      String provinceCode,
      String cityCode,
      String districtCode,
      String address,
      int status,
      int auditStatus,
      String openimUserId,
      String remark,
      String createdAt,
      String updatedAt,
      List<ShopModel> shops});
}

/// @nodoc
class __$$MchSellerModelImplCopyWithImpl<$Res>
    extends _$MchSellerModelCopyWithImpl<$Res, _$MchSellerModelImpl>
    implements _$$MchSellerModelImplCopyWith<$Res> {
  __$$MchSellerModelImplCopyWithImpl(
      _$MchSellerModelImpl _value, $Res Function(_$MchSellerModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MchSellerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sellerCode = null,
    Object? name = null,
    Object? contactName = null,
    Object? contactPhone = null,
    Object? contactEmail = null,
    Object? licenseNo = null,
    Object? licenseImgs = null,
    Object? provinceCode = null,
    Object? cityCode = null,
    Object? districtCode = null,
    Object? address = null,
    Object? status = null,
    Object? auditStatus = null,
    Object? openimUserId = null,
    Object? remark = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? shops = null,
  }) {
    return _then(_$MchSellerModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sellerCode: null == sellerCode
          ? _value.sellerCode
          : sellerCode // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      contactName: null == contactName
          ? _value.contactName
          : contactName // ignore: cast_nullable_to_non_nullable
              as String,
      contactPhone: null == contactPhone
          ? _value.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
              as String,
      contactEmail: null == contactEmail
          ? _value.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String,
      licenseNo: null == licenseNo
          ? _value.licenseNo
          : licenseNo // ignore: cast_nullable_to_non_nullable
              as String,
      licenseImgs: null == licenseImgs
          ? _value.licenseImgs
          : licenseImgs // ignore: cast_nullable_to_non_nullable
              as String,
      provinceCode: null == provinceCode
          ? _value.provinceCode
          : provinceCode // ignore: cast_nullable_to_non_nullable
              as String,
      cityCode: null == cityCode
          ? _value.cityCode
          : cityCode // ignore: cast_nullable_to_non_nullable
              as String,
      districtCode: null == districtCode
          ? _value.districtCode
          : districtCode // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      auditStatus: null == auditStatus
          ? _value.auditStatus
          : auditStatus // ignore: cast_nullable_to_non_nullable
              as int,
      openimUserId: null == openimUserId
          ? _value.openimUserId
          : openimUserId // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      shops: null == shops
          ? _value._shops
          : shops // ignore: cast_nullable_to_non_nullable
              as List<ShopModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MchSellerModelImpl implements _MchSellerModel {
  const _$MchSellerModelImpl(
      {this.id = '',
      this.sellerCode = '',
      this.name = '',
      this.contactName = '',
      this.contactPhone = '',
      this.contactEmail = '',
      this.licenseNo = '',
      this.licenseImgs = '',
      this.provinceCode = '',
      this.cityCode = '',
      this.districtCode = '',
      this.address = '',
      this.status = 0,
      this.auditStatus = 0,
      this.openimUserId = '',
      this.remark = '',
      this.createdAt = '',
      this.updatedAt = '',
      final List<ShopModel> shops = const []})
      : _shops = shops;

  factory _$MchSellerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MchSellerModelImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String sellerCode;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String contactName;
  @override
  @JsonKey()
  final String contactPhone;
  @override
  @JsonKey()
  final String contactEmail;
  @override
  @JsonKey()
  final String licenseNo;
  @override
  @JsonKey()
  final String licenseImgs;
  @override
  @JsonKey()
  final String provinceCode;
  @override
  @JsonKey()
  final String cityCode;
  @override
  @JsonKey()
  final String districtCode;
  @override
  @JsonKey()
  final String address;
  @override
  @JsonKey()
  final int status;
  @override
  @JsonKey()
  final int auditStatus;
  @override
  @JsonKey()
  final String openimUserId;
  @override
  @JsonKey()
  final String remark;
  @override
  @JsonKey()
  final String createdAt;
  @override
  @JsonKey()
  final String updatedAt;
  final List<ShopModel> _shops;
  @override
  @JsonKey()
  List<ShopModel> get shops {
    if (_shops is EqualUnmodifiableListView) return _shops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shops);
  }

  @override
  String toString() {
    return 'MchSellerModel(id: $id, sellerCode: $sellerCode, name: $name, contactName: $contactName, contactPhone: $contactPhone, contactEmail: $contactEmail, licenseNo: $licenseNo, licenseImgs: $licenseImgs, provinceCode: $provinceCode, cityCode: $cityCode, districtCode: $districtCode, address: $address, status: $status, auditStatus: $auditStatus, openimUserId: $openimUserId, remark: $remark, createdAt: $createdAt, updatedAt: $updatedAt, shops: $shops)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MchSellerModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sellerCode, sellerCode) ||
                other.sellerCode == sellerCode) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.contactName, contactName) ||
                other.contactName == contactName) &&
            (identical(other.contactPhone, contactPhone) ||
                other.contactPhone == contactPhone) &&
            (identical(other.contactEmail, contactEmail) ||
                other.contactEmail == contactEmail) &&
            (identical(other.licenseNo, licenseNo) ||
                other.licenseNo == licenseNo) &&
            (identical(other.licenseImgs, licenseImgs) ||
                other.licenseImgs == licenseImgs) &&
            (identical(other.provinceCode, provinceCode) ||
                other.provinceCode == provinceCode) &&
            (identical(other.cityCode, cityCode) ||
                other.cityCode == cityCode) &&
            (identical(other.districtCode, districtCode) ||
                other.districtCode == districtCode) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.auditStatus, auditStatus) ||
                other.auditStatus == auditStatus) &&
            (identical(other.openimUserId, openimUserId) ||
                other.openimUserId == openimUserId) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._shops, _shops));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        sellerCode,
        name,
        contactName,
        contactPhone,
        contactEmail,
        licenseNo,
        licenseImgs,
        provinceCode,
        cityCode,
        districtCode,
        address,
        status,
        auditStatus,
        openimUserId,
        remark,
        createdAt,
        updatedAt,
        const DeepCollectionEquality().hash(_shops)
      ]);

  /// Create a copy of MchSellerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MchSellerModelImplCopyWith<_$MchSellerModelImpl> get copyWith =>
      __$$MchSellerModelImplCopyWithImpl<_$MchSellerModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MchSellerModelImplToJson(
      this,
    );
  }
}

abstract class _MchSellerModel implements MchSellerModel {
  const factory _MchSellerModel(
      {final String id,
      final String sellerCode,
      final String name,
      final String contactName,
      final String contactPhone,
      final String contactEmail,
      final String licenseNo,
      final String licenseImgs,
      final String provinceCode,
      final String cityCode,
      final String districtCode,
      final String address,
      final int status,
      final int auditStatus,
      final String openimUserId,
      final String remark,
      final String createdAt,
      final String updatedAt,
      final List<ShopModel> shops}) = _$MchSellerModelImpl;

  factory _MchSellerModel.fromJson(Map<String, dynamic> json) =
      _$MchSellerModelImpl.fromJson;

  @override
  String get id;
  @override
  String get sellerCode;
  @override
  String get name;
  @override
  String get contactName;
  @override
  String get contactPhone;
  @override
  String get contactEmail;
  @override
  String get licenseNo;
  @override
  String get licenseImgs;
  @override
  String get provinceCode;
  @override
  String get cityCode;
  @override
  String get districtCode;
  @override
  String get address;
  @override
  int get status;
  @override
  int get auditStatus;
  @override
  String get openimUserId;
  @override
  String get remark;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  List<ShopModel> get shops;

  /// Create a copy of MchSellerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MchSellerModelImplCopyWith<_$MchSellerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShopModel _$ShopModelFromJson(Map<String, dynamic> json) {
  return _ShopModel.fromJson(json);
}

/// @nodoc
mixin _$ShopModel {
  String get id => throw _privateConstructorUsedError;
  String get sellerId => throw _privateConstructorUsedError;
  String get shopCode => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;
  String get banner => throw _privateConstructorUsedError;
  String get intro => throw _privateConstructorUsedError;
  String get provinceCode => throw _privateConstructorUsedError;
  String get cityCode => throw _privateConstructorUsedError;
  String get districtCode => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get openHours => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  int get rating =>
      throw _privateConstructorUsedError; // 根据返回数据，rating 是 int 类型
  int get followers => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ShopModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShopModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShopModelCopyWith<ShopModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopModelCopyWith<$Res> {
  factory $ShopModelCopyWith(ShopModel value, $Res Function(ShopModel) then) =
      _$ShopModelCopyWithImpl<$Res, ShopModel>;
  @useResult
  $Res call(
      {String id,
      String sellerId,
      String shopCode,
      String name,
      String logo,
      String banner,
      String intro,
      String provinceCode,
      String cityCode,
      String districtCode,
      String address,
      String openHours,
      int status,
      int rating,
      int followers,
      String createdAt,
      String updatedAt});
}

/// @nodoc
class _$ShopModelCopyWithImpl<$Res, $Val extends ShopModel>
    implements $ShopModelCopyWith<$Res> {
  _$ShopModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShopModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sellerId = null,
    Object? shopCode = null,
    Object? name = null,
    Object? logo = null,
    Object? banner = null,
    Object? intro = null,
    Object? provinceCode = null,
    Object? cityCode = null,
    Object? districtCode = null,
    Object? address = null,
    Object? openHours = null,
    Object? status = null,
    Object? rating = null,
    Object? followers = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sellerId: null == sellerId
          ? _value.sellerId
          : sellerId // ignore: cast_nullable_to_non_nullable
              as String,
      shopCode: null == shopCode
          ? _value.shopCode
          : shopCode // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      banner: null == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String,
      intro: null == intro
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as String,
      provinceCode: null == provinceCode
          ? _value.provinceCode
          : provinceCode // ignore: cast_nullable_to_non_nullable
              as String,
      cityCode: null == cityCode
          ? _value.cityCode
          : cityCode // ignore: cast_nullable_to_non_nullable
              as String,
      districtCode: null == districtCode
          ? _value.districtCode
          : districtCode // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      openHours: null == openHours
          ? _value.openHours
          : openHours // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      followers: null == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$ShopModelImplCopyWith<$Res>
    implements $ShopModelCopyWith<$Res> {
  factory _$$ShopModelImplCopyWith(
          _$ShopModelImpl value, $Res Function(_$ShopModelImpl) then) =
      __$$ShopModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String sellerId,
      String shopCode,
      String name,
      String logo,
      String banner,
      String intro,
      String provinceCode,
      String cityCode,
      String districtCode,
      String address,
      String openHours,
      int status,
      int rating,
      int followers,
      String createdAt,
      String updatedAt});
}

/// @nodoc
class __$$ShopModelImplCopyWithImpl<$Res>
    extends _$ShopModelCopyWithImpl<$Res, _$ShopModelImpl>
    implements _$$ShopModelImplCopyWith<$Res> {
  __$$ShopModelImplCopyWithImpl(
      _$ShopModelImpl _value, $Res Function(_$ShopModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShopModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sellerId = null,
    Object? shopCode = null,
    Object? name = null,
    Object? logo = null,
    Object? banner = null,
    Object? intro = null,
    Object? provinceCode = null,
    Object? cityCode = null,
    Object? districtCode = null,
    Object? address = null,
    Object? openHours = null,
    Object? status = null,
    Object? rating = null,
    Object? followers = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$ShopModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sellerId: null == sellerId
          ? _value.sellerId
          : sellerId // ignore: cast_nullable_to_non_nullable
              as String,
      shopCode: null == shopCode
          ? _value.shopCode
          : shopCode // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      banner: null == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String,
      intro: null == intro
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as String,
      provinceCode: null == provinceCode
          ? _value.provinceCode
          : provinceCode // ignore: cast_nullable_to_non_nullable
              as String,
      cityCode: null == cityCode
          ? _value.cityCode
          : cityCode // ignore: cast_nullable_to_non_nullable
              as String,
      districtCode: null == districtCode
          ? _value.districtCode
          : districtCode // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      openHours: null == openHours
          ? _value.openHours
          : openHours // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      followers: null == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$ShopModelImpl implements _ShopModel {
  const _$ShopModelImpl(
      {this.id = '',
      this.sellerId = '',
      this.shopCode = '',
      this.name = '',
      this.logo = '',
      this.banner = '',
      this.intro = '',
      this.provinceCode = '',
      this.cityCode = '',
      this.districtCode = '',
      this.address = '',
      this.openHours = '',
      this.status = 0,
      this.rating = 0,
      this.followers = 0,
      this.createdAt = '',
      this.updatedAt = ''});

  factory _$ShopModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShopModelImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String sellerId;
  @override
  @JsonKey()
  final String shopCode;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String logo;
  @override
  @JsonKey()
  final String banner;
  @override
  @JsonKey()
  final String intro;
  @override
  @JsonKey()
  final String provinceCode;
  @override
  @JsonKey()
  final String cityCode;
  @override
  @JsonKey()
  final String districtCode;
  @override
  @JsonKey()
  final String address;
  @override
  @JsonKey()
  final String openHours;
  @override
  @JsonKey()
  final int status;
  @override
  @JsonKey()
  final int rating;
// 根据返回数据，rating 是 int 类型
  @override
  @JsonKey()
  final int followers;
  @override
  @JsonKey()
  final String createdAt;
  @override
  @JsonKey()
  final String updatedAt;

  @override
  String toString() {
    return 'ShopModel(id: $id, sellerId: $sellerId, shopCode: $shopCode, name: $name, logo: $logo, banner: $banner, intro: $intro, provinceCode: $provinceCode, cityCode: $cityCode, districtCode: $districtCode, address: $address, openHours: $openHours, status: $status, rating: $rating, followers: $followers, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sellerId, sellerId) ||
                other.sellerId == sellerId) &&
            (identical(other.shopCode, shopCode) ||
                other.shopCode == shopCode) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.banner, banner) || other.banner == banner) &&
            (identical(other.intro, intro) || other.intro == intro) &&
            (identical(other.provinceCode, provinceCode) ||
                other.provinceCode == provinceCode) &&
            (identical(other.cityCode, cityCode) ||
                other.cityCode == cityCode) &&
            (identical(other.districtCode, districtCode) ||
                other.districtCode == districtCode) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.openHours, openHours) ||
                other.openHours == openHours) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.followers, followers) ||
                other.followers == followers) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      sellerId,
      shopCode,
      name,
      logo,
      banner,
      intro,
      provinceCode,
      cityCode,
      districtCode,
      address,
      openHours,
      status,
      rating,
      followers,
      createdAt,
      updatedAt);

  /// Create a copy of ShopModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShopModelImplCopyWith<_$ShopModelImpl> get copyWith =>
      __$$ShopModelImplCopyWithImpl<_$ShopModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShopModelImplToJson(
      this,
    );
  }
}

abstract class _ShopModel implements ShopModel {
  const factory _ShopModel(
      {final String id,
      final String sellerId,
      final String shopCode,
      final String name,
      final String logo,
      final String banner,
      final String intro,
      final String provinceCode,
      final String cityCode,
      final String districtCode,
      final String address,
      final String openHours,
      final int status,
      final int rating,
      final int followers,
      final String createdAt,
      final String updatedAt}) = _$ShopModelImpl;

  factory _ShopModel.fromJson(Map<String, dynamic> json) =
      _$ShopModelImpl.fromJson;

  @override
  String get id;
  @override
  String get sellerId;
  @override
  String get shopCode;
  @override
  String get name;
  @override
  String get logo;
  @override
  String get banner;
  @override
  String get intro;
  @override
  String get provinceCode;
  @override
  String get cityCode;
  @override
  String get districtCode;
  @override
  String get address;
  @override
  String get openHours;
  @override
  int get status;
  @override
  int get rating; // 根据返回数据，rating 是 int 类型
  @override
  int get followers;
  @override
  String get createdAt;
  @override
  String get updatedAt;

  /// Create a copy of ShopModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShopModelImplCopyWith<_$ShopModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
