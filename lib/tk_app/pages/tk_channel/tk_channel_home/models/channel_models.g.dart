// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChannelCategoryTreeResponseImpl _$$ChannelCategoryTreeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ChannelCategoryTreeResponseImpl(
      errCode: (json['errCode'] as num?)?.toInt() ?? 0,
      errMsg: json['errMsg'] as String? ?? '',
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => ChannelModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ChannelCategoryTreeResponseImplToJson(
        _$ChannelCategoryTreeResponseImpl instance) =>
    <String, dynamic>{
      'errCode': instance.errCode,
      'errMsg': instance.errMsg,
      'data': instance.data,
    };

_$ChannelModelImpl _$$ChannelModelImplFromJson(Map<String, dynamic> json) =>
    _$ChannelModelImpl(
      channelId: json['channelId'] as String? ?? '',
      channelName: json['channelName'] as String? ?? '',
      channelDescription: json['channelDescription'] as String? ?? '',
      channelIcon: json['channelIcon'] as String? ?? '',
      channelSort: (json['channelSort'] as num?)?.toInt() ?? 0,
      channelStatus: (json['channelStatus'] as num?)?.toInt() ?? 0,
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ChannelModelImplToJson(_$ChannelModelImpl instance) =>
    <String, dynamic>{
      'channelId': instance.channelId,
      'channelName': instance.channelName,
      'channelDescription': instance.channelDescription,
      'channelIcon': instance.channelIcon,
      'channelSort': instance.channelSort,
      'channelStatus': instance.channelStatus,
      'categories': instance.categories,
    };

_$CategoryModelImpl _$$CategoryModelImplFromJson(Map<String, dynamic> json) =>
    _$CategoryModelImpl(
      id: json['id'] as String? ?? '',
      channelId: json['channelId'] as String? ?? '',
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      parentId: json['parentId'] as String? ?? '',
      level: (json['level'] as num?)?.toInt() ?? 0,
      icon: json['icon'] as String? ?? '',
      sort: (json['sort'] as num?)?.toInt() ?? 0,
      status: (json['status'] as num?)?.toInt() ?? 0,
      children: (json['children'] as List<dynamic>?)
              ?.map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CategoryModelImplToJson(_$CategoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'channelId': instance.channelId,
      'name': instance.name,
      'description': instance.description,
      'parentId': instance.parentId,
      'level': instance.level,
      'icon': instance.icon,
      'sort': instance.sort,
      'status': instance.status,
      'children': instance.children,
    };
