//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NotifyDataRequest {
  /// Returns a new [NotifyDataRequest] instance.
  NotifyDataRequest({
    required this.instOrderNo,
    required this.thirdPartyOrderNo,
    required this.status,
    required this.notifyType,
    this.amount,
    this.currencyId,
  });

  /// 支付系统订单号
  String instOrderNo;

  /// 第三方订单号
  String thirdPartyOrderNo;

  /// 订单状态
  NotifyDataRequestStatusEnum status;

  /// 通知类型
  NotifyDataRequestNotifyTypeEnum notifyType;

  /// 订单金额
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? amount;

  /// 币种Id，默认CNY
  ///
  /// Minimum value: 1
  /// Maximum value: 999
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? currencyId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NotifyDataRequest &&
          other.instOrderNo == instOrderNo &&
          other.thirdPartyOrderNo == thirdPartyOrderNo &&
          other.status == status &&
          other.notifyType == notifyType &&
          other.amount == amount &&
          other.currencyId == currencyId;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (instOrderNo.hashCode) +
      (thirdPartyOrderNo.hashCode) +
      (status.hashCode) +
      (notifyType.hashCode) +
      (amount == null ? 0 : amount!.hashCode) +
      (currencyId == null ? 0 : currencyId!.hashCode);

  @override
  String toString() =>
      'NotifyDataRequest[instOrderNo=$instOrderNo, thirdPartyOrderNo=$thirdPartyOrderNo, status=$status, notifyType=$notifyType, amount=$amount, currencyId=$currencyId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'instOrderNo'] = this.instOrderNo;
    json[r'thirdPartyOrderNo'] = this.thirdPartyOrderNo;
    json[r'status'] = this.status;
    json[r'notifyType'] = this.notifyType;
    if (this.amount != null) {
      json[r'amount'] = this.amount;
    } else {
      json[r'amount'] = null;
    }
    if (this.currencyId != null) {
      json[r'currencyId'] = this.currencyId;
    } else {
      json[r'currencyId'] = null;
    }
    return json;
  }

  /// Returns a new [NotifyDataRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NotifyDataRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "NotifyDataRequest[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "NotifyDataRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NotifyDataRequest(
        instOrderNo: mapValueOfType<String>(json, r'instOrderNo')!,
        thirdPartyOrderNo: mapValueOfType<String>(json, r'thirdPartyOrderNo')!,
        status: NotifyDataRequestStatusEnum.fromJson(json[r'status'])!,
        notifyType:
            NotifyDataRequestNotifyTypeEnum.fromJson(json[r'notifyType'])!,
        amount: json[r'amount'] == null
            ? null
            : num.parse(json[r'amount'].toString()),
        currencyId: mapValueOfType<int>(json, r'currencyId'),
      );
    }
    return null;
  }

  static List<NotifyDataRequest> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <NotifyDataRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotifyDataRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NotifyDataRequest> mapFromJson(dynamic json) {
    final map = <String, NotifyDataRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NotifyDataRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NotifyDataRequest-objects as value to a dart map
  static Map<String, List<NotifyDataRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<NotifyDataRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NotifyDataRequest.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'instOrderNo',
    'thirdPartyOrderNo',
    'status',
    'notifyType',
  };
}

/// 订单状态
class NotifyDataRequestStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const NotifyDataRequestStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SUCCESS = NotifyDataRequestStatusEnum._(r'SUCCESS');
  static const PENDING = NotifyDataRequestStatusEnum._(r'PENDING');
  static const FAILED = NotifyDataRequestStatusEnum._(r'FAILED');
  static const CANCELLED = NotifyDataRequestStatusEnum._(r'CANCELLED');

  /// List of all possible values in this [enum][NotifyDataRequestStatusEnum].
  static const values = <NotifyDataRequestStatusEnum>[
    SUCCESS,
    PENDING,
    FAILED,
    CANCELLED,
  ];

  static NotifyDataRequestStatusEnum? fromJson(dynamic value) =>
      NotifyDataRequestStatusEnumTypeTransformer().decode(value);

  static List<NotifyDataRequestStatusEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <NotifyDataRequestStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotifyDataRequestStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NotifyDataRequestStatusEnum] to String,
/// and [decode] dynamic data back to [NotifyDataRequestStatusEnum].
class NotifyDataRequestStatusEnumTypeTransformer {
  factory NotifyDataRequestStatusEnumTypeTransformer() =>
      _instance ??= const NotifyDataRequestStatusEnumTypeTransformer._();

  const NotifyDataRequestStatusEnumTypeTransformer._();

  String encode(NotifyDataRequestStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NotifyDataRequestStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NotifyDataRequestStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SUCCESS':
          return NotifyDataRequestStatusEnum.SUCCESS;
        case r'PENDING':
          return NotifyDataRequestStatusEnum.PENDING;
        case r'FAILED':
          return NotifyDataRequestStatusEnum.FAILED;
        case r'CANCELLED':
          return NotifyDataRequestStatusEnum.CANCELLED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NotifyDataRequestStatusEnumTypeTransformer] instance.
  static NotifyDataRequestStatusEnumTypeTransformer? _instance;
}

/// 通知类型
class NotifyDataRequestNotifyTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const NotifyDataRequestNotifyTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PAYMENT = NotifyDataRequestNotifyTypeEnum._(r'PAYMENT');
  static const REFUND = NotifyDataRequestNotifyTypeEnum._(r'REFUND');

  /// List of all possible values in this [enum][NotifyDataRequestNotifyTypeEnum].
  static const values = <NotifyDataRequestNotifyTypeEnum>[
    PAYMENT,
    REFUND,
  ];

  static NotifyDataRequestNotifyTypeEnum? fromJson(dynamic value) =>
      NotifyDataRequestNotifyTypeEnumTypeTransformer().decode(value);

  static List<NotifyDataRequestNotifyTypeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <NotifyDataRequestNotifyTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotifyDataRequestNotifyTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NotifyDataRequestNotifyTypeEnum] to String,
/// and [decode] dynamic data back to [NotifyDataRequestNotifyTypeEnum].
class NotifyDataRequestNotifyTypeEnumTypeTransformer {
  factory NotifyDataRequestNotifyTypeEnumTypeTransformer() =>
      _instance ??= const NotifyDataRequestNotifyTypeEnumTypeTransformer._();

  const NotifyDataRequestNotifyTypeEnumTypeTransformer._();

  String encode(NotifyDataRequestNotifyTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NotifyDataRequestNotifyTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NotifyDataRequestNotifyTypeEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PAYMENT':
          return NotifyDataRequestNotifyTypeEnum.PAYMENT;
        case r'REFUND':
          return NotifyDataRequestNotifyTypeEnum.REFUND;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NotifyDataRequestNotifyTypeEnumTypeTransformer] instance.
  static NotifyDataRequestNotifyTypeEnumTypeTransformer? _instance;
}
