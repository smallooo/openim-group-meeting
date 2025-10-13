//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TraderStatusDTO {
  /// Returns a new [TraderStatusDTO] instance.
  TraderStatusDTO({
    this.isTrader,
    this.traderId,
    this.traderName,
    this.traderAvatar,
  });

  /// 是否为交易员
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isTrader;

  /// 交易员ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? traderId;

  /// 交易员名称
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? traderName;

  /// 交易员头像
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? traderAvatar;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TraderStatusDTO &&
          other.isTrader == isTrader &&
          other.traderId == traderId &&
          other.traderName == traderName &&
          other.traderAvatar == traderAvatar;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (isTrader == null ? 0 : isTrader!.hashCode) +
      (traderId == null ? 0 : traderId!.hashCode) +
      (traderName == null ? 0 : traderName!.hashCode) +
      (traderAvatar == null ? 0 : traderAvatar!.hashCode);

  @override
  String toString() =>
      'TraderStatusDTO[isTrader=$isTrader, traderId=$traderId, traderName=$traderName, traderAvatar=$traderAvatar]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.isTrader != null) {
      json[r'isTrader'] = this.isTrader;
    } else {
      json[r'isTrader'] = null;
    }
    if (this.traderId != null) {
      json[r'traderId'] = this.traderId;
    } else {
      json[r'traderId'] = null;
    }
    if (this.traderName != null) {
      json[r'traderName'] = this.traderName;
    } else {
      json[r'traderName'] = null;
    }
    if (this.traderAvatar != null) {
      json[r'traderAvatar'] = this.traderAvatar;
    } else {
      json[r'traderAvatar'] = null;
    }
    return json;
  }

  /// Returns a new [TraderStatusDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TraderStatusDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "TraderStatusDTO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "TraderStatusDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TraderStatusDTO(
        isTrader: mapValueOfType<bool>(json, r'isTrader'),
        traderId: mapValueOfType<int>(json, r'traderId'),
        traderName: mapValueOfType<String>(json, r'traderName'),
        traderAvatar: mapValueOfType<String>(json, r'traderAvatar'),
      );
    }
    return null;
  }

  static List<TraderStatusDTO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TraderStatusDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TraderStatusDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TraderStatusDTO> mapFromJson(dynamic json) {
    final map = <String, TraderStatusDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TraderStatusDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TraderStatusDTO-objects as value to a dart map
  static Map<String, List<TraderStatusDTO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<TraderStatusDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TraderStatusDTO.listFromJson(
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
