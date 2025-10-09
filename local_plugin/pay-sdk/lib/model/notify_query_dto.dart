//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NotifyQueryDTO {
  /// Returns a new [NotifyQueryDTO] instance.
  NotifyQueryDTO({
    this.paymentId,
    this.orderNo,
    this.refundId,
    this.notifyType,
    this.status,
    this.pageNum,
    this.pageSize,
  });

  /// 支付系统订单号
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? paymentId;

  /// 订单系统订单号
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? orderNo;

  /// 退款订单号
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? refundId;

  /// 通知类型
  NotifyQueryDTONotifyTypeEnum? notifyType;

  /// 订单状态
  NotifyQueryDTOStatusEnum? status;

  /// 页码
  ///
  /// Minimum value: 0
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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NotifyQueryDTO &&
          other.paymentId == paymentId &&
          other.orderNo == orderNo &&
          other.refundId == refundId &&
          other.notifyType == notifyType &&
          other.status == status &&
          other.pageNum == pageNum &&
          other.pageSize == pageSize;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (paymentId == null ? 0 : paymentId!.hashCode) +
      (orderNo == null ? 0 : orderNo!.hashCode) +
      (refundId == null ? 0 : refundId!.hashCode) +
      (notifyType == null ? 0 : notifyType!.hashCode) +
      (status == null ? 0 : status!.hashCode) +
      (pageNum == null ? 0 : pageNum!.hashCode) +
      (pageSize == null ? 0 : pageSize!.hashCode);

  @override
  String toString() =>
      'NotifyQueryDTO[paymentId=$paymentId, orderNo=$orderNo, refundId=$refundId, notifyType=$notifyType, status=$status, pageNum=$pageNum, pageSize=$pageSize]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.paymentId != null) {
      json[r'paymentId'] = this.paymentId;
    } else {
      json[r'paymentId'] = null;
    }
    if (this.orderNo != null) {
      json[r'orderNo'] = this.orderNo;
    } else {
      json[r'orderNo'] = null;
    }
    if (this.refundId != null) {
      json[r'refundId'] = this.refundId;
    } else {
      json[r'refundId'] = null;
    }
    if (this.notifyType != null) {
      json[r'notifyType'] = this.notifyType;
    } else {
      json[r'notifyType'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
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
    return json;
  }

  /// Returns a new [NotifyQueryDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NotifyQueryDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "NotifyQueryDTO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "NotifyQueryDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NotifyQueryDTO(
        paymentId: mapValueOfType<String>(json, r'paymentId'),
        orderNo: mapValueOfType<String>(json, r'orderNo'),
        refundId: mapValueOfType<String>(json, r'refundId'),
        notifyType: NotifyQueryDTONotifyTypeEnum.fromJson(json[r'notifyType']),
        status: NotifyQueryDTOStatusEnum.fromJson(json[r'status']),
        pageNum: mapValueOfType<int>(json, r'pageNum'),
        pageSize: mapValueOfType<int>(json, r'pageSize'),
      );
    }
    return null;
  }

  static List<NotifyQueryDTO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <NotifyQueryDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotifyQueryDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NotifyQueryDTO> mapFromJson(dynamic json) {
    final map = <String, NotifyQueryDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NotifyQueryDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NotifyQueryDTO-objects as value to a dart map
  static Map<String, List<NotifyQueryDTO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<NotifyQueryDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NotifyQueryDTO.listFromJson(
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

/// 通知类型
class NotifyQueryDTONotifyTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const NotifyQueryDTONotifyTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PAYMENT = NotifyQueryDTONotifyTypeEnum._(r'PAYMENT');
  static const REFUND = NotifyQueryDTONotifyTypeEnum._(r'REFUND');

  /// List of all possible values in this [enum][NotifyQueryDTONotifyTypeEnum].
  static const values = <NotifyQueryDTONotifyTypeEnum>[
    PAYMENT,
    REFUND,
  ];

  static NotifyQueryDTONotifyTypeEnum? fromJson(dynamic value) =>
      NotifyQueryDTONotifyTypeEnumTypeTransformer().decode(value);

  static List<NotifyQueryDTONotifyTypeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <NotifyQueryDTONotifyTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotifyQueryDTONotifyTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NotifyQueryDTONotifyTypeEnum] to String,
/// and [decode] dynamic data back to [NotifyQueryDTONotifyTypeEnum].
class NotifyQueryDTONotifyTypeEnumTypeTransformer {
  factory NotifyQueryDTONotifyTypeEnumTypeTransformer() =>
      _instance ??= const NotifyQueryDTONotifyTypeEnumTypeTransformer._();

  const NotifyQueryDTONotifyTypeEnumTypeTransformer._();

  String encode(NotifyQueryDTONotifyTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NotifyQueryDTONotifyTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NotifyQueryDTONotifyTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PAYMENT':
          return NotifyQueryDTONotifyTypeEnum.PAYMENT;
        case r'REFUND':
          return NotifyQueryDTONotifyTypeEnum.REFUND;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NotifyQueryDTONotifyTypeEnumTypeTransformer] instance.
  static NotifyQueryDTONotifyTypeEnumTypeTransformer? _instance;
}

/// 订单状态
class NotifyQueryDTOStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const NotifyQueryDTOStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SUCCESS = NotifyQueryDTOStatusEnum._(r'SUCCESS');
  static const PENDING = NotifyQueryDTOStatusEnum._(r'PENDING');
  static const FAILED = NotifyQueryDTOStatusEnum._(r'FAILED');
  static const CANCELLED = NotifyQueryDTOStatusEnum._(r'CANCELLED');

  /// List of all possible values in this [enum][NotifyQueryDTOStatusEnum].
  static const values = <NotifyQueryDTOStatusEnum>[
    SUCCESS,
    PENDING,
    FAILED,
    CANCELLED,
  ];

  static NotifyQueryDTOStatusEnum? fromJson(dynamic value) =>
      NotifyQueryDTOStatusEnumTypeTransformer().decode(value);

  static List<NotifyQueryDTOStatusEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <NotifyQueryDTOStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotifyQueryDTOStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NotifyQueryDTOStatusEnum] to String,
/// and [decode] dynamic data back to [NotifyQueryDTOStatusEnum].
class NotifyQueryDTOStatusEnumTypeTransformer {
  factory NotifyQueryDTOStatusEnumTypeTransformer() =>
      _instance ??= const NotifyQueryDTOStatusEnumTypeTransformer._();

  const NotifyQueryDTOStatusEnumTypeTransformer._();

  String encode(NotifyQueryDTOStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NotifyQueryDTOStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NotifyQueryDTOStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SUCCESS':
          return NotifyQueryDTOStatusEnum.SUCCESS;
        case r'PENDING':
          return NotifyQueryDTOStatusEnum.PENDING;
        case r'FAILED':
          return NotifyQueryDTOStatusEnum.FAILED;
        case r'CANCELLED':
          return NotifyQueryDTOStatusEnum.CANCELLED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NotifyQueryDTOStatusEnumTypeTransformer] instance.
  static NotifyQueryDTOStatusEnumTypeTransformer? _instance;
}
