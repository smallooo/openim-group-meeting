import 'package:freezed_annotation/freezed_annotation.dart';

part 'seller_models.freezed.dart';
part 'seller_models.g.dart';

/// 商家列表响应模型
@freezed
class SellerListResponse with _$SellerListResponse {
  const factory SellerListResponse({
    @Default(0) int errCode,
    @Default('') String errMsg,
    @Default([]) List<MchSellerModel> data,
  }) = _SellerListResponse;

  factory SellerListResponse.fromJson(Map<String, dynamic> json) =>
      _$SellerListResponseFromJson(json);
}

/// 商家模型
@freezed
class MchSellerModel with _$MchSellerModel {
  const factory MchSellerModel({
    @Default('') String id,
    @Default('') String sellerCode,
    @Default('') String name,
    @Default('') String contactName,
    @Default('') String contactPhone,
    @Default('') String contactEmail,
    @Default('') String licenseNo,
    @Default('') String licenseImgs,
    @Default('') String provinceCode,
    @Default('') String cityCode,
    @Default('') String districtCode,
    @Default('') String address,
    @Default(0) int status,
    @Default(0) int auditStatus,
    @Default('') String openimUserId,
    @Default('') String remark,
    @Default('') String createdAt,
    @Default('') String updatedAt,
    @Default([]) List<ShopModel> shops,
  }) = _MchSellerModel;

  factory MchSellerModel.fromJson(Map<String, dynamic> json) =>
      _$MchSellerModelFromJson(json);
}

/// 店铺模型
@freezed
class ShopModel with _$ShopModel {
  const factory ShopModel({
    @Default('') String id,
    @Default('') String sellerId,
    @Default('') String shopCode,
    @Default('') String name,
    @Default('') String logo,
    @Default('') String banner,
    @Default('') String intro,
    @Default('') String provinceCode,
    @Default('') String cityCode,
    @Default('') String districtCode,
    @Default('') String address,
    @Default('') String openHours,
    @Default(0) int status,
    @Default(0) int rating, // 根据返回数据，rating 是 int 类型
    @Default(0) int followers,
    @Default('') String createdAt,
    @Default('') String updatedAt,
  }) = _ShopModel;

  factory ShopModel.fromJson(Map<String, dynamic> json) =>
      _$ShopModelFromJson(json);
}
