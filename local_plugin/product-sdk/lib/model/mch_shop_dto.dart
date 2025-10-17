//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MchShopDTO {
  /// Returns a new [MchShopDTO] instance.
  MchShopDTO({
    this.id,
    this.sellerId,
    this.shopCode,
    this.name,
    this.logo,
    this.banner,
    this.intro,
    this.provinceCode,
    this.cityCode,
    this.districtCode,
    this.address,
    this.openHours,
    this.status,
    this.rating,
    this.followers,
    this.createdAt,
    this.updatedAt,
  });

  /// 店铺ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// 商家ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sellerId;

  /// 店铺编码
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? shopCode;

  /// 店铺名称
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// 店铺LOGO
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? logo;

  /// 店铺Banner
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? banner;

  /// 店铺简介
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? intro;

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

  /// 营业时间文案
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? openHours;

  /// 状态:0关店 1营业
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? status;

  /// 综合评分
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? rating;

  /// 关注数
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? followers;

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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MchShopDTO &&
          other.id == id &&
          other.sellerId == sellerId &&
          other.shopCode == shopCode &&
          other.name == name &&
          other.logo == logo &&
          other.banner == banner &&
          other.intro == intro &&
          other.provinceCode == provinceCode &&
          other.cityCode == cityCode &&
          other.districtCode == districtCode &&
          other.address == address &&
          other.openHours == openHours &&
          other.status == status &&
          other.rating == rating &&
          other.followers == followers &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (sellerId == null ? 0 : sellerId!.hashCode) +
      (shopCode == null ? 0 : shopCode!.hashCode) +
      (name == null ? 0 : name!.hashCode) +
      (logo == null ? 0 : logo!.hashCode) +
      (banner == null ? 0 : banner!.hashCode) +
      (intro == null ? 0 : intro!.hashCode) +
      (provinceCode == null ? 0 : provinceCode!.hashCode) +
      (cityCode == null ? 0 : cityCode!.hashCode) +
      (districtCode == null ? 0 : districtCode!.hashCode) +
      (address == null ? 0 : address!.hashCode) +
      (openHours == null ? 0 : openHours!.hashCode) +
      (status == null ? 0 : status!.hashCode) +
      (rating == null ? 0 : rating!.hashCode) +
      (followers == null ? 0 : followers!.hashCode) +
      (createdAt == null ? 0 : createdAt!.hashCode) +
      (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() =>
      'MchShopDTO[id=$id, sellerId=$sellerId, shopCode=$shopCode, name=$name, logo=$logo, banner=$banner, intro=$intro, provinceCode=$provinceCode, cityCode=$cityCode, districtCode=$districtCode, address=$address, openHours=$openHours, status=$status, rating=$rating, followers=$followers, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.sellerId != null) {
      json[r'sellerId'] = this.sellerId;
    } else {
      json[r'sellerId'] = null;
    }
    if (this.shopCode != null) {
      json[r'shopCode'] = this.shopCode;
    } else {
      json[r'shopCode'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.logo != null) {
      json[r'logo'] = this.logo;
    } else {
      json[r'logo'] = null;
    }
    if (this.banner != null) {
      json[r'banner'] = this.banner;
    } else {
      json[r'banner'] = null;
    }
    if (this.intro != null) {
      json[r'intro'] = this.intro;
    } else {
      json[r'intro'] = null;
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
    if (this.openHours != null) {
      json[r'openHours'] = this.openHours;
    } else {
      json[r'openHours'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.rating != null) {
      json[r'rating'] = this.rating;
    } else {
      json[r'rating'] = null;
    }
    if (this.followers != null) {
      json[r'followers'] = this.followers;
    } else {
      json[r'followers'] = null;
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
    return json;
  }

  /// Returns a new [MchShopDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MchShopDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "MchShopDTO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "MchShopDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MchShopDTO(
        id: mapValueOfType<int>(json, r'id'),
        sellerId: mapValueOfType<int>(json, r'sellerId'),
        shopCode: mapValueOfType<String>(json, r'shopCode'),
        name: mapValueOfType<String>(json, r'name'),
        logo: mapValueOfType<String>(json, r'logo'),
        banner: mapValueOfType<String>(json, r'banner'),
        intro: mapValueOfType<String>(json, r'intro'),
        provinceCode: mapValueOfType<String>(json, r'provinceCode'),
        cityCode: mapValueOfType<String>(json, r'cityCode'),
        districtCode: mapValueOfType<String>(json, r'districtCode'),
        address: mapValueOfType<String>(json, r'address'),
        openHours: mapValueOfType<String>(json, r'openHours'),
        status: mapValueOfType<int>(json, r'status'),
        rating: json[r'rating'] == null
            ? null
            : num.parse(json[r'rating'].toString()),
        followers: mapValueOfType<int>(json, r'followers'),
        createdAt: mapDateTime(json, r'createdAt', ''),
        updatedAt: mapDateTime(json, r'updatedAt', ''),
      );
    }
    return null;
  }

  static List<MchShopDTO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MchShopDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MchShopDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MchShopDTO> mapFromJson(dynamic json) {
    final map = <String, MchShopDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MchShopDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MchShopDTO-objects as value to a dart map
  static Map<String, List<MchShopDTO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MchShopDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MchShopDTO.listFromJson(
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
