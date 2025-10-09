//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderReviewRequest {
  /// Returns a new [OrderReviewRequest] instance.
  OrderReviewRequest({
    required this.orderId,
    required this.rating,
    this.content,
    this.images,
    this.isAnonymous,
  });

  /// 订单ID
  int orderId;

  /// 评分(1-5)
  ///
  /// Minimum value: 1
  /// Maximum value: 5
  int rating;

  /// 评价内容
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? content;

  /// 评价图片
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? images;

  /// 是否匿名评价
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isAnonymous;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderReviewRequest &&
          other.orderId == orderId &&
          other.rating == rating &&
          other.content == content &&
          other.images == images &&
          other.isAnonymous == isAnonymous;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (orderId.hashCode) +
      (rating.hashCode) +
      (content == null ? 0 : content!.hashCode) +
      (images == null ? 0 : images!.hashCode) +
      (isAnonymous == null ? 0 : isAnonymous!.hashCode);

  @override
  String toString() =>
      'OrderReviewRequest[orderId=$orderId, rating=$rating, content=$content, images=$images, isAnonymous=$isAnonymous]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'orderId'] = this.orderId;
    json[r'rating'] = this.rating;
    if (this.content != null) {
      json[r'content'] = this.content;
    } else {
      json[r'content'] = null;
    }
    if (this.images != null) {
      json[r'images'] = this.images;
    } else {
      json[r'images'] = null;
    }
    if (this.isAnonymous != null) {
      json[r'isAnonymous'] = this.isAnonymous;
    } else {
      json[r'isAnonymous'] = null;
    }
    return json;
  }

  /// Returns a new [OrderReviewRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderReviewRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "OrderReviewRequest[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "OrderReviewRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrderReviewRequest(
        orderId: mapValueOfType<int>(json, r'orderId')!,
        rating: mapValueOfType<int>(json, r'rating')!,
        content: mapValueOfType<String>(json, r'content'),
        images: mapValueOfType<String>(json, r'images'),
        isAnonymous: mapValueOfType<bool>(json, r'isAnonymous'),
      );
    }
    return null;
  }

  static List<OrderReviewRequest> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <OrderReviewRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderReviewRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderReviewRequest> mapFromJson(dynamic json) {
    final map = <String, OrderReviewRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderReviewRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderReviewRequest-objects as value to a dart map
  static Map<String, List<OrderReviewRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<OrderReviewRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrderReviewRequest.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'orderId',
    'rating',
  };
}
