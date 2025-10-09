//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TriggerNotifyDTO {
  /// Returns a new [TriggerNotifyDTO] instance.
  TriggerNotifyDTO({
    required this.paymentId,
    required this.notifyType,
  });

  /// 支付系统订单号
  String paymentId;

  /// 通知类型
  TriggerNotifyDTONotifyTypeEnum notifyType;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TriggerNotifyDTO &&
          other.paymentId == paymentId &&
          other.notifyType == notifyType;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (paymentId.hashCode) + (notifyType.hashCode);

  @override
  String toString() =>
      'TriggerNotifyDTO[paymentId=$paymentId, notifyType=$notifyType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'paymentId'] = this.paymentId;
    json[r'notifyType'] = this.notifyType;
    return json;
  }

  /// Returns a new [TriggerNotifyDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TriggerNotifyDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "TriggerNotifyDTO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "TriggerNotifyDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TriggerNotifyDTO(
        paymentId: mapValueOfType<String>(json, r'paymentId')!,
        notifyType:
            TriggerNotifyDTONotifyTypeEnum.fromJson(json[r'notifyType'])!,
      );
    }
    return null;
  }

  static List<TriggerNotifyDTO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TriggerNotifyDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TriggerNotifyDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TriggerNotifyDTO> mapFromJson(dynamic json) {
    final map = <String, TriggerNotifyDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TriggerNotifyDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TriggerNotifyDTO-objects as value to a dart map
  static Map<String, List<TriggerNotifyDTO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<TriggerNotifyDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TriggerNotifyDTO.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'paymentId',
    'notifyType',
  };
}

/// 通知类型
class TriggerNotifyDTONotifyTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const TriggerNotifyDTONotifyTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PAYMENT = TriggerNotifyDTONotifyTypeEnum._(r'PAYMENT');
  static const REFUND = TriggerNotifyDTONotifyTypeEnum._(r'REFUND');

  /// List of all possible values in this [enum][TriggerNotifyDTONotifyTypeEnum].
  static const values = <TriggerNotifyDTONotifyTypeEnum>[
    PAYMENT,
    REFUND,
  ];

  static TriggerNotifyDTONotifyTypeEnum? fromJson(dynamic value) =>
      TriggerNotifyDTONotifyTypeEnumTypeTransformer().decode(value);

  static List<TriggerNotifyDTONotifyTypeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TriggerNotifyDTONotifyTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TriggerNotifyDTONotifyTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TriggerNotifyDTONotifyTypeEnum] to String,
/// and [decode] dynamic data back to [TriggerNotifyDTONotifyTypeEnum].
class TriggerNotifyDTONotifyTypeEnumTypeTransformer {
  factory TriggerNotifyDTONotifyTypeEnumTypeTransformer() =>
      _instance ??= const TriggerNotifyDTONotifyTypeEnumTypeTransformer._();

  const TriggerNotifyDTONotifyTypeEnumTypeTransformer._();

  String encode(TriggerNotifyDTONotifyTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TriggerNotifyDTONotifyTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TriggerNotifyDTONotifyTypeEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PAYMENT':
          return TriggerNotifyDTONotifyTypeEnum.PAYMENT;
        case r'REFUND':
          return TriggerNotifyDTONotifyTypeEnum.REFUND;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TriggerNotifyDTONotifyTypeEnumTypeTransformer] instance.
  static TriggerNotifyDTONotifyTypeEnumTypeTransformer? _instance;
}
