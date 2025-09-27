// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trader_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TraderListResponseImpl _$$TraderListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TraderListResponseImpl(
      errCode: (json['errCode'] as num).toInt(),
      errMsg: json['errMsg'] as String,
      data: TraderListData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TraderListResponseImplToJson(
        _$TraderListResponseImpl instance) =>
    <String, dynamic>{
      'errCode': instance.errCode,
      'errMsg': instance.errMsg,
      'data': instance.data,
    };

_$TraderListDataImpl _$$TraderListDataImplFromJson(Map<String, dynamic> json) =>
    _$TraderListDataImpl(
      records: (json['records'] as List<dynamic>)
          .map((e) => TraderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as String,
      size: json['size'] as String,
      current: json['current'] as String,
      orders: json['orders'] as List<dynamic>,
      optimizeCountSql: json['optimizeCountSql'] as bool,
      searchCount: json['searchCount'] as bool,
      maxLimit: json['maxLimit'] as String,
      countId: json['countId'] as String,
      pages: json['pages'] as String,
    );

Map<String, dynamic> _$$TraderListDataImplToJson(
        _$TraderListDataImpl instance) =>
    <String, dynamic>{
      'records': instance.records,
      'total': instance.total,
      'size': instance.size,
      'current': instance.current,
      'orders': instance.orders,
      'optimizeCountSql': instance.optimizeCountSql,
      'searchCount': instance.searchCount,
      'maxLimit': instance.maxLimit,
      'countId': instance.countId,
      'pages': instance.pages,
    };

_$TraderItemImpl _$$TraderItemImplFromJson(Map<String, dynamic> json) =>
    _$TraderItemImpl(
      id: json['id'] as String,
      memberId: json['memberId'] as String,
      traderName: json['traderName'] as String,
      traderAvatar: json['traderAvatar'] as String,
      bio: json['bio'] as String,
      joinTime: json['joinTime'] as String,
      subscriberCount: (json['subscriberCount'] as num).toInt(),
      followerCount: (json['followerCount'] as num).toInt(),
      totalViews: json['totalViews'] as String,
      spotStrategyCount: (json['spotStrategyCount'] as num).toInt(),
      futuresStrategyCount: (json['futuresStrategyCount'] as num).toInt(),
      totalStrategyCount: (json['totalStrategyCount'] as num).toInt(),
      status: (json['status'] as num).toInt(),
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$$TraderItemImplToJson(_$TraderItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'memberId': instance.memberId,
      'traderName': instance.traderName,
      'traderAvatar': instance.traderAvatar,
      'bio': instance.bio,
      'joinTime': instance.joinTime,
      'subscriberCount': instance.subscriberCount,
      'followerCount': instance.followerCount,
      'totalViews': instance.totalViews,
      'spotStrategyCount': instance.spotStrategyCount,
      'futuresStrategyCount': instance.futuresStrategyCount,
      'totalStrategyCount': instance.totalStrategyCount,
      'status': instance.status,
      'createdAt': instance.createdAt,
    };
