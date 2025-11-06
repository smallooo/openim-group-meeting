// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_refresh_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TokenRefreshResponse _$TokenRefreshResponseFromJson(Map<String, dynamic> json) {
  return _TokenRefreshResponse.fromJson(json);
}

/// @nodoc
mixin _$TokenRefreshResponse {
  /// 访问令牌
  @JsonKey(name: 'accessToken')
  String get accessToken => throw _privateConstructorUsedError;

  /// 刷新令牌
  @JsonKey(name: 'refreshToken')
  String get refreshToken => throw _privateConstructorUsedError;

  /// 令牌类型
  @JsonKey(name: 'tokenType')
  String get tokenType => throw _privateConstructorUsedError;

  /// 令牌过期时间（秒）
  @JsonKey(name: 'expiresIn')
  String get expiresIn => throw _privateConstructorUsedError;

  /// 提示消息
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

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

  /// Serializes this TokenRefreshResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TokenRefreshResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TokenRefreshResponseCopyWith<TokenRefreshResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenRefreshResponseCopyWith<$Res> {
  factory $TokenRefreshResponseCopyWith(TokenRefreshResponse value,
          $Res Function(TokenRefreshResponse) then) =
      _$TokenRefreshResponseCopyWithImpl<$Res, TokenRefreshResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'accessToken') String accessToken,
      @JsonKey(name: 'refreshToken') String refreshToken,
      @JsonKey(name: 'tokenType') String tokenType,
      @JsonKey(name: 'expiresIn') String expiresIn,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'imToken') String imToken,
      @JsonKey(name: 'imUid') String imUid,
      @JsonKey(name: 'chatToken') String chatToken});
}

/// @nodoc
class _$TokenRefreshResponseCopyWithImpl<$Res,
        $Val extends TokenRefreshResponse>
    implements $TokenRefreshResponseCopyWith<$Res> {
  _$TokenRefreshResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TokenRefreshResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? tokenType = null,
    Object? expiresIn = null,
    Object? message = freezed,
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
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$TokenRefreshResponseImplCopyWith<$Res>
    implements $TokenRefreshResponseCopyWith<$Res> {
  factory _$$TokenRefreshResponseImplCopyWith(_$TokenRefreshResponseImpl value,
          $Res Function(_$TokenRefreshResponseImpl) then) =
      __$$TokenRefreshResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'accessToken') String accessToken,
      @JsonKey(name: 'refreshToken') String refreshToken,
      @JsonKey(name: 'tokenType') String tokenType,
      @JsonKey(name: 'expiresIn') String expiresIn,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'imToken') String imToken,
      @JsonKey(name: 'imUid') String imUid,
      @JsonKey(name: 'chatToken') String chatToken});
}

/// @nodoc
class __$$TokenRefreshResponseImplCopyWithImpl<$Res>
    extends _$TokenRefreshResponseCopyWithImpl<$Res, _$TokenRefreshResponseImpl>
    implements _$$TokenRefreshResponseImplCopyWith<$Res> {
  __$$TokenRefreshResponseImplCopyWithImpl(_$TokenRefreshResponseImpl _value,
      $Res Function(_$TokenRefreshResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenRefreshResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? tokenType = null,
    Object? expiresIn = null,
    Object? message = freezed,
    Object? imToken = null,
    Object? imUid = null,
    Object? chatToken = null,
  }) {
    return _then(_$TokenRefreshResponseImpl(
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
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$TokenRefreshResponseImpl implements _TokenRefreshResponse {
  const _$TokenRefreshResponseImpl(
      {@JsonKey(name: 'accessToken') required this.accessToken,
      @JsonKey(name: 'refreshToken') required this.refreshToken,
      @JsonKey(name: 'tokenType') required this.tokenType,
      @JsonKey(name: 'expiresIn') required this.expiresIn,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'imToken') required this.imToken,
      @JsonKey(name: 'imUid') required this.imUid,
      @JsonKey(name: 'chatToken') required this.chatToken});

  factory _$TokenRefreshResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenRefreshResponseImplFromJson(json);

  /// 访问令牌
  @override
  @JsonKey(name: 'accessToken')
  final String accessToken;

  /// 刷新令牌
  @override
  @JsonKey(name: 'refreshToken')
  final String refreshToken;

  /// 令牌类型
  @override
  @JsonKey(name: 'tokenType')
  final String tokenType;

  /// 令牌过期时间（秒）
  @override
  @JsonKey(name: 'expiresIn')
  final String expiresIn;

  /// 提示消息
  @override
  @JsonKey(name: 'message')
  final String? message;

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
    return 'TokenRefreshResponse(accessToken: $accessToken, refreshToken: $refreshToken, tokenType: $tokenType, expiresIn: $expiresIn, message: $message, imToken: $imToken, imUid: $imUid, chatToken: $chatToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenRefreshResponseImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType) &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.imToken, imToken) || other.imToken == imToken) &&
            (identical(other.imUid, imUid) || other.imUid == imUid) &&
            (identical(other.chatToken, chatToken) ||
                other.chatToken == chatToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken,
      tokenType, expiresIn, message, imToken, imUid, chatToken);

  /// Create a copy of TokenRefreshResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenRefreshResponseImplCopyWith<_$TokenRefreshResponseImpl>
      get copyWith =>
          __$$TokenRefreshResponseImplCopyWithImpl<_$TokenRefreshResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenRefreshResponseImplToJson(
      this,
    );
  }
}

abstract class _TokenRefreshResponse implements TokenRefreshResponse {
  const factory _TokenRefreshResponse(
          {@JsonKey(name: 'accessToken') required final String accessToken,
          @JsonKey(name: 'refreshToken') required final String refreshToken,
          @JsonKey(name: 'tokenType') required final String tokenType,
          @JsonKey(name: 'expiresIn') required final String expiresIn,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'imToken') required final String imToken,
          @JsonKey(name: 'imUid') required final String imUid,
          @JsonKey(name: 'chatToken') required final String chatToken}) =
      _$TokenRefreshResponseImpl;

  factory _TokenRefreshResponse.fromJson(Map<String, dynamic> json) =
      _$TokenRefreshResponseImpl.fromJson;

  /// 访问令牌
  @override
  @JsonKey(name: 'accessToken')
  String get accessToken;

  /// 刷新令牌
  @override
  @JsonKey(name: 'refreshToken')
  String get refreshToken;

  /// 令牌类型
  @override
  @JsonKey(name: 'tokenType')
  String get tokenType;

  /// 令牌过期时间（秒）
  @override
  @JsonKey(name: 'expiresIn')
  String get expiresIn;

  /// 提示消息
  @override
  @JsonKey(name: 'message')
  String? get message;

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

  /// Create a copy of TokenRefreshResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TokenRefreshResponseImplCopyWith<_$TokenRefreshResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
