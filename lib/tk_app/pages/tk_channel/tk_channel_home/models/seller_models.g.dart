// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seller_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SellerListResponseImpl _$$SellerListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SellerListResponseImpl(
      errCode: (json['errCode'] as num?)?.toInt() ?? 0,
      errMsg: json['errMsg'] as String? ?? '',
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => MchSellerModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SellerListResponseImplToJson(
        _$SellerListResponseImpl instance) =>
    <String, dynamic>{
      'errCode': instance.errCode,
      'errMsg': instance.errMsg,
      'data': instance.data,
    };

_$MchSellerModelImpl _$$MchSellerModelImplFromJson(Map<String, dynamic> json) =>
    _$MchSellerModelImpl(
      id: json['id'] as String? ?? '',
      sellerCode: json['sellerCode'] as String? ?? '',
      name: json['name'] as String? ?? '',
      contactName: json['contactName'] as String? ?? '',
      contactPhone: json['contactPhone'] as String? ?? '',
      contactEmail: json['contactEmail'] as String? ?? '',
      licenseNo: json['licenseNo'] as String? ?? '',
      licenseImgs: json['licenseImgs'] as String? ?? '',
      provinceCode: json['provinceCode'] as String? ?? '',
      cityCode: json['cityCode'] as String? ?? '',
      districtCode: json['districtCode'] as String? ?? '',
      address: json['address'] as String? ?? '',
      status: (json['status'] as num?)?.toInt() ?? 0,
      auditStatus: (json['auditStatus'] as num?)?.toInt() ?? 0,
      openimUserId: json['openimUserId'] as String? ?? '',
      remark: json['remark'] as String? ?? '',
      createdAt: json['createdAt'] as String? ?? '',
      updatedAt: json['updatedAt'] as String? ?? '',
      shops: (json['shops'] as List<dynamic>?)
              ?.map((e) => ShopModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$MchSellerModelImplToJson(
        _$MchSellerModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sellerCode': instance.sellerCode,
      'name': instance.name,
      'contactName': instance.contactName,
      'contactPhone': instance.contactPhone,
      'contactEmail': instance.contactEmail,
      'licenseNo': instance.licenseNo,
      'licenseImgs': instance.licenseImgs,
      'provinceCode': instance.provinceCode,
      'cityCode': instance.cityCode,
      'districtCode': instance.districtCode,
      'address': instance.address,
      'status': instance.status,
      'auditStatus': instance.auditStatus,
      'openimUserId': instance.openimUserId,
      'remark': instance.remark,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'shops': instance.shops,
    };

_$ShopModelImpl _$$ShopModelImplFromJson(Map<String, dynamic> json) =>
    _$ShopModelImpl(
      id: json['id'] as String? ?? '',
      sellerId: json['sellerId'] as String? ?? '',
      shopCode: json['shopCode'] as String? ?? '',
      name: json['name'] as String? ?? '',
      logo: json['logo'] as String? ?? '',
      banner: json['banner'] as String? ?? '',
      intro: json['intro'] as String? ?? '',
      provinceCode: json['provinceCode'] as String? ?? '',
      cityCode: json['cityCode'] as String? ?? '',
      districtCode: json['districtCode'] as String? ?? '',
      address: json['address'] as String? ?? '',
      openHours: json['openHours'] as String? ?? '',
      status: (json['status'] as num?)?.toInt() ?? 0,
      rating: (json['rating'] as num?)?.toInt() ?? 0,
      followers: (json['followers'] as num?)?.toInt() ?? 0,
      createdAt: json['createdAt'] as String? ?? '',
      updatedAt: json['updatedAt'] as String? ?? '',
    );

Map<String, dynamic> _$$ShopModelImplToJson(_$ShopModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sellerId': instance.sellerId,
      'shopCode': instance.shopCode,
      'name': instance.name,
      'logo': instance.logo,
      'banner': instance.banner,
      'intro': instance.intro,
      'provinceCode': instance.provinceCode,
      'cityCode': instance.cityCode,
      'districtCode': instance.districtCode,
      'address': instance.address,
      'openHours': instance.openHours,
      'status': instance.status,
      'rating': instance.rating,
      'followers': instance.followers,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
