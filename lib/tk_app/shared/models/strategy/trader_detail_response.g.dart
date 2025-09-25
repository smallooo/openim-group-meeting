// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trader_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TraderDetailResponseImpl _$$TraderDetailResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TraderDetailResponseImpl(
      errCode: (json['errCode'] as num).toInt(),
      errMsg: json['errMsg'] as String,
      data: TraderDetailData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TraderDetailResponseImplToJson(
        _$TraderDetailResponseImpl instance) =>
    <String, dynamic>{
      'errCode': instance.errCode,
      'errMsg': instance.errMsg,
      'data': instance.data,
    };

_$TraderDetailDataImpl _$$TraderDetailDataImplFromJson(
        Map<String, dynamic> json) =>
    _$TraderDetailDataImpl(
      id: json['id'] as String,
      memberId: json['memberId'] as String,
      traderName: json['traderName'] as String,
      traderAvatar: json['traderAvatar'] as String,
      bio: json['bio'] as String,
      joinTime: json['joinTime'] as String,
      subscriberCount: (json['subscriberCount'] as num).toInt(),
      followerCount: (json['followerCount'] as num).toInt(),
      totalViews: json['totalViews'] as String,
      status: (json['status'] as num).toInt(),
      version: json['version'] as String,
      isDeleted: (json['isDeleted'] as num).toInt(),
      createdBy: json['createdBy'] as String,
      updatedBy: json['updatedBy'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$TraderDetailDataImplToJson(
        _$TraderDetailDataImpl instance) =>
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
      'status': instance.status,
      'version': instance.version,
      'isDeleted': instance.isDeleted,
      'createdBy': instance.createdBy,
      'updatedBy': instance.updatedBy,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
