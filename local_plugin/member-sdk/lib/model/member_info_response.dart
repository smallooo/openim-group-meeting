//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MemberInfoResponse {
  /// Returns a new [MemberInfoResponse] instance.
  MemberInfoResponse({
    this.id,
    this.phone,
    this.email,
    this.password,
    this.fullName,
    this.workDate,
    this.wxCode,
    this.birthday,
    this.country,
    this.province,
    this.city,
    this.district,
    this.gender,
    this.avatar,
    this.ip,
    this.loginCount,
    this.loginErrorCount,
    this.lastLogin,
    this.isHot,
    this.status,
    this.token,
    this.location,
    this.browser,
  });

  /// 主键ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// 手机
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? phone;

  /// 邮箱(选填)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  /// 登录密码
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? password;

  /// 全名
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fullName;

  /// 参加工作时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? workDate;

  /// 微信号
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? wxCode;

  /// 生日
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? birthday;

  /// 国家
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? country;

  /// 省份
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? province;

  /// 城市
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? city;

  /// 区域
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? district;

  /// 状态(1:男 2:女 3:未知)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? gender;

  /// 头像
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? avatar;

  /// IP地址
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ip;

  /// 会员登录次数
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? loginCount;

  /// 会员登录错误次数
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? loginErrorCount;

  /// 最后登录
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? lastLogin;

  /// 状态(0:非热门用户 1:热门用户)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? isHot;

  /// 状态(0:无效 1:有效)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? status;

  /// 令牌
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? token;

  /// 登录地点
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? location;

  /// 浏览器信息
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? browser;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MemberInfoResponse &&
          other.id == id &&
          other.phone == phone &&
          other.email == email &&
          other.password == password &&
          other.fullName == fullName &&
          other.workDate == workDate &&
          other.wxCode == wxCode &&
          other.birthday == birthday &&
          other.country == country &&
          other.province == province &&
          other.city == city &&
          other.district == district &&
          other.gender == gender &&
          other.avatar == avatar &&
          other.ip == ip &&
          other.loginCount == loginCount &&
          other.loginErrorCount == loginErrorCount &&
          other.lastLogin == lastLogin &&
          other.isHot == isHot &&
          other.status == status &&
          other.token == token &&
          other.location == location &&
          other.browser == browser;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (phone == null ? 0 : phone!.hashCode) +
      (email == null ? 0 : email!.hashCode) +
      (password == null ? 0 : password!.hashCode) +
      (fullName == null ? 0 : fullName!.hashCode) +
      (workDate == null ? 0 : workDate!.hashCode) +
      (wxCode == null ? 0 : wxCode!.hashCode) +
      (birthday == null ? 0 : birthday!.hashCode) +
      (country == null ? 0 : country!.hashCode) +
      (province == null ? 0 : province!.hashCode) +
      (city == null ? 0 : city!.hashCode) +
      (district == null ? 0 : district!.hashCode) +
      (gender == null ? 0 : gender!.hashCode) +
      (avatar == null ? 0 : avatar!.hashCode) +
      (ip == null ? 0 : ip!.hashCode) +
      (loginCount == null ? 0 : loginCount!.hashCode) +
      (loginErrorCount == null ? 0 : loginErrorCount!.hashCode) +
      (lastLogin == null ? 0 : lastLogin!.hashCode) +
      (isHot == null ? 0 : isHot!.hashCode) +
      (status == null ? 0 : status!.hashCode) +
      (token == null ? 0 : token!.hashCode) +
      (location == null ? 0 : location!.hashCode) +
      (browser == null ? 0 : browser!.hashCode);

  @override
  String toString() =>
      'MemberInfoResponse[id=$id, phone=$phone, email=$email, password=$password, fullName=$fullName, workDate=$workDate, wxCode=$wxCode, birthday=$birthday, country=$country, province=$province, city=$city, district=$district, gender=$gender, avatar=$avatar, ip=$ip, loginCount=$loginCount, loginErrorCount=$loginErrorCount, lastLogin=$lastLogin, isHot=$isHot, status=$status, token=$token, location=$location, browser=$browser]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.phone != null) {
      json[r'phone'] = this.phone;
    } else {
      json[r'phone'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.password != null) {
      json[r'password'] = this.password;
    } else {
      json[r'password'] = null;
    }
    if (this.fullName != null) {
      json[r'fullName'] = this.fullName;
    } else {
      json[r'fullName'] = null;
    }
    if (this.workDate != null) {
      json[r'workDate'] = this.workDate!.toUtc().toIso8601String();
    } else {
      json[r'workDate'] = null;
    }
    if (this.wxCode != null) {
      json[r'wxCode'] = this.wxCode;
    } else {
      json[r'wxCode'] = null;
    }
    if (this.birthday != null) {
      json[r'birthday'] = this.birthday!.toUtc().toIso8601String();
    } else {
      json[r'birthday'] = null;
    }
    if (this.country != null) {
      json[r'country'] = this.country;
    } else {
      json[r'country'] = null;
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
    if (this.gender != null) {
      json[r'gender'] = this.gender;
    } else {
      json[r'gender'] = null;
    }
    if (this.avatar != null) {
      json[r'avatar'] = this.avatar;
    } else {
      json[r'avatar'] = null;
    }
    if (this.ip != null) {
      json[r'ip'] = this.ip;
    } else {
      json[r'ip'] = null;
    }
    if (this.loginCount != null) {
      json[r'loginCount'] = this.loginCount;
    } else {
      json[r'loginCount'] = null;
    }
    if (this.loginErrorCount != null) {
      json[r'loginErrorCount'] = this.loginErrorCount;
    } else {
      json[r'loginErrorCount'] = null;
    }
    if (this.lastLogin != null) {
      json[r'lastLogin'] = this.lastLogin!.toUtc().toIso8601String();
    } else {
      json[r'lastLogin'] = null;
    }
    if (this.isHot != null) {
      json[r'isHot'] = this.isHot;
    } else {
      json[r'isHot'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.token != null) {
      json[r'token'] = this.token;
    } else {
      json[r'token'] = null;
    }
    if (this.location != null) {
      json[r'location'] = this.location;
    } else {
      json[r'location'] = null;
    }
    if (this.browser != null) {
      json[r'browser'] = this.browser;
    } else {
      json[r'browser'] = null;
    }
    return json;
  }

  /// Returns a new [MemberInfoResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MemberInfoResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "MemberInfoResponse[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "MemberInfoResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MemberInfoResponse(
        id: mapValueOfType<int>(json, r'id'),
        phone: mapValueOfType<String>(json, r'phone'),
        email: mapValueOfType<String>(json, r'email'),
        password: mapValueOfType<String>(json, r'password'),
        fullName: mapValueOfType<String>(json, r'fullName'),
        workDate: mapDateTime(json, r'workDate', ''),
        wxCode: mapValueOfType<String>(json, r'wxCode'),
        birthday: mapDateTime(json, r'birthday', ''),
        country: mapValueOfType<String>(json, r'country'),
        province: mapValueOfType<String>(json, r'province'),
        city: mapValueOfType<String>(json, r'city'),
        district: mapValueOfType<String>(json, r'district'),
        gender: mapValueOfType<int>(json, r'gender'),
        avatar: mapValueOfType<String>(json, r'avatar'),
        ip: mapValueOfType<String>(json, r'ip'),
        loginCount: mapValueOfType<int>(json, r'loginCount'),
        loginErrorCount: mapValueOfType<int>(json, r'loginErrorCount'),
        lastLogin: mapDateTime(json, r'lastLogin', ''),
        isHot: mapValueOfType<int>(json, r'isHot'),
        status: mapValueOfType<int>(json, r'status'),
        token: mapValueOfType<String>(json, r'token'),
        location: mapValueOfType<String>(json, r'location'),
        browser: mapValueOfType<String>(json, r'browser'),
      );
    }
    return null;
  }

  static List<MemberInfoResponse> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MemberInfoResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MemberInfoResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MemberInfoResponse> mapFromJson(dynamic json) {
    final map = <String, MemberInfoResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MemberInfoResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MemberInfoResponse-objects as value to a dart map
  static Map<String, List<MemberInfoResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MemberInfoResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MemberInfoResponse.listFromJson(
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
