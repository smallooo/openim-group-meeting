// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'code_login_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CodeLoginResponse _$CodeLoginResponseFromJson(Map<String, dynamic> json) {
  return _CodeLoginResponse.fromJson(json);
}

/// @nodoc
mixin _$CodeLoginResponse {
  /// 访问令牌
  /// 用于API请求的身份验证
  @JsonKey(name: 'accessToken')
  String get accessToken => throw _privateConstructorUsedError;

  /// 刷新令牌
  /// 用于刷新访问令牌
  @JsonKey(name: 'refreshToken')
  String get refreshToken => throw _privateConstructorUsedError;

  /// 令牌类型
  /// 通常为 "Bearer"
  @JsonKey(name: 'tokenType')
  String get tokenType => throw _privateConstructorUsedError;

  /// 令牌过期时间（秒）
  /// 14400秒 = 4小时
  @JsonKey(name: 'expiresIn')
  String get expiresIn => throw _privateConstructorUsedError;

  /// 用户ID
  /// 系统内部用户唯一标识（已废弃，使用 memberId）
  @JsonKey(name: 'userId')
  String? get userId => throw _privateConstructorUsedError;

  /// 会员ID
  /// 系统内部会员唯一标识
  @JsonKey(name: 'memberId')
  String get memberId => throw _privateConstructorUsedError;

  /// 邮箱地址
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;

  /// 用户昵称
  /// 默认为邮箱前缀
  @JsonKey(name: 'nickname')
  String get nickname => throw _privateConstructorUsedError;

  /// 头像URL
  /// 空字符串表示使用默认头像
  @JsonKey(name: 'avatar')
  String get avatar => throw _privateConstructorUsedError;

  /// 是否为新用户
  /// true: 首次登录的新用户
  /// false: 已存在的用户
  @JsonKey(name: 'isNewUser')
  bool get isNewUser => throw _privateConstructorUsedError;

  /// 登录类型
  /// EMAIL_CODE: 邮箱验证码登录
  /// EMAIL_PASSWORD: 邮箱密码登录
  /// PHONE_CODE: 手机验证码登录
  /// THIRD_PARTY: 第三方登录
  @JsonKey(name: 'loginType')
  String get loginType => throw _privateConstructorUsedError;

  /// IM Token
  /// 用于 IM 系统的身份验证
  @JsonKey(name: 'imToken')
  String get imToken => throw _privateConstructorUsedError;

  /// IM 用户ID
  /// IM 系统中的用户唯一标识
  @JsonKey(name: 'imUid')
  String get imUid => throw _privateConstructorUsedError;

  /// 聊天 Token
  /// 用于聊天系统的身份验证
  @JsonKey(name: 'chatToken')
  String get chatToken => throw _privateConstructorUsedError;

  /// Serializes this CodeLoginResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CodeLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CodeLoginResponseCopyWith<CodeLoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodeLoginResponseCopyWith<$Res> {
  factory $CodeLoginResponseCopyWith(
          CodeLoginResponse value, $Res Function(CodeLoginResponse) then) =
      _$CodeLoginResponseCopyWithImpl<$Res, CodeLoginResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'accessToken') String accessToken,
      @JsonKey(name: 'refreshToken') String refreshToken,
      @JsonKey(name: 'tokenType') String tokenType,
      @JsonKey(name: 'expiresIn') String expiresIn,
      @JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'memberId') String memberId,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'nickname') String nickname,
      @JsonKey(name: 'avatar') String avatar,
      @JsonKey(name: 'isNewUser') bool isNewUser,
      @JsonKey(name: 'loginType') String loginType,
      @JsonKey(name: 'imToken') String imToken,
      @JsonKey(name: 'imUid') String imUid,
      @JsonKey(name: 'chatToken') String chatToken});
}

/// @nodoc
class _$CodeLoginResponseCopyWithImpl<$Res, $Val extends CodeLoginResponse>
    implements $CodeLoginResponseCopyWith<$Res> {
  _$CodeLoginResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CodeLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? tokenType = null,
    Object? expiresIn = null,
    Object? userId = freezed,
    Object? memberId = null,
    Object? email = null,
    Object? nickname = null,
    Object? avatar = null,
    Object? isNewUser = null,
    Object? loginType = null,
    Object? imToken = null,
    Object? imUid = null,
    Object? chatToken = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: null == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      isNewUser: null == isNewUser
          ? _value.isNewUser
          : isNewUser // ignore: cast_nullable_to_non_nullable
              as bool,
      loginType: null == loginType
          ? _value.loginType
          : loginType // ignore: cast_nullable_to_non_nullable
              as String,
      imToken: null == imToken
          ? _value.imToken
          : imToken // ignore: cast_nullable_to_non_nullable
              as String,
      imUid: null == imUid
          ? _value.imUid
          : imUid // ignore: cast_nullable_to_non_nullable
              as String,
      chatToken: null == chatToken
          ? _value.chatToken
          : chatToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CodeLoginResponseImplCopyWith<$Res>
    implements $CodeLoginResponseCopyWith<$Res> {
  factory _$$CodeLoginResponseImplCopyWith(_$CodeLoginResponseImpl value,
          $Res Function(_$CodeLoginResponseImpl) then) =
      __$$CodeLoginResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'accessToken') String accessToken,
      @JsonKey(name: 'refreshToken') String refreshToken,
      @JsonKey(name: 'tokenType') String tokenType,
      @JsonKey(name: 'expiresIn') String expiresIn,
      @JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'memberId') String memberId,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'nickname') String nickname,
      @JsonKey(name: 'avatar') String avatar,
      @JsonKey(name: 'isNewUser') bool isNewUser,
      @JsonKey(name: 'loginType') String loginType,
      @JsonKey(name: 'imToken') String imToken,
      @JsonKey(name: 'imUid') String imUid,
      @JsonKey(name: 'chatToken') String chatToken});
}

/// @nodoc
class __$$CodeLoginResponseImplCopyWithImpl<$Res>
    extends _$CodeLoginResponseCopyWithImpl<$Res, _$CodeLoginResponseImpl>
    implements _$$CodeLoginResponseImplCopyWith<$Res> {
  __$$CodeLoginResponseImplCopyWithImpl(_$CodeLoginResponseImpl _value,
      $Res Function(_$CodeLoginResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CodeLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? tokenType = null,
    Object? expiresIn = null,
    Object? userId = freezed,
    Object? memberId = null,
    Object? email = null,
    Object? nickname = null,
    Object? avatar = null,
    Object? isNewUser = null,
    Object? loginType = null,
    Object? imToken = null,
    Object? imUid = null,
    Object? chatToken = null,
  }) {
    return _then(_$CodeLoginResponseImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: null == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      isNewUser: null == isNewUser
          ? _value.isNewUser
          : isNewUser // ignore: cast_nullable_to_non_nullable
              as bool,
      loginType: null == loginType
          ? _value.loginType
          : loginType // ignore: cast_nullable_to_non_nullable
              as String,
      imToken: null == imToken
          ? _value.imToken
          : imToken // ignore: cast_nullable_to_non_nullable
              as String,
      imUid: null == imUid
          ? _value.imUid
          : imUid // ignore: cast_nullable_to_non_nullable
              as String,
      chatToken: null == chatToken
          ? _value.chatToken
          : chatToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CodeLoginResponseImpl implements _CodeLoginResponse {
  const _$CodeLoginResponseImpl(
      {@JsonKey(name: 'accessToken') required this.accessToken,
      @JsonKey(name: 'refreshToken') required this.refreshToken,
      @JsonKey(name: 'tokenType') required this.tokenType,
      @JsonKey(name: 'expiresIn') required this.expiresIn,
      @JsonKey(name: 'userId') this.userId,
      @JsonKey(name: 'memberId') required this.memberId,
      @JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'nickname') required this.nickname,
      @JsonKey(name: 'avatar') required this.avatar,
      @JsonKey(name: 'isNewUser') required this.isNewUser,
      @JsonKey(name: 'loginType') required this.loginType,
      @JsonKey(name: 'imToken') required this.imToken,
      @JsonKey(name: 'imUid') required this.imUid,
      @JsonKey(name: 'chatToken') required this.chatToken});

  factory _$CodeLoginResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CodeLoginResponseImplFromJson(json);

  /// 访问令牌
  /// 用于API请求的身份验证
  @override
  @JsonKey(name: 'accessToken')
  final String accessToken;

  /// 刷新令牌
  /// 用于刷新访问令牌
  @override
  @JsonKey(name: 'refreshToken')
  final String refreshToken;

  /// 令牌类型
  /// 通常为 "Bearer"
  @override
  @JsonKey(name: 'tokenType')
  final String tokenType;

  /// 令牌过期时间（秒）
  /// 14400秒 = 4小时
  @override
  @JsonKey(name: 'expiresIn')
  final String expiresIn;

  /// 用户ID
  /// 系统内部用户唯一标识（已废弃，使用 memberId）
  @override
  @JsonKey(name: 'userId')
  final String? userId;

  /// 会员ID
  /// 系统内部会员唯一标识
  @override
  @JsonKey(name: 'memberId')
  final String memberId;

  /// 邮箱地址
  @override
  @JsonKey(name: 'email')
  final String email;

  /// 用户昵称
  /// 默认为邮箱前缀
  @override
  @JsonKey(name: 'nickname')
  final String nickname;

  /// 头像URL
  /// 空字符串表示使用默认头像
  @override
  @JsonKey(name: 'avatar')
  final String avatar;

  /// 是否为新用户
  /// true: 首次登录的新用户
  /// false: 已存在的用户
  @override
  @JsonKey(name: 'isNewUser')
  final bool isNewUser;

  /// 登录类型
  /// EMAIL_CODE: 邮箱验证码登录
  /// EMAIL_PASSWORD: 邮箱密码登录
  /// PHONE_CODE: 手机验证码登录
  /// THIRD_PARTY: 第三方登录
  @override
  @JsonKey(name: 'loginType')
  final String loginType;

  /// IM Token
  /// 用于 IM 系统的身份验证
  @override
  @JsonKey(name: 'imToken')
  final String imToken;

  /// IM 用户ID
  /// IM 系统中的用户唯一标识
  @override
  @JsonKey(name: 'imUid')
  final String imUid;

  /// 聊天 Token
  /// 用于聊天系统的身份验证
  @override
  @JsonKey(name: 'chatToken')
  final String chatToken;

  @override
  String toString() {
    return 'CodeLoginResponse(accessToken: $accessToken, refreshToken: $refreshToken, tokenType: $tokenType, expiresIn: $expiresIn, userId: $userId, memberId: $memberId, email: $email, nickname: $nickname, avatar: $avatar, isNewUser: $isNewUser, loginType: $loginType, imToken: $imToken, imUid: $imUid, chatToken: $chatToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CodeLoginResponseImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType) &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.isNewUser, isNewUser) ||
                other.isNewUser == isNewUser) &&
            (identical(other.loginType, loginType) ||
                other.loginType == loginType) &&
            (identical(other.imToken, imToken) || other.imToken == imToken) &&
            (identical(other.imUid, imUid) || other.imUid == imUid) &&
            (identical(other.chatToken, chatToken) ||
                other.chatToken == chatToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      accessToken,
      refreshToken,
      tokenType,
      expiresIn,
      userId,
      memberId,
      email,
      nickname,
      avatar,
      isNewUser,
      loginType,
      imToken,
      imUid,
      chatToken);

  /// Create a copy of CodeLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CodeLoginResponseImplCopyWith<_$CodeLoginResponseImpl> get copyWith =>
      __$$CodeLoginResponseImplCopyWithImpl<_$CodeLoginResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CodeLoginResponseImplToJson(
      this,
    );
  }
}

abstract class _CodeLoginResponse implements CodeLoginResponse {
  const factory _CodeLoginResponse(
          {@JsonKey(name: 'accessToken') required final String accessToken,
          @JsonKey(name: 'refreshToken') required final String refreshToken,
          @JsonKey(name: 'tokenType') required final String tokenType,
          @JsonKey(name: 'expiresIn') required final String expiresIn,
          @JsonKey(name: 'userId') final String? userId,
          @JsonKey(name: 'memberId') required final String memberId,
          @JsonKey(name: 'email') required final String email,
          @JsonKey(name: 'nickname') required final String nickname,
          @JsonKey(name: 'avatar') required final String avatar,
          @JsonKey(name: 'isNewUser') required final bool isNewUser,
          @JsonKey(name: 'loginType') required final String loginType,
          @JsonKey(name: 'imToken') required final String imToken,
          @JsonKey(name: 'imUid') required final String imUid,
          @JsonKey(name: 'chatToken') required final String chatToken}) =
      _$CodeLoginResponseImpl;

  factory _CodeLoginResponse.fromJson(Map<String, dynamic> json) =
      _$CodeLoginResponseImpl.fromJson;

  /// 访问令牌
  /// 用于API请求的身份验证
  @override
  @JsonKey(name: 'accessToken')
  String get accessToken;

  /// 刷新令牌
  /// 用于刷新访问令牌
  @override
  @JsonKey(name: 'refreshToken')
  String get refreshToken;

  /// 令牌类型
  /// 通常为 "Bearer"
  @override
  @JsonKey(name: 'tokenType')
  String get tokenType;

  /// 令牌过期时间（秒）
  /// 14400秒 = 4小时
  @override
  @JsonKey(name: 'expiresIn')
  String get expiresIn;

  /// 用户ID
  /// 系统内部用户唯一标识（已废弃，使用 memberId）
  @override
  @JsonKey(name: 'userId')
  String? get userId;

  /// 会员ID
  /// 系统内部会员唯一标识
  @override
  @JsonKey(name: 'memberId')
  String get memberId;

  /// 邮箱地址
  @override
  @JsonKey(name: 'email')
  String get email;

  /// 用户昵称
  /// 默认为邮箱前缀
  @override
  @JsonKey(name: 'nickname')
  String get nickname;

  /// 头像URL
  /// 空字符串表示使用默认头像
  @override
  @JsonKey(name: 'avatar')
  String get avatar;

  /// 是否为新用户
  /// true: 首次登录的新用户
  /// false: 已存在的用户
  @override
  @JsonKey(name: 'isNewUser')
  bool get isNewUser;

  /// 登录类型
  /// EMAIL_CODE: 邮箱验证码登录
  /// EMAIL_PASSWORD: 邮箱密码登录
  /// PHONE_CODE: 手机验证码登录
  /// THIRD_PARTY: 第三方登录
  @override
  @JsonKey(name: 'loginType')
  String get loginType;

  /// IM Token
  /// 用于 IM 系统的身份验证
  @override
  @JsonKey(name: 'imToken')
  String get imToken;

  /// IM 用户ID
  /// IM 系统中的用户唯一标识
  @override
  @JsonKey(name: 'imUid')
  String get imUid;

  /// 聊天 Token
  /// 用于聊天系统的身份验证
  @override
  @JsonKey(name: 'chatToken')
  String get chatToken;

  /// Create a copy of CodeLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CodeLoginResponseImplCopyWith<_$CodeLoginResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
