//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ReceiveRedPacketDTO {
  /// Returns a new [ReceiveRedPacketDTO] instance.
  ReceiveRedPacketDTO({
    required this.packetNo,
  });

  /// 红包编号
  String packetNo;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ReceiveRedPacketDTO && other.packetNo == packetNo;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (packetNo.hashCode);

  @override
  String toString() => 'ReceiveRedPacketDTO[packetNo=$packetNo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'packetNo'] = this.packetNo;
    return json;
  }

  /// Returns a new [ReceiveRedPacketDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReceiveRedPacketDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ReceiveRedPacketDTO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ReceiveRedPacketDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ReceiveRedPacketDTO(
        packetNo: mapValueOfType<String>(json, r'packetNo')!,
      );
    }
    return null;
  }

  static List<ReceiveRedPacketDTO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ReceiveRedPacketDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReceiveRedPacketDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ReceiveRedPacketDTO> mapFromJson(dynamic json) {
    final map = <String, ReceiveRedPacketDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReceiveRedPacketDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ReceiveRedPacketDTO-objects as value to a dart map
  static Map<String, List<ReceiveRedPacketDTO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ReceiveRedPacketDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ReceiveRedPacketDTO.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'packetNo',
  };
}
