//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CustomerServiceInfoVO {
  /// Returns a new [CustomerServiceInfoVO] instance.
  CustomerServiceInfoVO({
    this.customerServiceId,
    this.customerServiceName,
    this.customerServiceAvatar,
    this.department,
  });

  /// 客服ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? customerServiceId;

  /// 客服姓名
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? customerServiceName;

  /// 客服头像
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? customerServiceAvatar;

  /// 客服部门
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? department;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CustomerServiceInfoVO &&
          other.customerServiceId == customerServiceId &&
          other.customerServiceName == customerServiceName &&
          other.customerServiceAvatar == customerServiceAvatar &&
          other.department == department;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (customerServiceId == null ? 0 : customerServiceId!.hashCode) +
      (customerServiceName == null ? 0 : customerServiceName!.hashCode) +
      (customerServiceAvatar == null ? 0 : customerServiceAvatar!.hashCode) +
      (department == null ? 0 : department!.hashCode);

  @override
  String toString() =>
      'CustomerServiceInfoVO[customerServiceId=$customerServiceId, customerServiceName=$customerServiceName, customerServiceAvatar=$customerServiceAvatar, department=$department]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.customerServiceId != null) {
      json[r'customerServiceId'] = this.customerServiceId;
    } else {
      json[r'customerServiceId'] = null;
    }
    if (this.customerServiceName != null) {
      json[r'customerServiceName'] = this.customerServiceName;
    } else {
      json[r'customerServiceName'] = null;
    }
    if (this.customerServiceAvatar != null) {
      json[r'customerServiceAvatar'] = this.customerServiceAvatar;
    } else {
      json[r'customerServiceAvatar'] = null;
    }
    if (this.department != null) {
      json[r'department'] = this.department;
    } else {
      json[r'department'] = null;
    }
    return json;
  }

  /// Returns a new [CustomerServiceInfoVO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CustomerServiceInfoVO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "CustomerServiceInfoVO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "CustomerServiceInfoVO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CustomerServiceInfoVO(
        customerServiceId: mapValueOfType<int>(json, r'customerServiceId'),
        customerServiceName:
            mapValueOfType<String>(json, r'customerServiceName'),
        customerServiceAvatar:
            mapValueOfType<String>(json, r'customerServiceAvatar'),
        department: mapValueOfType<String>(json, r'department'),
      );
    }
    return null;
  }

  static List<CustomerServiceInfoVO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <CustomerServiceInfoVO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CustomerServiceInfoVO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CustomerServiceInfoVO> mapFromJson(dynamic json) {
    final map = <String, CustomerServiceInfoVO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CustomerServiceInfoVO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CustomerServiceInfoVO-objects as value to a dart map
  static Map<String, List<CustomerServiceInfoVO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<CustomerServiceInfoVO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CustomerServiceInfoVO.listFromJson(
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
