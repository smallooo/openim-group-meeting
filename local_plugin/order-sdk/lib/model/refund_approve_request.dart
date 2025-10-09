//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RefundApproveRequest {
  /// Returns a new [RefundApproveRequest] instance.
  RefundApproveRequest({
    required this.refundNo,
    required this.result,
    this.remark,
  });

  /// 退款申请编号
  String refundNo;

  /// 审核结果：approved-通过，rejected-拒绝
  RefundApproveRequestResultEnum result;

  /// 审核备注
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? remark;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RefundApproveRequest &&
          other.refundNo == refundNo &&
          other.result == result &&
          other.remark == remark;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (refundNo.hashCode) +
      (result.hashCode) +
      (remark == null ? 0 : remark!.hashCode);

  @override
  String toString() =>
      'RefundApproveRequest[refundNo=$refundNo, result=$result, remark=$remark]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'refundNo'] = this.refundNo;
    json[r'result'] = this.result;
    if (this.remark != null) {
      json[r'remark'] = this.remark;
    } else {
      json[r'remark'] = null;
    }
    return json;
  }

  /// Returns a new [RefundApproveRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RefundApproveRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "RefundApproveRequest[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "RefundApproveRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RefundApproveRequest(
        refundNo: mapValueOfType<String>(json, r'refundNo')!,
        result: RefundApproveRequestResultEnum.fromJson(json[r'result'])!,
        remark: mapValueOfType<String>(json, r'remark'),
      );
    }
    return null;
  }

  static List<RefundApproveRequest> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RefundApproveRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RefundApproveRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RefundApproveRequest> mapFromJson(dynamic json) {
    final map = <String, RefundApproveRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RefundApproveRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RefundApproveRequest-objects as value to a dart map
  static Map<String, List<RefundApproveRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<RefundApproveRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RefundApproveRequest.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'refundNo',
    'result',
  };
}

/// 审核结果：approved-通过，rejected-拒绝
class RefundApproveRequestResultEnum {
  /// Instantiate a new enum with the provided [value].
  const RefundApproveRequestResultEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const approved = RefundApproveRequestResultEnum._(r'approved');
  static const rejected = RefundApproveRequestResultEnum._(r'rejected');

  /// List of all possible values in this [enum][RefundApproveRequestResultEnum].
  static const values = <RefundApproveRequestResultEnum>[
    approved,
    rejected,
  ];

  static RefundApproveRequestResultEnum? fromJson(dynamic value) =>
      RefundApproveRequestResultEnumTypeTransformer().decode(value);

  static List<RefundApproveRequestResultEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RefundApproveRequestResultEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RefundApproveRequestResultEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RefundApproveRequestResultEnum] to String,
/// and [decode] dynamic data back to [RefundApproveRequestResultEnum].
class RefundApproveRequestResultEnumTypeTransformer {
  factory RefundApproveRequestResultEnumTypeTransformer() =>
      _instance ??= const RefundApproveRequestResultEnumTypeTransformer._();

  const RefundApproveRequestResultEnumTypeTransformer._();

  String encode(RefundApproveRequestResultEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RefundApproveRequestResultEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RefundApproveRequestResultEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'approved':
          return RefundApproveRequestResultEnum.approved;
        case r'rejected':
          return RefundApproveRequestResultEnum.rejected;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RefundApproveRequestResultEnumTypeTransformer] instance.
  static RefundApproveRequestResultEnumTypeTransformer? _instance;
}
