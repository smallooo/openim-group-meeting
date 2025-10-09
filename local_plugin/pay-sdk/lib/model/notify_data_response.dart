//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NotifyDataResponse {
  /// Returns a new [NotifyDataResponse] instance.
  NotifyDataResponse({
    this.notifyId,
    this.orderNo,
    this.paymentId,
    this.instOrderNo,
    this.thirdPartyOrderNo,
    this.status,
    this.notifyType,
    this.amount,
    this.currency,
    this.paymentMethod,
    this.subject,
    this.description,
    this.userId,
    this.clientIp,
    this.paidTime,
    this.refundTime,
    this.failReason,
    this.notifyUrl,
    this.notifyTime,
    this.responseCode,
    this.responseMessage,
    this.retryCount,
    this.maxRetryCount,
    this.nextRetryTime,
    this.createTime,
    this.updateTime,
    this.notifyLogs = const [],
  });

  /// 通知ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? notifyId;

  /// 订单号
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? orderNo;

  /// 支付系统订单号
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? paymentId;

  /// 机构订单号
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? instOrderNo;

  /// 第三方订单号
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? thirdPartyOrderNo;

  /// 订单状态
  NotifyDataResponseStatusEnum? status;

  /// 通知类型
  NotifyDataResponseNotifyTypeEnum? notifyType;

  /// 订单金额
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? amount;

  /// 币种
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currency;

  /// 支付方式
  NotifyDataResponsePaymentMethodEnum? paymentMethod;

  /// 订单标题
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subject;

  /// 订单描述
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// 用户ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  /// 客户端IP
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientIp;

  /// 支付完成时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? paidTime;

  /// 退款完成时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? refundTime;

  /// 失败原因
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? failReason;

  /// 通知地址
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? notifyUrl;

  /// 通知时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? notifyTime;

  /// 响应状态码
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? responseCode;

  /// 响应消息
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? responseMessage;

  /// 重试次数
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? retryCount;

  /// 最大重试次数
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxRetryCount;

  /// 下次重试时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? nextRetryTime;

  /// 创建时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createTime;

  /// 更新时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updateTime;

  /// 通知日志列表
  List<NotifyLogResponse> notifyLogs;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NotifyDataResponse &&
          other.notifyId == notifyId &&
          other.orderNo == orderNo &&
          other.paymentId == paymentId &&
          other.instOrderNo == instOrderNo &&
          other.thirdPartyOrderNo == thirdPartyOrderNo &&
          other.status == status &&
          other.notifyType == notifyType &&
          other.amount == amount &&
          other.currency == currency &&
          other.paymentMethod == paymentMethod &&
          other.subject == subject &&
          other.description == description &&
          other.userId == userId &&
          other.clientIp == clientIp &&
          other.paidTime == paidTime &&
          other.refundTime == refundTime &&
          other.failReason == failReason &&
          other.notifyUrl == notifyUrl &&
          other.notifyTime == notifyTime &&
          other.responseCode == responseCode &&
          other.responseMessage == responseMessage &&
          other.retryCount == retryCount &&
          other.maxRetryCount == maxRetryCount &&
          other.nextRetryTime == nextRetryTime &&
          other.createTime == createTime &&
          other.updateTime == updateTime &&
          other.notifyLogs == notifyLogs;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (notifyId == null ? 0 : notifyId!.hashCode) +
      (orderNo == null ? 0 : orderNo!.hashCode) +
      (paymentId == null ? 0 : paymentId!.hashCode) +
      (instOrderNo == null ? 0 : instOrderNo!.hashCode) +
      (thirdPartyOrderNo == null ? 0 : thirdPartyOrderNo!.hashCode) +
      (status == null ? 0 : status!.hashCode) +
      (notifyType == null ? 0 : notifyType!.hashCode) +
      (amount == null ? 0 : amount!.hashCode) +
      (currency == null ? 0 : currency!.hashCode) +
      (paymentMethod == null ? 0 : paymentMethod!.hashCode) +
      (subject == null ? 0 : subject!.hashCode) +
      (description == null ? 0 : description!.hashCode) +
      (userId == null ? 0 : userId!.hashCode) +
      (clientIp == null ? 0 : clientIp!.hashCode) +
      (paidTime == null ? 0 : paidTime!.hashCode) +
      (refundTime == null ? 0 : refundTime!.hashCode) +
      (failReason == null ? 0 : failReason!.hashCode) +
      (notifyUrl == null ? 0 : notifyUrl!.hashCode) +
      (notifyTime == null ? 0 : notifyTime!.hashCode) +
      (responseCode == null ? 0 : responseCode!.hashCode) +
      (responseMessage == null ? 0 : responseMessage!.hashCode) +
      (retryCount == null ? 0 : retryCount!.hashCode) +
      (maxRetryCount == null ? 0 : maxRetryCount!.hashCode) +
      (nextRetryTime == null ? 0 : nextRetryTime!.hashCode) +
      (createTime == null ? 0 : createTime!.hashCode) +
      (updateTime == null ? 0 : updateTime!.hashCode) +
      (notifyLogs.hashCode);

  @override
  String toString() =>
      'NotifyDataResponse[notifyId=$notifyId, orderNo=$orderNo, paymentId=$paymentId, instOrderNo=$instOrderNo, thirdPartyOrderNo=$thirdPartyOrderNo, status=$status, notifyType=$notifyType, amount=$amount, currency=$currency, paymentMethod=$paymentMethod, subject=$subject, description=$description, userId=$userId, clientIp=$clientIp, paidTime=$paidTime, refundTime=$refundTime, failReason=$failReason, notifyUrl=$notifyUrl, notifyTime=$notifyTime, responseCode=$responseCode, responseMessage=$responseMessage, retryCount=$retryCount, maxRetryCount=$maxRetryCount, nextRetryTime=$nextRetryTime, createTime=$createTime, updateTime=$updateTime, notifyLogs=$notifyLogs]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.notifyId != null) {
      json[r'notifyId'] = this.notifyId;
    } else {
      json[r'notifyId'] = null;
    }
    if (this.orderNo != null) {
      json[r'orderNo'] = this.orderNo;
    } else {
      json[r'orderNo'] = null;
    }
    if (this.paymentId != null) {
      json[r'paymentId'] = this.paymentId;
    } else {
      json[r'paymentId'] = null;
    }
    if (this.instOrderNo != null) {
      json[r'instOrderNo'] = this.instOrderNo;
    } else {
      json[r'instOrderNo'] = null;
    }
    if (this.thirdPartyOrderNo != null) {
      json[r'thirdPartyOrderNo'] = this.thirdPartyOrderNo;
    } else {
      json[r'thirdPartyOrderNo'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.notifyType != null) {
      json[r'notifyType'] = this.notifyType;
    } else {
      json[r'notifyType'] = null;
    }
    if (this.amount != null) {
      json[r'amount'] = this.amount;
    } else {
      json[r'amount'] = null;
    }
    if (this.currency != null) {
      json[r'currency'] = this.currency;
    } else {
      json[r'currency'] = null;
    }
    if (this.paymentMethod != null) {
      json[r'paymentMethod'] = this.paymentMethod;
    } else {
      json[r'paymentMethod'] = null;
    }
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.userId != null) {
      json[r'userId'] = this.userId;
    } else {
      json[r'userId'] = null;
    }
    if (this.clientIp != null) {
      json[r'clientIp'] = this.clientIp;
    } else {
      json[r'clientIp'] = null;
    }
    if (this.paidTime != null) {
      json[r'paidTime'] = this.paidTime;
    } else {
      json[r'paidTime'] = null;
    }
    if (this.refundTime != null) {
      json[r'refundTime'] = this.refundTime;
    } else {
      json[r'refundTime'] = null;
    }
    if (this.failReason != null) {
      json[r'failReason'] = this.failReason;
    } else {
      json[r'failReason'] = null;
    }
    if (this.notifyUrl != null) {
      json[r'notifyUrl'] = this.notifyUrl;
    } else {
      json[r'notifyUrl'] = null;
    }
    if (this.notifyTime != null) {
      json[r'notifyTime'] = this.notifyTime;
    } else {
      json[r'notifyTime'] = null;
    }
    if (this.responseCode != null) {
      json[r'responseCode'] = this.responseCode;
    } else {
      json[r'responseCode'] = null;
    }
    if (this.responseMessage != null) {
      json[r'responseMessage'] = this.responseMessage;
    } else {
      json[r'responseMessage'] = null;
    }
    if (this.retryCount != null) {
      json[r'retryCount'] = this.retryCount;
    } else {
      json[r'retryCount'] = null;
    }
    if (this.maxRetryCount != null) {
      json[r'maxRetryCount'] = this.maxRetryCount;
    } else {
      json[r'maxRetryCount'] = null;
    }
    if (this.nextRetryTime != null) {
      json[r'nextRetryTime'] = this.nextRetryTime;
    } else {
      json[r'nextRetryTime'] = null;
    }
    if (this.createTime != null) {
      json[r'createTime'] = this.createTime;
    } else {
      json[r'createTime'] = null;
    }
    if (this.updateTime != null) {
      json[r'updateTime'] = this.updateTime;
    } else {
      json[r'updateTime'] = null;
    }
    json[r'notifyLogs'] = this.notifyLogs;
    return json;
  }

  /// Returns a new [NotifyDataResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NotifyDataResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "NotifyDataResponse[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "NotifyDataResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NotifyDataResponse(
        notifyId: mapValueOfType<int>(json, r'notifyId'),
        orderNo: mapValueOfType<String>(json, r'orderNo'),
        paymentId: mapValueOfType<String>(json, r'paymentId'),
        instOrderNo: mapValueOfType<String>(json, r'instOrderNo'),
        thirdPartyOrderNo: mapValueOfType<String>(json, r'thirdPartyOrderNo'),
        status: NotifyDataResponseStatusEnum.fromJson(json[r'status']),
        notifyType:
            NotifyDataResponseNotifyTypeEnum.fromJson(json[r'notifyType']),
        amount: json[r'amount'] == null
            ? null
            : num.parse(json[r'amount'].toString()),
        currency: mapValueOfType<String>(json, r'currency'),
        paymentMethod: NotifyDataResponsePaymentMethodEnum.fromJson(
            json[r'paymentMethod']),
        subject: mapValueOfType<String>(json, r'subject'),
        description: mapValueOfType<String>(json, r'description'),
        userId: mapValueOfType<String>(json, r'userId'),
        clientIp: mapValueOfType<String>(json, r'clientIp'),
        paidTime: mapValueOfType<int>(json, r'paidTime'),
        refundTime: mapValueOfType<int>(json, r'refundTime'),
        failReason: mapValueOfType<String>(json, r'failReason'),
        notifyUrl: mapValueOfType<String>(json, r'notifyUrl'),
        notifyTime: mapValueOfType<int>(json, r'notifyTime'),
        responseCode: mapValueOfType<String>(json, r'responseCode'),
        responseMessage: mapValueOfType<String>(json, r'responseMessage'),
        retryCount: mapValueOfType<int>(json, r'retryCount'),
        maxRetryCount: mapValueOfType<int>(json, r'maxRetryCount'),
        nextRetryTime: mapValueOfType<int>(json, r'nextRetryTime'),
        createTime: mapValueOfType<int>(json, r'createTime'),
        updateTime: mapValueOfType<int>(json, r'updateTime'),
        notifyLogs: NotifyLogResponse.listFromJson(json[r'notifyLogs']),
      );
    }
    return null;
  }

  static List<NotifyDataResponse> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <NotifyDataResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotifyDataResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NotifyDataResponse> mapFromJson(dynamic json) {
    final map = <String, NotifyDataResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NotifyDataResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NotifyDataResponse-objects as value to a dart map
  static Map<String, List<NotifyDataResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<NotifyDataResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NotifyDataResponse.listFromJson(
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
class NotifyDataResponseStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const NotifyDataResponseStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SUCCESS = NotifyDataResponseStatusEnum._(r'SUCCESS');
  static const PENDING = NotifyDataResponseStatusEnum._(r'PENDING');
  static const FAILED = NotifyDataResponseStatusEnum._(r'FAILED');
  static const CANCELLED = NotifyDataResponseStatusEnum._(r'CANCELLED');

  /// List of all possible values in this [enum][NotifyDataResponseStatusEnum].
  static const values = <NotifyDataResponseStatusEnum>[
    SUCCESS,
    PENDING,
    FAILED,
    CANCELLED,
  ];

  static NotifyDataResponseStatusEnum? fromJson(dynamic value) =>
      NotifyDataResponseStatusEnumTypeTransformer().decode(value);

  static List<NotifyDataResponseStatusEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <NotifyDataResponseStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotifyDataResponseStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NotifyDataResponseStatusEnum] to String,
/// and [decode] dynamic data back to [NotifyDataResponseStatusEnum].
class NotifyDataResponseStatusEnumTypeTransformer {
  factory NotifyDataResponseStatusEnumTypeTransformer() =>
      _instance ??= const NotifyDataResponseStatusEnumTypeTransformer._();

  const NotifyDataResponseStatusEnumTypeTransformer._();

  String encode(NotifyDataResponseStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NotifyDataResponseStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NotifyDataResponseStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SUCCESS':
          return NotifyDataResponseStatusEnum.SUCCESS;
        case r'PENDING':
          return NotifyDataResponseStatusEnum.PENDING;
        case r'FAILED':
          return NotifyDataResponseStatusEnum.FAILED;
        case r'CANCELLED':
          return NotifyDataResponseStatusEnum.CANCELLED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NotifyDataResponseStatusEnumTypeTransformer] instance.
  static NotifyDataResponseStatusEnumTypeTransformer? _instance;
}

/// 通知类型
class NotifyDataResponseNotifyTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const NotifyDataResponseNotifyTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PAYMENT = NotifyDataResponseNotifyTypeEnum._(r'PAYMENT');
  static const REFUND = NotifyDataResponseNotifyTypeEnum._(r'REFUND');

  /// List of all possible values in this [enum][NotifyDataResponseNotifyTypeEnum].
  static const values = <NotifyDataResponseNotifyTypeEnum>[
    PAYMENT,
    REFUND,
  ];

  static NotifyDataResponseNotifyTypeEnum? fromJson(dynamic value) =>
      NotifyDataResponseNotifyTypeEnumTypeTransformer().decode(value);

  static List<NotifyDataResponseNotifyTypeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <NotifyDataResponseNotifyTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotifyDataResponseNotifyTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NotifyDataResponseNotifyTypeEnum] to String,
/// and [decode] dynamic data back to [NotifyDataResponseNotifyTypeEnum].
class NotifyDataResponseNotifyTypeEnumTypeTransformer {
  factory NotifyDataResponseNotifyTypeEnumTypeTransformer() =>
      _instance ??= const NotifyDataResponseNotifyTypeEnumTypeTransformer._();

  const NotifyDataResponseNotifyTypeEnumTypeTransformer._();

  String encode(NotifyDataResponseNotifyTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NotifyDataResponseNotifyTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NotifyDataResponseNotifyTypeEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PAYMENT':
          return NotifyDataResponseNotifyTypeEnum.PAYMENT;
        case r'REFUND':
          return NotifyDataResponseNotifyTypeEnum.REFUND;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NotifyDataResponseNotifyTypeEnumTypeTransformer] instance.
  static NotifyDataResponseNotifyTypeEnumTypeTransformer? _instance;
}

/// 支付方式
class NotifyDataResponsePaymentMethodEnum {
  /// Instantiate a new enum with the provided [value].
  const NotifyDataResponsePaymentMethodEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const WALLET = NotifyDataResponsePaymentMethodEnum._(r'WALLET');
  static const WECHAT = NotifyDataResponsePaymentMethodEnum._(r'WECHAT');
  static const ALIPAY = NotifyDataResponsePaymentMethodEnum._(r'ALIPAY');
  static const UNIONPAY = NotifyDataResponsePaymentMethodEnum._(r'UNIONPAY');

  /// List of all possible values in this [enum][NotifyDataResponsePaymentMethodEnum].
  static const values = <NotifyDataResponsePaymentMethodEnum>[
    WALLET,
    WECHAT,
    ALIPAY,
    UNIONPAY,
  ];

  static NotifyDataResponsePaymentMethodEnum? fromJson(dynamic value) =>
      NotifyDataResponsePaymentMethodEnumTypeTransformer().decode(value);

  static List<NotifyDataResponsePaymentMethodEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <NotifyDataResponsePaymentMethodEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotifyDataResponsePaymentMethodEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NotifyDataResponsePaymentMethodEnum] to String,
/// and [decode] dynamic data back to [NotifyDataResponsePaymentMethodEnum].
class NotifyDataResponsePaymentMethodEnumTypeTransformer {
  factory NotifyDataResponsePaymentMethodEnumTypeTransformer() => _instance ??=
      const NotifyDataResponsePaymentMethodEnumTypeTransformer._();

  const NotifyDataResponsePaymentMethodEnumTypeTransformer._();

  String encode(NotifyDataResponsePaymentMethodEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NotifyDataResponsePaymentMethodEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NotifyDataResponsePaymentMethodEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'WALLET':
          return NotifyDataResponsePaymentMethodEnum.WALLET;
        case r'WECHAT':
          return NotifyDataResponsePaymentMethodEnum.WECHAT;
        case r'ALIPAY':
          return NotifyDataResponsePaymentMethodEnum.ALIPAY;
        case r'UNIONPAY':
          return NotifyDataResponsePaymentMethodEnum.UNIONPAY;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NotifyDataResponsePaymentMethodEnumTypeTransformer] instance.
  static NotifyDataResponsePaymentMethodEnumTypeTransformer? _instance;
}
