//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NotifyLogResponse {
  /// Returns a new [NotifyLogResponse] instance.
  NotifyLogResponse({
    this.logId,
    this.notifyId,
    this.requestData,
    this.responseData,
    this.responseCode,
    this.responseMessage,
    this.duration,
    this.createTime,
  });

  /// 日志ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? logId;

  /// 通知ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? notifyId;

  /// 请求数据
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? requestData;

  /// 响应数据
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? responseData;

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

  /// 请求耗时(毫秒)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? duration;

  /// 创建时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createTime;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NotifyLogResponse &&
          other.logId == logId &&
          other.notifyId == notifyId &&
          other.requestData == requestData &&
          other.responseData == responseData &&
          other.responseCode == responseCode &&
          other.responseMessage == responseMessage &&
          other.duration == duration &&
          other.createTime == createTime;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (logId == null ? 0 : logId!.hashCode) +
      (notifyId == null ? 0 : notifyId!.hashCode) +
      (requestData == null ? 0 : requestData!.hashCode) +
      (responseData == null ? 0 : responseData!.hashCode) +
      (responseCode == null ? 0 : responseCode!.hashCode) +
      (responseMessage == null ? 0 : responseMessage!.hashCode) +
      (duration == null ? 0 : duration!.hashCode) +
      (createTime == null ? 0 : createTime!.hashCode);

  @override
  String toString() =>
      'NotifyLogResponse[logId=$logId, notifyId=$notifyId, requestData=$requestData, responseData=$responseData, responseCode=$responseCode, responseMessage=$responseMessage, duration=$duration, createTime=$createTime]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.logId != null) {
      json[r'logId'] = this.logId;
    } else {
      json[r'logId'] = null;
    }
    if (this.notifyId != null) {
      json[r'notifyId'] = this.notifyId;
    } else {
      json[r'notifyId'] = null;
    }
    if (this.requestData != null) {
      json[r'requestData'] = this.requestData;
    } else {
      json[r'requestData'] = null;
    }
    if (this.responseData != null) {
      json[r'responseData'] = this.responseData;
    } else {
      json[r'responseData'] = null;
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
    if (this.duration != null) {
      json[r'duration'] = this.duration;
    } else {
      json[r'duration'] = null;
    }
    if (this.createTime != null) {
      json[r'createTime'] = this.createTime;
    } else {
      json[r'createTime'] = null;
    }
    return json;
  }

  /// Returns a new [NotifyLogResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NotifyLogResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "NotifyLogResponse[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "NotifyLogResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NotifyLogResponse(
        logId: mapValueOfType<int>(json, r'logId'),
        notifyId: mapValueOfType<int>(json, r'notifyId'),
        requestData: mapValueOfType<String>(json, r'requestData'),
        responseData: mapValueOfType<String>(json, r'responseData'),
        responseCode: mapValueOfType<String>(json, r'responseCode'),
        responseMessage: mapValueOfType<String>(json, r'responseMessage'),
        duration: mapValueOfType<int>(json, r'duration'),
        createTime: mapValueOfType<int>(json, r'createTime'),
      );
    }
    return null;
  }

  static List<NotifyLogResponse> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <NotifyLogResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotifyLogResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NotifyLogResponse> mapFromJson(dynamic json) {
    final map = <String, NotifyLogResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NotifyLogResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NotifyLogResponse-objects as value to a dart map
  static Map<String, List<NotifyLogResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<NotifyLogResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NotifyLogResponse.listFromJson(
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
