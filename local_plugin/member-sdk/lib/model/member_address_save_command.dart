//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MemberAddressSaveCommand {
  /// Returns a new [MemberAddressSaveCommand] instance.
  MemberAddressSaveCommand({
    this.id,
    this.memberId,
    this.receiverName,
    this.receiverPhone,
    this.province,
    this.city,
    this.district,
    this.detailAddress,
    this.isDefault,
  });

  /// 主键ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// 用户ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? memberId;

  /// 收货人
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? receiverName;

  /// 收货人电话号码
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? receiverPhone;

  /// 省
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? province;

  /// 市
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? city;

  /// 区
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? district;

  /// 收货地址
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? detailAddress;

  /// 是否默认 1:默认 2:非默认
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? isDefault;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MemberAddressSaveCommand &&
          other.id == id &&
          other.memberId == memberId &&
          other.receiverName == receiverName &&
          other.receiverPhone == receiverPhone &&
          other.province == province &&
          other.city == city &&
          other.district == district &&
          other.detailAddress == detailAddress &&
          other.isDefault == isDefault;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (memberId == null ? 0 : memberId!.hashCode) +
      (receiverName == null ? 0 : receiverName!.hashCode) +
      (receiverPhone == null ? 0 : receiverPhone!.hashCode) +
      (province == null ? 0 : province!.hashCode) +
      (city == null ? 0 : city!.hashCode) +
      (district == null ? 0 : district!.hashCode) +
      (detailAddress == null ? 0 : detailAddress!.hashCode) +
      (isDefault == null ? 0 : isDefault!.hashCode);

  @override
  String toString() =>
      'MemberAddressSaveCommand[id=$id, memberId=$memberId, receiverName=$receiverName, receiverPhone=$receiverPhone, province=$province, city=$city, district=$district, detailAddress=$detailAddress, isDefault=$isDefault]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.memberId != null) {
      json[r'memberId'] = this.memberId;
    } else {
      json[r'memberId'] = null;
    }
    if (this.receiverName != null) {
      json[r'receiverName'] = this.receiverName;
    } else {
      json[r'receiverName'] = null;
    }
    if (this.receiverPhone != null) {
      json[r'receiverPhone'] = this.receiverPhone;
    } else {
      json[r'receiverPhone'] = null;
    }
    if (this.province != null) {
      json[r'province'] = this.province;
    } else {
      json[r'province'] = null;
    }
    if (this.city != null) {
      json[r'city'] = this.city;
    } else {
      json[r'city'] = null;
    }
    if (this.district != null) {
      json[r'district'] = this.district;
    } else {
      json[r'district'] = null;
    }
    if (this.detailAddress != null) {
      json[r'detailAddress'] = this.detailAddress;
    } else {
      json[r'detailAddress'] = null;
    }
    if (this.isDefault != null) {
      json[r'isDefault'] = this.isDefault;
    } else {
      json[r'isDefault'] = null;
    }
    return json;
  }

  /// Returns a new [MemberAddressSaveCommand] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MemberAddressSaveCommand? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "MemberAddressSaveCommand[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "MemberAddressSaveCommand[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MemberAddressSaveCommand(
        id: mapValueOfType<int>(json, r'id'),
        memberId: mapValueOfType<int>(json, r'memberId'),
        receiverName: mapValueOfType<String>(json, r'receiverName'),
        receiverPhone: mapValueOfType<String>(json, r'receiverPhone'),
        province: mapValueOfType<String>(json, r'province'),
        city: mapValueOfType<String>(json, r'city'),
        district: mapValueOfType<String>(json, r'district'),
        detailAddress: mapValueOfType<String>(json, r'detailAddress'),
        isDefault: mapValueOfType<int>(json, r'isDefault'),
      );
    }
    return null;
  }

  static List<MemberAddressSaveCommand> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MemberAddressSaveCommand>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MemberAddressSaveCommand.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MemberAddressSaveCommand> mapFromJson(dynamic json) {
    final map = <String, MemberAddressSaveCommand>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MemberAddressSaveCommand.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MemberAddressSaveCommand-objects as value to a dart map
  static Map<String, List<MemberAddressSaveCommand>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MemberAddressSaveCommand>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MemberAddressSaveCommand.listFromJson(
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
