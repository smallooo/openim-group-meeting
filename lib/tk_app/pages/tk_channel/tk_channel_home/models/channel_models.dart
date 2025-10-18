import 'package:freezed_annotation/freezed_annotation.dart';

part 'channel_models.freezed.dart';
part 'channel_models.g.dart';

/// 频道分类树响应模型
@freezed
class ChannelCategoryTreeResponse with _$ChannelCategoryTreeResponse {
  const factory ChannelCategoryTreeResponse({
    @Default(0) int errCode,
    @Default('') String errMsg,
    @Default([]) List<ChannelModel> data,
  }) = _ChannelCategoryTreeResponse;

  factory ChannelCategoryTreeResponse.fromJson(Map<String, dynamic> json) =>
      _$ChannelCategoryTreeResponseFromJson(json);
}

/// 频道模型
@freezed
class ChannelModel with _$ChannelModel {
  const factory ChannelModel({
    @Default('') String channelId,
    @Default('') String channelName,
    @Default('') String channelDescription,
    @Default('') String channelIcon,
    @Default(0) int channelSort,
    @Default(0) int channelStatus,
    @Default([]) List<CategoryModel> categories,
  }) = _ChannelModel;

  factory ChannelModel.fromJson(Map<String, dynamic> json) =>
      _$ChannelModelFromJson(json);
}

/// 分类模型
@freezed
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    @Default('') String id,
    @Default('') String channelId,
    @Default('') String name,
    @Default('') String description,
    @Default('') String parentId,
    @Default(0) int level,
    @Default('') String icon,
    @Default(0) int sort,
    @Default(0) int status,
    @Default([]) List<CategoryModel> children,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}