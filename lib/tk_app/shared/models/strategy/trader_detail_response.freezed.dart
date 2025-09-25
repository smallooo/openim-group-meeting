// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trader_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TraderDetailResponse _$TraderDetailResponseFromJson(Map<String, dynamic> json) {
  return _TraderDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$TraderDetailResponse {
  /// 错误码
  @JsonKey(name: 'errCode')
  int get errCode => throw _privateConstructorUsedError;

  /// 错误信息
  @JsonKey(name: 'errMsg')
  String get errMsg => throw _privateConstructorUsedError;

  /// 交易员详情数据
  @JsonKey(name: 'data')
  TraderDetailData get data => throw _privateConstructorUsedError;

  /// Serializes this TraderDetailResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TraderDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TraderDetailResponseCopyWith<TraderDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TraderDetailResponseCopyWith<$Res> {
  factory $TraderDetailResponseCopyWith(TraderDetailResponse value,
          $Res Function(TraderDetailResponse) then) =
      _$TraderDetailResponseCopyWithImpl<$Res, TraderDetailResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'errCode') int errCode,
      @JsonKey(name: 'errMsg') String errMsg,
      @JsonKey(name: 'data') TraderDetailData data});

  $TraderDetailDataCopyWith<$Res> get data;
}

/// @nodoc
class _$TraderDetailResponseCopyWithImpl<$Res,
        $Val extends TraderDetailResponse>
    implements $TraderDetailResponseCopyWith<$Res> {
  _$TraderDetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TraderDetailResponse
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
              as TraderDetailData,
    ) as $Val);
  }

  /// Create a copy of TraderDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TraderDetailDataCopyWith<$Res> get data {
    return $TraderDetailDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TraderDetailResponseImplCopyWith<$Res>
    implements $TraderDetailResponseCopyWith<$Res> {
  factory _$$TraderDetailResponseImplCopyWith(_$TraderDetailResponseImpl value,
          $Res Function(_$TraderDetailResponseImpl) then) =
      __$$TraderDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'errCode') int errCode,
      @JsonKey(name: 'errMsg') String errMsg,
      @JsonKey(name: 'data') TraderDetailData data});

  @override
  $TraderDetailDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$TraderDetailResponseImplCopyWithImpl<$Res>
    extends _$TraderDetailResponseCopyWithImpl<$Res, _$TraderDetailResponseImpl>
    implements _$$TraderDetailResponseImplCopyWith<$Res> {
  __$$TraderDetailResponseImplCopyWithImpl(_$TraderDetailResponseImpl _value,
      $Res Function(_$TraderDetailResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of TraderDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errCode = null,
    Object? errMsg = null,
    Object? data = null,
  }) {
    return _then(_$TraderDetailResponseImpl(
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
              as TraderDetailData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TraderDetailResponseImpl implements _TraderDetailResponse {
  const _$TraderDetailResponseImpl(
      {@JsonKey(name: 'errCode') required this.errCode,
      @JsonKey(name: 'errMsg') required this.errMsg,
      @JsonKey(name: 'data') required this.data});

  factory _$TraderDetailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TraderDetailResponseImplFromJson(json);

  /// 错误码
  @override
  @JsonKey(name: 'errCode')
  final int errCode;

  /// 错误信息
  @override
  @JsonKey(name: 'errMsg')
  final String errMsg;

  /// 交易员详情数据
  @override
  @JsonKey(name: 'data')
  final TraderDetailData data;

  @override
  String toString() {
    return 'TraderDetailResponse(errCode: $errCode, errMsg: $errMsg, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TraderDetailResponseImpl &&
            (identical(other.errCode, errCode) || other.errCode == errCode) &&
            (identical(other.errMsg, errMsg) || other.errMsg == errMsg) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, errCode, errMsg, data);

  /// Create a copy of TraderDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TraderDetailResponseImplCopyWith<_$TraderDetailResponseImpl>
      get copyWith =>
          __$$TraderDetailResponseImplCopyWithImpl<_$TraderDetailResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TraderDetailResponseImplToJson(
      this,
    );
  }
}

abstract class _TraderDetailResponse implements TraderDetailResponse {
  const factory _TraderDetailResponse(
          {@JsonKey(name: 'errCode') required final int errCode,
          @JsonKey(name: 'errMsg') required final String errMsg,
          @JsonKey(name: 'data') required final TraderDetailData data}) =
      _$TraderDetailResponseImpl;

  factory _TraderDetailResponse.fromJson(Map<String, dynamic> json) =
      _$TraderDetailResponseImpl.fromJson;

  /// 错误码
  @override
  @JsonKey(name: 'errCode')
  int get errCode;

  /// 错误信息
  @override
  @JsonKey(name: 'errMsg')
  String get errMsg;

  /// 交易员详情数据
  @override
  @JsonKey(name: 'data')
  TraderDetailData get data;

  /// Create a copy of TraderDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TraderDetailResponseImplCopyWith<_$TraderDetailResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TraderDetailData _$TraderDetailDataFromJson(Map<String, dynamic> json) {
  return _TraderDetailData.fromJson(json);
}

/// @nodoc
mixin _$TraderDetailData {
  /// 交易员ID
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;

  /// 会员ID
  @JsonKey(name: 'memberId')
  String get memberId => throw _privateConstructorUsedError;

  /// 交易员名称
  @JsonKey(name: 'traderName')
  String get traderName => throw _privateConstructorUsedError;

  /// 交易员头像
  @JsonKey(name: 'traderAvatar')
  String get traderAvatar => throw _privateConstructorUsedError;

  /// 个人简介
  @JsonKey(name: 'bio')
  String get bio => throw _privateConstructorUsedError;

  /// 加入时间
  @JsonKey(name: 'joinTime')
  String get joinTime => throw _privateConstructorUsedError;

  /// 订阅者数量
  @JsonKey(name: 'subscriberCount')
  int get subscriberCount => throw _privateConstructorUsedError;

  /// 关注者数量
  @JsonKey(name: 'followerCount')
  int get followerCount => throw _privateConstructorUsedError;

  /// 总浏览量
  @JsonKey(name: 'totalViews')
  String get totalViews => throw _privateConstructorUsedError;

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
  String get createdBy => throw _privateConstructorUsedError;

  /// 更新者
  @JsonKey(name: 'updatedBy')
  String get updatedBy => throw _privateConstructorUsedError;

  /// 创建时间
  @JsonKey(name: 'createdAt')
  String get createdAt => throw _privateConstructorUsedError;

  /// 更新时间
  @JsonKey(name: 'updatedAt')
  String get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this TraderDetailData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TraderDetailData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TraderDetailDataCopyWith<TraderDetailData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TraderDetailDataCopyWith<$Res> {
  factory $TraderDetailDataCopyWith(
          TraderDetailData value, $Res Function(TraderDetailData) then) =
      _$TraderDetailDataCopyWithImpl<$Res, TraderDetailData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'memberId') String memberId,
      @JsonKey(name: 'traderName') String traderName,
      @JsonKey(name: 'traderAvatar') String traderAvatar,
      @JsonKey(name: 'bio') String bio,
      @JsonKey(name: 'joinTime') String joinTime,
      @JsonKey(name: 'subscriberCount') int subscriberCount,
      @JsonKey(name: 'followerCount') int followerCount,
      @JsonKey(name: 'totalViews') String totalViews,
      @JsonKey(name: 'status') int status,
      @JsonKey(name: 'version') String version,
      @JsonKey(name: 'isDeleted') int isDeleted,
      @JsonKey(name: 'createdBy') String createdBy,
      @JsonKey(name: 'updatedBy') String updatedBy,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'updatedAt') String updatedAt});
}

/// @nodoc
class _$TraderDetailDataCopyWithImpl<$Res, $Val extends TraderDetailData>
    implements $TraderDetailDataCopyWith<$Res> {
  _$TraderDetailDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TraderDetailData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? memberId = null,
    Object? traderName = null,
    Object? traderAvatar = null,
    Object? bio = null,
    Object? joinTime = null,
    Object? subscriberCount = null,
    Object? followerCount = null,
    Object? totalViews = null,
    Object? status = null,
    Object? version = null,
    Object? isDeleted = null,
    Object? createdBy = null,
    Object? updatedBy = null,
    Object? createdAt = null,
    Object? updatedAt = null,
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
      joinTime: null == joinTime
          ? _value.joinTime
          : joinTime // ignore: cast_nullable_to_non_nullable
              as String,
      subscriberCount: null == subscriberCount
          ? _value.subscriberCount
          : subscriberCount // ignore: cast_nullable_to_non_nullable
              as int,
      followerCount: null == followerCount
          ? _value.followerCount
          : followerCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalViews: null == totalViews
          ? _value.totalViews
          : totalViews // ignore: cast_nullable_to_non_nullable
              as String,
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
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      updatedBy: null == updatedBy
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
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
abstract class _$$TraderDetailDataImplCopyWith<$Res>
    implements $TraderDetailDataCopyWith<$Res> {
  factory _$$TraderDetailDataImplCopyWith(_$TraderDetailDataImpl value,
          $Res Function(_$TraderDetailDataImpl) then) =
      __$$TraderDetailDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'memberId') String memberId,
      @JsonKey(name: 'traderName') String traderName,
      @JsonKey(name: 'traderAvatar') String traderAvatar,
      @JsonKey(name: 'bio') String bio,
      @JsonKey(name: 'joinTime') String joinTime,
      @JsonKey(name: 'subscriberCount') int subscriberCount,
      @JsonKey(name: 'followerCount') int followerCount,
      @JsonKey(name: 'totalViews') String totalViews,
      @JsonKey(name: 'status') int status,
      @JsonKey(name: 'version') String version,
      @JsonKey(name: 'isDeleted') int isDeleted,
      @JsonKey(name: 'createdBy') String createdBy,
      @JsonKey(name: 'updatedBy') String updatedBy,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'updatedAt') String updatedAt});
}

/// @nodoc
class __$$TraderDetailDataImplCopyWithImpl<$Res>
    extends _$TraderDetailDataCopyWithImpl<$Res, _$TraderDetailDataImpl>
    implements _$$TraderDetailDataImplCopyWith<$Res> {
  __$$TraderDetailDataImplCopyWithImpl(_$TraderDetailDataImpl _value,
      $Res Function(_$TraderDetailDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of TraderDetailData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? memberId = null,
    Object? traderName = null,
    Object? traderAvatar = null,
    Object? bio = null,
    Object? joinTime = null,
    Object? subscriberCount = null,
    Object? followerCount = null,
    Object? totalViews = null,
    Object? status = null,
    Object? version = null,
    Object? isDeleted = null,
    Object? createdBy = null,
    Object? updatedBy = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$TraderDetailDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as String,
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
      joinTime: null == joinTime
          ? _value.joinTime
          : joinTime // ignore: cast_nullable_to_non_nullable
              as String,
      subscriberCount: null == subscriberCount
          ? _value.subscriberCount
          : subscriberCount // ignore: cast_nullable_to_non_nullable
              as int,
      followerCount: null == followerCount
          ? _value.followerCount
          : followerCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalViews: null == totalViews
          ? _value.totalViews
          : totalViews // ignore: cast_nullable_to_non_nullable
              as String,
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
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      updatedBy: null == updatedBy
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
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
class _$TraderDetailDataImpl implements _TraderDetailData {
  const _$TraderDetailDataImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'memberId') required this.memberId,
      @JsonKey(name: 'traderName') required this.traderName,
      @JsonKey(name: 'traderAvatar') required this.traderAvatar,
      @JsonKey(name: 'bio') required this.bio,
      @JsonKey(name: 'joinTime') required this.joinTime,
      @JsonKey(name: 'subscriberCount') required this.subscriberCount,
      @JsonKey(name: 'followerCount') required this.followerCount,
      @JsonKey(name: 'totalViews') required this.totalViews,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'version') required this.version,
      @JsonKey(name: 'isDeleted') required this.isDeleted,
      @JsonKey(name: 'createdBy') required this.createdBy,
      @JsonKey(name: 'updatedBy') required this.updatedBy,
      @JsonKey(name: 'createdAt') required this.createdAt,
      @JsonKey(name: 'updatedAt') required this.updatedAt});

  factory _$TraderDetailDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TraderDetailDataImplFromJson(json);

  /// 交易员ID
  @override
  @JsonKey(name: 'id')
  final String id;

  /// 会员ID
  @override
  @JsonKey(name: 'memberId')
  final String memberId;

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

  /// 加入时间
  @override
  @JsonKey(name: 'joinTime')
  final String joinTime;

  /// 订阅者数量
  @override
  @JsonKey(name: 'subscriberCount')
  final int subscriberCount;

  /// 关注者数量
  @override
  @JsonKey(name: 'followerCount')
  final int followerCount;

  /// 总浏览量
  @override
  @JsonKey(name: 'totalViews')
  final String totalViews;

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
  final String createdBy;

  /// 更新者
  @override
  @JsonKey(name: 'updatedBy')
  final String updatedBy;

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
    return 'TraderDetailData(id: $id, memberId: $memberId, traderName: $traderName, traderAvatar: $traderAvatar, bio: $bio, joinTime: $joinTime, subscriberCount: $subscriberCount, followerCount: $followerCount, totalViews: $totalViews, status: $status, version: $version, isDeleted: $isDeleted, createdBy: $createdBy, updatedBy: $updatedBy, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TraderDetailDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.traderName, traderName) ||
                other.traderName == traderName) &&
            (identical(other.traderAvatar, traderAvatar) ||
                other.traderAvatar == traderAvatar) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.joinTime, joinTime) ||
                other.joinTime == joinTime) &&
            (identical(other.subscriberCount, subscriberCount) ||
                other.subscriberCount == subscriberCount) &&
            (identical(other.followerCount, followerCount) ||
                other.followerCount == followerCount) &&
            (identical(other.totalViews, totalViews) ||
                other.totalViews == totalViews) &&
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
  int get hashCode => Object.hash(
      runtimeType,
      id,
      memberId,
      traderName,
      traderAvatar,
      bio,
      joinTime,
      subscriberCount,
      followerCount,
      totalViews,
      status,
      version,
      isDeleted,
      createdBy,
      updatedBy,
      createdAt,
      updatedAt);

  /// Create a copy of TraderDetailData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TraderDetailDataImplCopyWith<_$TraderDetailDataImpl> get copyWith =>
      __$$TraderDetailDataImplCopyWithImpl<_$TraderDetailDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TraderDetailDataImplToJson(
      this,
    );
  }
}

abstract class _TraderDetailData implements TraderDetailData {
  const factory _TraderDetailData(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'memberId') required final String memberId,
          @JsonKey(name: 'traderName') required final String traderName,
          @JsonKey(name: 'traderAvatar') required final String traderAvatar,
          @JsonKey(name: 'bio') required final String bio,
          @JsonKey(name: 'joinTime') required final String joinTime,
          @JsonKey(name: 'subscriberCount') required final int subscriberCount,
          @JsonKey(name: 'followerCount') required final int followerCount,
          @JsonKey(name: 'totalViews') required final String totalViews,
          @JsonKey(name: 'status') required final int status,
          @JsonKey(name: 'version') required final String version,
          @JsonKey(name: 'isDeleted') required final int isDeleted,
          @JsonKey(name: 'createdBy') required final String createdBy,
          @JsonKey(name: 'updatedBy') required final String updatedBy,
          @JsonKey(name: 'createdAt') required final String createdAt,
          @JsonKey(name: 'updatedAt') required final String updatedAt}) =
      _$TraderDetailDataImpl;

  factory _TraderDetailData.fromJson(Map<String, dynamic> json) =
      _$TraderDetailDataImpl.fromJson;

  /// 交易员ID
  @override
  @JsonKey(name: 'id')
  String get id;

  /// 会员ID
  @override
  @JsonKey(name: 'memberId')
  String get memberId;

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

  /// 加入时间
  @override
  @JsonKey(name: 'joinTime')
  String get joinTime;

  /// 订阅者数量
  @override
  @JsonKey(name: 'subscriberCount')
  int get subscriberCount;

  /// 关注者数量
  @override
  @JsonKey(name: 'followerCount')
  int get followerCount;

  /// 总浏览量
  @override
  @JsonKey(name: 'totalViews')
  String get totalViews;

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
  String get createdBy;

  /// 更新者
  @override
  @JsonKey(name: 'updatedBy')
  String get updatedBy;

  /// 创建时间
  @override
  @JsonKey(name: 'createdAt')
  String get createdAt;

  /// 更新时间
  @override
  @JsonKey(name: 'updatedAt')
  String get updatedAt;

  /// Create a copy of TraderDetailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TraderDetailDataImplCopyWith<_$TraderDetailDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
