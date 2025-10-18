// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'channel_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChannelCategoryTreeResponse _$ChannelCategoryTreeResponseFromJson(
    Map<String, dynamic> json) {
  return _ChannelCategoryTreeResponse.fromJson(json);
}

/// @nodoc
mixin _$ChannelCategoryTreeResponse {
  int get errCode => throw _privateConstructorUsedError;
  String get errMsg => throw _privateConstructorUsedError;
  List<ChannelModel> get data => throw _privateConstructorUsedError;

  /// Serializes this ChannelCategoryTreeResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChannelCategoryTreeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChannelCategoryTreeResponseCopyWith<ChannelCategoryTreeResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelCategoryTreeResponseCopyWith<$Res> {
  factory $ChannelCategoryTreeResponseCopyWith(
          ChannelCategoryTreeResponse value,
          $Res Function(ChannelCategoryTreeResponse) then) =
      _$ChannelCategoryTreeResponseCopyWithImpl<$Res,
          ChannelCategoryTreeResponse>;
  @useResult
  $Res call({int errCode, String errMsg, List<ChannelModel> data});
}

/// @nodoc
class _$ChannelCategoryTreeResponseCopyWithImpl<$Res,
        $Val extends ChannelCategoryTreeResponse>
    implements $ChannelCategoryTreeResponseCopyWith<$Res> {
  _$ChannelCategoryTreeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChannelCategoryTreeResponse
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
              as List<ChannelModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChannelCategoryTreeResponseImplCopyWith<$Res>
    implements $ChannelCategoryTreeResponseCopyWith<$Res> {
  factory _$$ChannelCategoryTreeResponseImplCopyWith(
          _$ChannelCategoryTreeResponseImpl value,
          $Res Function(_$ChannelCategoryTreeResponseImpl) then) =
      __$$ChannelCategoryTreeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int errCode, String errMsg, List<ChannelModel> data});
}

/// @nodoc
class __$$ChannelCategoryTreeResponseImplCopyWithImpl<$Res>
    extends _$ChannelCategoryTreeResponseCopyWithImpl<$Res,
        _$ChannelCategoryTreeResponseImpl>
    implements _$$ChannelCategoryTreeResponseImplCopyWith<$Res> {
  __$$ChannelCategoryTreeResponseImplCopyWithImpl(
      _$ChannelCategoryTreeResponseImpl _value,
      $Res Function(_$ChannelCategoryTreeResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChannelCategoryTreeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errCode = null,
    Object? errMsg = null,
    Object? data = null,
  }) {
    return _then(_$ChannelCategoryTreeResponseImpl(
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
              as List<ChannelModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChannelCategoryTreeResponseImpl
    implements _ChannelCategoryTreeResponse {
  const _$ChannelCategoryTreeResponseImpl(
      {this.errCode = 0,
      this.errMsg = '',
      final List<ChannelModel> data = const []})
      : _data = data;

  factory _$ChannelCategoryTreeResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ChannelCategoryTreeResponseImplFromJson(json);

  @override
  @JsonKey()
  final int errCode;
  @override
  @JsonKey()
  final String errMsg;
  final List<ChannelModel> _data;
  @override
  @JsonKey()
  List<ChannelModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ChannelCategoryTreeResponse(errCode: $errCode, errMsg: $errMsg, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChannelCategoryTreeResponseImpl &&
            (identical(other.errCode, errCode) || other.errCode == errCode) &&
            (identical(other.errMsg, errMsg) || other.errMsg == errMsg) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, errCode, errMsg, const DeepCollectionEquality().hash(_data));

  /// Create a copy of ChannelCategoryTreeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChannelCategoryTreeResponseImplCopyWith<_$ChannelCategoryTreeResponseImpl>
      get copyWith => __$$ChannelCategoryTreeResponseImplCopyWithImpl<
          _$ChannelCategoryTreeResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChannelCategoryTreeResponseImplToJson(
      this,
    );
  }
}

abstract class _ChannelCategoryTreeResponse
    implements ChannelCategoryTreeResponse {
  const factory _ChannelCategoryTreeResponse(
      {final int errCode,
      final String errMsg,
      final List<ChannelModel> data}) = _$ChannelCategoryTreeResponseImpl;

  factory _ChannelCategoryTreeResponse.fromJson(Map<String, dynamic> json) =
      _$ChannelCategoryTreeResponseImpl.fromJson;

  @override
  int get errCode;
  @override
  String get errMsg;
  @override
  List<ChannelModel> get data;

  /// Create a copy of ChannelCategoryTreeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChannelCategoryTreeResponseImplCopyWith<_$ChannelCategoryTreeResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ChannelModel _$ChannelModelFromJson(Map<String, dynamic> json) {
  return _ChannelModel.fromJson(json);
}

/// @nodoc
mixin _$ChannelModel {
  String get channelId => throw _privateConstructorUsedError;
  String get channelName => throw _privateConstructorUsedError;
  String get channelDescription => throw _privateConstructorUsedError;
  String get channelIcon => throw _privateConstructorUsedError;
  int get channelSort => throw _privateConstructorUsedError;
  int get channelStatus => throw _privateConstructorUsedError;
  List<CategoryModel> get categories => throw _privateConstructorUsedError;

  /// Serializes this ChannelModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChannelModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChannelModelCopyWith<ChannelModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelModelCopyWith<$Res> {
  factory $ChannelModelCopyWith(
          ChannelModel value, $Res Function(ChannelModel) then) =
      _$ChannelModelCopyWithImpl<$Res, ChannelModel>;
  @useResult
  $Res call(
      {String channelId,
      String channelName,
      String channelDescription,
      String channelIcon,
      int channelSort,
      int channelStatus,
      List<CategoryModel> categories});
}

/// @nodoc
class _$ChannelModelCopyWithImpl<$Res, $Val extends ChannelModel>
    implements $ChannelModelCopyWith<$Res> {
  _$ChannelModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChannelModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelId = null,
    Object? channelName = null,
    Object? channelDescription = null,
    Object? channelIcon = null,
    Object? channelSort = null,
    Object? channelStatus = null,
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      channelId: null == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
      channelName: null == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String,
      channelDescription: null == channelDescription
          ? _value.channelDescription
          : channelDescription // ignore: cast_nullable_to_non_nullable
              as String,
      channelIcon: null == channelIcon
          ? _value.channelIcon
          : channelIcon // ignore: cast_nullable_to_non_nullable
              as String,
      channelSort: null == channelSort
          ? _value.channelSort
          : channelSort // ignore: cast_nullable_to_non_nullable
              as int,
      channelStatus: null == channelStatus
          ? _value.channelStatus
          : channelStatus // ignore: cast_nullable_to_non_nullable
              as int,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChannelModelImplCopyWith<$Res>
    implements $ChannelModelCopyWith<$Res> {
  factory _$$ChannelModelImplCopyWith(
          _$ChannelModelImpl value, $Res Function(_$ChannelModelImpl) then) =
      __$$ChannelModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String channelId,
      String channelName,
      String channelDescription,
      String channelIcon,
      int channelSort,
      int channelStatus,
      List<CategoryModel> categories});
}

/// @nodoc
class __$$ChannelModelImplCopyWithImpl<$Res>
    extends _$ChannelModelCopyWithImpl<$Res, _$ChannelModelImpl>
    implements _$$ChannelModelImplCopyWith<$Res> {
  __$$ChannelModelImplCopyWithImpl(
      _$ChannelModelImpl _value, $Res Function(_$ChannelModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChannelModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelId = null,
    Object? channelName = null,
    Object? channelDescription = null,
    Object? channelIcon = null,
    Object? channelSort = null,
    Object? channelStatus = null,
    Object? categories = null,
  }) {
    return _then(_$ChannelModelImpl(
      channelId: null == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
      channelName: null == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String,
      channelDescription: null == channelDescription
          ? _value.channelDescription
          : channelDescription // ignore: cast_nullable_to_non_nullable
              as String,
      channelIcon: null == channelIcon
          ? _value.channelIcon
          : channelIcon // ignore: cast_nullable_to_non_nullable
              as String,
      channelSort: null == channelSort
          ? _value.channelSort
          : channelSort // ignore: cast_nullable_to_non_nullable
              as int,
      channelStatus: null == channelStatus
          ? _value.channelStatus
          : channelStatus // ignore: cast_nullable_to_non_nullable
              as int,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChannelModelImpl implements _ChannelModel {
  const _$ChannelModelImpl(
      {this.channelId = '',
      this.channelName = '',
      this.channelDescription = '',
      this.channelIcon = '',
      this.channelSort = 0,
      this.channelStatus = 0,
      final List<CategoryModel> categories = const []})
      : _categories = categories;

  factory _$ChannelModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChannelModelImplFromJson(json);

  @override
  @JsonKey()
  final String channelId;
  @override
  @JsonKey()
  final String channelName;
  @override
  @JsonKey()
  final String channelDescription;
  @override
  @JsonKey()
  final String channelIcon;
  @override
  @JsonKey()
  final int channelSort;
  @override
  @JsonKey()
  final int channelStatus;
  final List<CategoryModel> _categories;
  @override
  @JsonKey()
  List<CategoryModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'ChannelModel(channelId: $channelId, channelName: $channelName, channelDescription: $channelDescription, channelIcon: $channelIcon, channelSort: $channelSort, channelStatus: $channelStatus, categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChannelModelImpl &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId) &&
            (identical(other.channelName, channelName) ||
                other.channelName == channelName) &&
            (identical(other.channelDescription, channelDescription) ||
                other.channelDescription == channelDescription) &&
            (identical(other.channelIcon, channelIcon) ||
                other.channelIcon == channelIcon) &&
            (identical(other.channelSort, channelSort) ||
                other.channelSort == channelSort) &&
            (identical(other.channelStatus, channelStatus) ||
                other.channelStatus == channelStatus) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      channelId,
      channelName,
      channelDescription,
      channelIcon,
      channelSort,
      channelStatus,
      const DeepCollectionEquality().hash(_categories));

  /// Create a copy of ChannelModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChannelModelImplCopyWith<_$ChannelModelImpl> get copyWith =>
      __$$ChannelModelImplCopyWithImpl<_$ChannelModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChannelModelImplToJson(
      this,
    );
  }
}

abstract class _ChannelModel implements ChannelModel {
  const factory _ChannelModel(
      {final String channelId,
      final String channelName,
      final String channelDescription,
      final String channelIcon,
      final int channelSort,
      final int channelStatus,
      final List<CategoryModel> categories}) = _$ChannelModelImpl;

  factory _ChannelModel.fromJson(Map<String, dynamic> json) =
      _$ChannelModelImpl.fromJson;

  @override
  String get channelId;
  @override
  String get channelName;
  @override
  String get channelDescription;
  @override
  String get channelIcon;
  @override
  int get channelSort;
  @override
  int get channelStatus;
  @override
  List<CategoryModel> get categories;

  /// Create a copy of ChannelModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChannelModelImplCopyWith<_$ChannelModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) {
  return _CategoryModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryModel {
  String get id => throw _privateConstructorUsedError;
  String get channelId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get parentId => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  int get sort => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  List<CategoryModel> get children => throw _privateConstructorUsedError;

  /// Serializes this CategoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryModelCopyWith<CategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryModelCopyWith<$Res> {
  factory $CategoryModelCopyWith(
          CategoryModel value, $Res Function(CategoryModel) then) =
      _$CategoryModelCopyWithImpl<$Res, CategoryModel>;
  @useResult
  $Res call(
      {String id,
      String channelId,
      String name,
      String description,
      String parentId,
      int level,
      String icon,
      int sort,
      int status,
      List<CategoryModel> children});
}

/// @nodoc
class _$CategoryModelCopyWithImpl<$Res, $Val extends CategoryModel>
    implements $CategoryModelCopyWith<$Res> {
  _$CategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? channelId = null,
    Object? name = null,
    Object? description = null,
    Object? parentId = null,
    Object? level = null,
    Object? icon = null,
    Object? sort = null,
    Object? status = null,
    Object? children = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      channelId: null == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryModelImplCopyWith<$Res>
    implements $CategoryModelCopyWith<$Res> {
  factory _$$CategoryModelImplCopyWith(
          _$CategoryModelImpl value, $Res Function(_$CategoryModelImpl) then) =
      __$$CategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String channelId,
      String name,
      String description,
      String parentId,
      int level,
      String icon,
      int sort,
      int status,
      List<CategoryModel> children});
}

/// @nodoc
class __$$CategoryModelImplCopyWithImpl<$Res>
    extends _$CategoryModelCopyWithImpl<$Res, _$CategoryModelImpl>
    implements _$$CategoryModelImplCopyWith<$Res> {
  __$$CategoryModelImplCopyWithImpl(
      _$CategoryModelImpl _value, $Res Function(_$CategoryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? channelId = null,
    Object? name = null,
    Object? description = null,
    Object? parentId = null,
    Object? level = null,
    Object? icon = null,
    Object? sort = null,
    Object? status = null,
    Object? children = null,
  }) {
    return _then(_$CategoryModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      channelId: null == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryModelImpl implements _CategoryModel {
  const _$CategoryModelImpl(
      {this.id = '',
      this.channelId = '',
      this.name = '',
      this.description = '',
      this.parentId = '',
      this.level = 0,
      this.icon = '',
      this.sort = 0,
      this.status = 0,
      final List<CategoryModel> children = const []})
      : _children = children;

  factory _$CategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryModelImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String channelId;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String parentId;
  @override
  @JsonKey()
  final int level;
  @override
  @JsonKey()
  final String icon;
  @override
  @JsonKey()
  final int sort;
  @override
  @JsonKey()
  final int status;
  final List<CategoryModel> _children;
  @override
  @JsonKey()
  List<CategoryModel> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  String toString() {
    return 'CategoryModel(id: $id, channelId: $channelId, name: $name, description: $description, parentId: $parentId, level: $level, icon: $icon, sort: $sort, status: $status, children: $children)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      channelId,
      name,
      description,
      parentId,
      level,
      icon,
      sort,
      status,
      const DeepCollectionEquality().hash(_children));

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryModelImplCopyWith<_$CategoryModelImpl> get copyWith =>
      __$$CategoryModelImplCopyWithImpl<_$CategoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryModelImplToJson(
      this,
    );
  }
}

abstract class _CategoryModel implements CategoryModel {
  const factory _CategoryModel(
      {final String id,
      final String channelId,
      final String name,
      final String description,
      final String parentId,
      final int level,
      final String icon,
      final int sort,
      final int status,
      final List<CategoryModel> children}) = _$CategoryModelImpl;

  factory _CategoryModel.fromJson(Map<String, dynamic> json) =
      _$CategoryModelImpl.fromJson;

  @override
  String get id;
  @override
  String get channelId;
  @override
  String get name;
  @override
  String get description;
  @override
  String get parentId;
  @override
  int get level;
  @override
  String get icon;
  @override
  int get sort;
  @override
  int get status;
  @override
  List<CategoryModel> get children;

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryModelImplCopyWith<_$CategoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
