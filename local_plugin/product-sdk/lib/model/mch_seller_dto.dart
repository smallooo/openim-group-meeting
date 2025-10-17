//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MchSellerDTO {
  /// Returns a new [MchSellerDTO] instance.
  MchSellerDTO({
    this.id,
    this.sellerCode,
    this.name,
    this.contactName,
    this.contactPhone,
    this.contactEmail,
    this.licenseNo,
    this.licenseImgs,
    this.provinceCode,
    this.cityCode,
    this.districtCode,
    this.address,
    this.status,
    this.auditStatus,
    this.openimUserId,
    this.remark,
    this.createdAt,
    this.updatedAt,
    this.shops = const [],
  });

  /// 商家ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// 商家编码
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sellerCode;

  /// 商家主体名称
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// 联系人
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? contactName;

  /// 联系电话
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? contactPhone;

  /// 联系邮箱
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? contactEmail;

  /// 营业执照/统一社会信用代码
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? licenseNo;

  /// 资质图片(逗号分隔)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? licenseImgs;

  /// 省代码
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provinceCode;

  /// 市代码
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cityCode;

  /// 区代码
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? districtCode;

  /// 详细地址
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? address;

  /// 状态:0禁用 1启用
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? status;

  /// 审核:0待审 1通过 2拒绝
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? auditStatus;

  /// OpenIM用户ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? openimUserId;

  /// 备注
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? remark;

  /// 创建时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  /// 更新时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  /// 店铺列表
  List<MchShopDTO> shops;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MchSellerDTO &&
          other.id == id &&
          other.sellerCode == sellerCode &&
          other.name == name &&
          other.contactName == contactName &&
          other.contactPhone == contactPhone &&
          other.contactEmail == contactEmail &&
          other.licenseNo == licenseNo &&
          other.licenseImgs == licenseImgs &&
          other.provinceCode == provinceCode &&
          other.cityCode == cityCode &&
          other.districtCode == districtCode &&
          other.address == address &&
          other.status == status &&
          other.auditStatus == auditStatus &&
          other.openimUserId == openimUserId &&
          other.remark == remark &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.shops == shops;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (sellerCode == null ? 0 : sellerCode!.hashCode) +
      (name == null ? 0 : name!.hashCode) +
      (contactName == null ? 0 : contactName!.hashCode) +
      (contactPhone == null ? 0 : contactPhone!.hashCode) +
      (contactEmail == null ? 0 : contactEmail!.hashCode) +
      (licenseNo == null ? 0 : licenseNo!.hashCode) +
      (licenseImgs == null ? 0 : licenseImgs!.hashCode) +
      (provinceCode == null ? 0 : provinceCode!.hashCode) +
      (cityCode == null ? 0 : cityCode!.hashCode) +
      (districtCode == null ? 0 : districtCode!.hashCode) +
      (address == null ? 0 : address!.hashCode) +
      (status == null ? 0 : status!.hashCode) +
      (auditStatus == null ? 0 : auditStatus!.hashCode) +
      (openimUserId == null ? 0 : openimUserId!.hashCode) +
      (remark == null ? 0 : remark!.hashCode) +
      (createdAt == null ? 0 : createdAt!.hashCode) +
      (updatedAt == null ? 0 : updatedAt!.hashCode) +
      (shops.hashCode);

  @override
  String toString() =>
      'MchSellerDTO[id=$id, sellerCode=$sellerCode, name=$name, contactName=$contactName, contactPhone=$contactPhone, contactEmail=$contactEmail, licenseNo=$licenseNo, licenseImgs=$licenseImgs, provinceCode=$provinceCode, cityCode=$cityCode, districtCode=$districtCode, address=$address, status=$status, auditStatus=$auditStatus, openimUserId=$openimUserId, remark=$remark, createdAt=$createdAt, updatedAt=$updatedAt, shops=$shops]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.sellerCode != null) {
      json[r'sellerCode'] = this.sellerCode;
    } else {
      json[r'sellerCode'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.contactName != null) {
      json[r'contactName'] = this.contactName;
    } else {
      json[r'contactName'] = null;
    }
    if (this.contactPhone != null) {
      json[r'contactPhone'] = this.contactPhone;
    } else {
      json[r'contactPhone'] = null;
    }
    if (this.contactEmail != null) {
      json[r'contactEmail'] = this.contactEmail;
    } else {
      json[r'contactEmail'] = null;
    }
    if (this.licenseNo != null) {
      json[r'licenseNo'] = this.licenseNo;
    } else {
      json[r'licenseNo'] = null;
    }
    if (this.licenseImgs != null) {
      json[r'licenseImgs'] = this.licenseImgs;
    } else {
      json[r'licenseImgs'] = null;
    }
    if (this.provinceCode != null) {
      json[r'provinceCode'] = this.provinceCode;
    } else {
      json[r'provinceCode'] = null;
    }
    if (this.cityCode != null) {
      json[r'cityCode'] = this.cityCode;
    } else {
      json[r'cityCode'] = null;
    }
    if (this.districtCode != null) {
      json[r'districtCode'] = this.districtCode;
    } else {
      json[r'districtCode'] = null;
    }
    if (this.address != null) {
      json[r'address'] = this.address;
    } else {
      json[r'address'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.auditStatus != null) {
      json[r'auditStatus'] = this.auditStatus;
    } else {
      json[r'auditStatus'] = null;
    }
    if (this.openimUserId != null) {
      json[r'openimUserId'] = this.openimUserId;
    } else {
      json[r'openimUserId'] = null;
    }
    if (this.remark != null) {
      json[r'remark'] = this.remark;
    } else {
      json[r'remark'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'createdAt'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updatedAt'] = null;
    }
    json[r'shops'] = this.shops;
    return json;
  }

  /// Returns a new [MchSellerDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MchSellerDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "MchSellerDTO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "MchSellerDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MchSellerDTO(
        id: mapValueOfType<int>(json, r'id'),
        sellerCode: mapValueOfType<String>(json, r'sellerCode'),
        name: mapValueOfType<String>(json, r'name'),
        contactName: mapValueOfType<String>(json, r'contactName'),
        contactPhone: mapValueOfType<String>(json, r'contactPhone'),
        contactEmail: mapValueOfType<String>(json, r'contactEmail'),
        licenseNo: mapValueOfType<String>(json, r'licenseNo'),
        licenseImgs: mapValueOfType<String>(json, r'licenseImgs'),
        provinceCode: mapValueOfType<String>(json, r'provinceCode'),
        cityCode: mapValueOfType<String>(json, r'cityCode'),
        districtCode: mapValueOfType<String>(json, r'districtCode'),
        address: mapValueOfType<String>(json, r'address'),
        status: mapValueOfType<int>(json, r'status'),
        auditStatus: mapValueOfType<int>(json, r'auditStatus'),
        openimUserId: mapValueOfType<String>(json, r'openimUserId'),
        remark: mapValueOfType<String>(json, r'remark'),
        createdAt: mapDateTime(json, r'createdAt', ''),
        updatedAt: mapDateTime(json, r'updatedAt', ''),
        shops: MchShopDTO.listFromJson(json[r'shops']),
      );
    }
    return null;
  }

  static List<MchSellerDTO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MchSellerDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MchSellerDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MchSellerDTO> mapFromJson(dynamic json) {
    final map = <String, MchSellerDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MchSellerDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MchSellerDTO-objects as value to a dart map
  static Map<String, List<MchSellerDTO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MchSellerDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MchSellerDTO.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{};
}
