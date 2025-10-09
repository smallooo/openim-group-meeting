//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PersonalPayOrderListQueryDTO {
  /// Returns a new [PersonalPayOrderListQueryDTO] instance.
  PersonalPayOrderListQueryDTO({
    this.pageNum,
    this.pageSize,
    this.status,
    this.paymentMethod,
  });

  /// 页码
  ///
  /// Minimum value: 1
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pageNum;

  /// 页大小
  ///
  /// Minimum value: 1
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pageSize;

  /// 订单状态
  PersonalPayOrderListQueryDTOStatusEnum? status;

  /// 支付方式
  PersonalPayOrderListQueryDTOPaymentMethodEnum? paymentMethod;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PersonalPayOrderListQueryDTO &&
          other.pageNum == pageNum &&
          other.pageSize == pageSize &&
          other.status == status &&
          other.paymentMethod == paymentMethod;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (pageNum == null ? 0 : pageNum!.hashCode) +
      (pageSize == null ? 0 : pageSize!.hashCode) +
      (status == null ? 0 : status!.hashCode) +
      (paymentMethod == null ? 0 : paymentMethod!.hashCode);

  @override
  String toString() =>
      'PersonalPayOrderListQueryDTO[pageNum=$pageNum, pageSize=$pageSize, status=$status, paymentMethod=$paymentMethod]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.pageNum != null) {
      json[r'pageNum'] = this.pageNum;
    } else {
      json[r'pageNum'] = null;
    }
    if (this.pageSize != null) {
      json[r'pageSize'] = this.pageSize;
    } else {
      json[r'pageSize'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.paymentMethod != null) {
      json[r'paymentMethod'] = this.paymentMethod;
    } else {
      json[r'paymentMethod'] = null;
    }
    return json;
  }

  /// Returns a new [PersonalPayOrderListQueryDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PersonalPayOrderListQueryDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "PersonalPayOrderListQueryDTO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "PersonalPayOrderListQueryDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PersonalPayOrderListQueryDTO(
        pageNum: mapValueOfType<int>(json, r'pageNum'),
        pageSize: mapValueOfType<int>(json, r'pageSize'),
        status:
            PersonalPayOrderListQueryDTOStatusEnum.fromJson(json[r'status']),
        paymentMethod: PersonalPayOrderListQueryDTOPaymentMethodEnum.fromJson(
            json[r'paymentMethod']),
      );
    }
    return null;
  }

  static List<PersonalPayOrderListQueryDTO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PersonalPayOrderListQueryDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PersonalPayOrderListQueryDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PersonalPayOrderListQueryDTO> mapFromJson(dynamic json) {
    final map = <String, PersonalPayOrderListQueryDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PersonalPayOrderListQueryDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PersonalPayOrderListQueryDTO-objects as value to a dart map
  static Map<String, List<PersonalPayOrderListQueryDTO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PersonalPayOrderListQueryDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PersonalPayOrderListQueryDTO.listFromJson(
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

/// 订单状态
class PersonalPayOrderListQueryDTOStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const PersonalPayOrderListQueryDTOStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SUCCESS = PersonalPayOrderListQueryDTOStatusEnum._(r'SUCCESS');
  static const PENDING = PersonalPayOrderListQueryDTOStatusEnum._(r'PENDING');
  static const FAILED = PersonalPayOrderListQueryDTOStatusEnum._(r'FAILED');
  static const CANCELLED =
      PersonalPayOrderListQueryDTOStatusEnum._(r'CANCELLED');

  /// List of all possible values in this [enum][PersonalPayOrderListQueryDTOStatusEnum].
  static const values = <PersonalPayOrderListQueryDTOStatusEnum>[
    SUCCESS,
    PENDING,
    FAILED,
    CANCELLED,
  ];

  static PersonalPayOrderListQueryDTOStatusEnum? fromJson(dynamic value) =>
      PersonalPayOrderListQueryDTOStatusEnumTypeTransformer().decode(value);

  static List<PersonalPayOrderListQueryDTOStatusEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PersonalPayOrderListQueryDTOStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PersonalPayOrderListQueryDTOStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PersonalPayOrderListQueryDTOStatusEnum] to String,
/// and [decode] dynamic data back to [PersonalPayOrderListQueryDTOStatusEnum].
class PersonalPayOrderListQueryDTOStatusEnumTypeTransformer {
  factory PersonalPayOrderListQueryDTOStatusEnumTypeTransformer() =>
      _instance ??=
          const PersonalPayOrderListQueryDTOStatusEnumTypeTransformer._();

  const PersonalPayOrderListQueryDTOStatusEnumTypeTransformer._();

  String encode(PersonalPayOrderListQueryDTOStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PersonalPayOrderListQueryDTOStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PersonalPayOrderListQueryDTOStatusEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SUCCESS':
          return PersonalPayOrderListQueryDTOStatusEnum.SUCCESS;
        case r'PENDING':
          return PersonalPayOrderListQueryDTOStatusEnum.PENDING;
        case r'FAILED':
          return PersonalPayOrderListQueryDTOStatusEnum.FAILED;
        case r'CANCELLED':
          return PersonalPayOrderListQueryDTOStatusEnum.CANCELLED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PersonalPayOrderListQueryDTOStatusEnumTypeTransformer] instance.
  static PersonalPayOrderListQueryDTOStatusEnumTypeTransformer? _instance;
}

/// 支付方式
class PersonalPayOrderListQueryDTOPaymentMethodEnum {
  /// Instantiate a new enum with the provided [value].
  const PersonalPayOrderListQueryDTOPaymentMethodEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const WALLET =
      PersonalPayOrderListQueryDTOPaymentMethodEnum._(r'WALLET');
  static const WECHAT =
      PersonalPayOrderListQueryDTOPaymentMethodEnum._(r'WECHAT');
  static const ALIPAY =
      PersonalPayOrderListQueryDTOPaymentMethodEnum._(r'ALIPAY');
  static const UNIONPAY =
      PersonalPayOrderListQueryDTOPaymentMethodEnum._(r'UNIONPAY');

  /// List of all possible values in this [enum][PersonalPayOrderListQueryDTOPaymentMethodEnum].
  static const values = <PersonalPayOrderListQueryDTOPaymentMethodEnum>[
    WALLET,
    WECHAT,
    ALIPAY,
    UNIONPAY,
  ];

  static PersonalPayOrderListQueryDTOPaymentMethodEnum? fromJson(
          dynamic value) =>
      PersonalPayOrderListQueryDTOPaymentMethodEnumTypeTransformer()
          .decode(value);

  static List<PersonalPayOrderListQueryDTOPaymentMethodEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PersonalPayOrderListQueryDTOPaymentMethodEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value =
            PersonalPayOrderListQueryDTOPaymentMethodEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PersonalPayOrderListQueryDTOPaymentMethodEnum] to String,
/// and [decode] dynamic data back to [PersonalPayOrderListQueryDTOPaymentMethodEnum].
class PersonalPayOrderListQueryDTOPaymentMethodEnumTypeTransformer {
  factory PersonalPayOrderListQueryDTOPaymentMethodEnumTypeTransformer() =>
      _instance ??=
          const PersonalPayOrderListQueryDTOPaymentMethodEnumTypeTransformer
              ._();

  const PersonalPayOrderListQueryDTOPaymentMethodEnumTypeTransformer._();

  String encode(PersonalPayOrderListQueryDTOPaymentMethodEnum data) =>
      data.value;

  /// Decodes a [dynamic value][data] to a PersonalPayOrderListQueryDTOPaymentMethodEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PersonalPayOrderListQueryDTOPaymentMethodEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'WALLET':
          return PersonalPayOrderListQueryDTOPaymentMethodEnum.WALLET;
        case r'WECHAT':
          return PersonalPayOrderListQueryDTOPaymentMethodEnum.WECHAT;
        case r'ALIPAY':
          return PersonalPayOrderListQueryDTOPaymentMethodEnum.ALIPAY;
        case r'UNIONPAY':
          return PersonalPayOrderListQueryDTOPaymentMethodEnum.UNIONPAY;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PersonalPayOrderListQueryDTOPaymentMethodEnumTypeTransformer] instance.
  static PersonalPayOrderListQueryDTOPaymentMethodEnumTypeTransformer?
      _instance;
}
