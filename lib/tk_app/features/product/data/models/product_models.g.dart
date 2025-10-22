// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductListRequestImpl _$$ProductListRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductListRequestImpl(
      categoryId: (json['categoryId'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      size: (json['size'] as num).toInt(),
    );

Map<String, dynamic> _$$ProductListRequestImplToJson(
        _$ProductListRequestImpl instance) =>
    <String, dynamic>{
      'categoryId': instance.categoryId,
      'page': instance.page,
      'size': instance.size,
    };

_$ProductListResponseImpl _$$ProductListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductListResponseImpl(
      errCode: (json['errCode'] as num?)?.toInt() ?? 0,
      errMsg: json['errMsg'] as String? ?? '',
      data: ProductListData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductListResponseImplToJson(
        _$ProductListResponseImpl instance) =>
    <String, dynamic>{
      'errCode': instance.errCode,
      'errMsg': instance.errMsg,
      'data': instance.data,
    };

_$ProductListDataImpl _$$ProductListDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductListDataImpl(
      total: json['total'] as String,
      list: (json['list'] as List<dynamic>)
          .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      page: (json['page'] as num?)?.toInt() ?? 1,
      size: (json['size'] as num?)?.toInt() ?? 20,
      totalPages: json['totalPages'] as String? ?? '',
    );

Map<String, dynamic> _$$ProductListDataImplToJson(
        _$ProductListDataImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'list': instance.list,
      'page': instance.page,
      'size': instance.size,
      'totalPages': instance.totalPages,
    };

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      id: json['id'] as String,
      channelId: json['channelId'] as String? ?? '',
      name: json['name'] as String,
      subName: json['subName'] as String,
      defaultPrice: (json['defaultPrice'] as num?)?.toDouble() ?? 0.0,
      defaultPic: json['defaultPic'] as String,
      categoryId: json['categoryId'] as String,
      categoryName: json['categoryName'] as String,
      parentCategoryId: json['parentCategoryId'] as String? ?? '',
      parentCategoryName: json['parentCategoryName'] as String? ?? '',
      brandId: json['brandId'] as String,
      brandName: json['brandName'] as String,
      publishStatus: (json['publishStatus'] as num?)?.toInt() ?? 0,
      verifyStatus: (json['verifyStatus'] as num?)?.toInt() ?? 0,
      salesCount: (json['salesCount'] as num?)?.toInt() ?? 0,
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
      reviewCount: (json['reviewCount'] as num?)?.toInt() ?? 0,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'channelId': instance.channelId,
      'name': instance.name,
      'subName': instance.subName,
      'defaultPrice': instance.defaultPrice,
      'defaultPic': instance.defaultPic,
      'categoryId': instance.categoryId,
      'categoryName': instance.categoryName,
      'parentCategoryId': instance.parentCategoryId,
      'parentCategoryName': instance.parentCategoryName,
      'brandId': instance.brandId,
      'brandName': instance.brandName,
      'publishStatus': instance.publishStatus,
      'verifyStatus': instance.verifyStatus,
      'salesCount': instance.salesCount,
      'rating': instance.rating,
      'reviewCount': instance.reviewCount,
      'createdAt': instance.createdAt,
    };

_$RefundApplyRequestImpl _$$RefundApplyRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$RefundApplyRequestImpl(
      orderId: (json['orderId'] as num).toInt(),
      refundType: json['refundType'] as String,
      refundAmount: json['refundAmount'] as String,
      refundReason: json['refundReason'] as String,
    );

Map<String, dynamic> _$$RefundApplyRequestImplToJson(
        _$RefundApplyRequestImpl instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'refundType': instance.refundType,
      'refundAmount': instance.refundAmount,
      'refundReason': instance.refundReason,
    };

_$RefundApplyResponseImpl _$$RefundApplyResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RefundApplyResponseImpl(
      errCode: (json['code'] as num?)?.toInt() ?? 0,
      errMsg: json['message'] as String? ?? '',
      ok: json['ok'] as bool? ?? true,
      data: _dataFromJson(json['data']),
    );

Map<String, dynamic> _$$RefundApplyResponseImplToJson(
        _$RefundApplyResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.errCode,
      'message': instance.errMsg,
      'ok': instance.ok,
      'data': instance.data,
    };

_$RefundApplyDataImpl _$$RefundApplyDataImplFromJson(
        Map<String, dynamic> json) =>
    _$RefundApplyDataImpl(
      id: json['id'] as String,
      refundNo: json['refundNo'] as String,
      orderId: json['orderId'] as String,
      orderNo: json['orderNo'] as String,
      refundType: json['refundType'] as String,
      refundAmount: (json['refundAmount'] as num).toDouble(),
      refundReason: json['refundReason'] as String,
      description: json['description'] as String? ?? '',
      evidenceImages: json['evidenceImages'] as String? ?? '',
      evidenceVideos: json['evidenceVideos'] as String? ?? '',
      evidenceFiles: json['evidenceFiles'] as String? ?? '',
      status: json['status'] as String,
      statusText: json['statusText'] as String,
      reviewTime: json['reviewTime'] as String? ?? '',
      reviewerName: json['reviewerName'] as String? ?? '',
      reviewRemark: json['reviewRemark'] as String? ?? '',
      reviewComment: json['reviewComment'] as String? ?? '',
      completeTime: json['completeTime'] as String? ?? '',
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$RefundApplyDataImplToJson(
        _$RefundApplyDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'refundNo': instance.refundNo,
      'orderId': instance.orderId,
      'orderNo': instance.orderNo,
      'refundType': instance.refundType,
      'refundAmount': instance.refundAmount,
      'refundReason': instance.refundReason,
      'description': instance.description,
      'evidenceImages': instance.evidenceImages,
      'evidenceVideos': instance.evidenceVideos,
      'evidenceFiles': instance.evidenceFiles,
      'status': instance.status,
      'statusText': instance.statusText,
      'reviewTime': instance.reviewTime,
      'reviewerName': instance.reviewerName,
      'reviewRemark': instance.reviewRemark,
      'reviewComment': instance.reviewComment,
      'completeTime': instance.completeTime,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
