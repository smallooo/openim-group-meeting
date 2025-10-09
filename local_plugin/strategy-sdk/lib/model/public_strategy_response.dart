//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PublicStrategyResponse {
  /// Returns a new [PublicStrategyResponse] instance.
  PublicStrategyResponse({
    this.id,
    this.traderId,
    this.title,
    this.summary,
    this.coinSymbol,
    this.strategyType,
    this.priceType,
    this.targetPrice,
    this.takeProfitPrice,
    this.stopLossPrice,
    this.validFrom,
    this.validTo,
    this.viewCount,
    this.followCount,
    this.avgRating,
    this.ratingCount,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.traderName,
    this.traderAvatar,
  });

  /// 主键ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// 交易员ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? traderId;

  /// 策略标题
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// 策略简介
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? summary;

  /// 币种符号
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? coinSymbol;

  /// 策略类型: 1-短线 2-中线 3-长线
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? strategyType;

  /// 价格类型: 1-限价 2-市价
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? priceType;

  /// 目标价格
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? targetPrice;

  /// 止盈价
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? takeProfitPrice;

  /// 止损价
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? stopLossPrice;

  /// 有效期开始时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? validFrom;

  /// 有效期结束时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? validTo;

  /// 浏览次数
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? viewCount;

  /// 跟单人数
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? followCount;

  /// 平均评分
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? avgRating;

  /// 评价数量
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ratingCount;

  /// 状态: 0-草稿 1-发布 2-过期 3-下架
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? status;

  /// 创建时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  /// 更新时间
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  /// 交易员姓名
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
      other is PublicStrategyResponse &&
          other.id == id &&
          other.traderId == traderId &&
          other.title == title &&
          other.summary == summary &&
          other.coinSymbol == coinSymbol &&
          other.strategyType == strategyType &&
          other.priceType == priceType &&
          other.targetPrice == targetPrice &&
          other.takeProfitPrice == takeProfitPrice &&
          other.stopLossPrice == stopLossPrice &&
          other.validFrom == validFrom &&
          other.validTo == validTo &&
          other.viewCount == viewCount &&
          other.followCount == followCount &&
          other.avgRating == avgRating &&
          other.ratingCount == ratingCount &&
          other.status == status &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.traderName == traderName &&
          other.traderAvatar == traderAvatar;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (traderId == null ? 0 : traderId!.hashCode) +
      (title == null ? 0 : title!.hashCode) +
      (summary == null ? 0 : summary!.hashCode) +
      (coinSymbol == null ? 0 : coinSymbol!.hashCode) +
      (strategyType == null ? 0 : strategyType!.hashCode) +
      (priceType == null ? 0 : priceType!.hashCode) +
      (targetPrice == null ? 0 : targetPrice!.hashCode) +
      (takeProfitPrice == null ? 0 : takeProfitPrice!.hashCode) +
      (stopLossPrice == null ? 0 : stopLossPrice!.hashCode) +
      (validFrom == null ? 0 : validFrom!.hashCode) +
      (validTo == null ? 0 : validTo!.hashCode) +
      (viewCount == null ? 0 : viewCount!.hashCode) +
      (followCount == null ? 0 : followCount!.hashCode) +
      (avgRating == null ? 0 : avgRating!.hashCode) +
      (ratingCount == null ? 0 : ratingCount!.hashCode) +
      (status == null ? 0 : status!.hashCode) +
      (createdAt == null ? 0 : createdAt!.hashCode) +
      (updatedAt == null ? 0 : updatedAt!.hashCode) +
      (traderName == null ? 0 : traderName!.hashCode) +
      (traderAvatar == null ? 0 : traderAvatar!.hashCode);

  @override
  String toString() =>
      'PublicStrategyResponse[id=$id, traderId=$traderId, title=$title, summary=$summary, coinSymbol=$coinSymbol, strategyType=$strategyType, priceType=$priceType, targetPrice=$targetPrice, takeProfitPrice=$takeProfitPrice, stopLossPrice=$stopLossPrice, validFrom=$validFrom, validTo=$validTo, viewCount=$viewCount, followCount=$followCount, avgRating=$avgRating, ratingCount=$ratingCount, status=$status, createdAt=$createdAt, updatedAt=$updatedAt, traderName=$traderName, traderAvatar=$traderAvatar]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.traderId != null) {
      json[r'traderId'] = this.traderId;
    } else {
      json[r'traderId'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.summary != null) {
      json[r'summary'] = this.summary;
    } else {
      json[r'summary'] = null;
    }
    if (this.coinSymbol != null) {
      json[r'coinSymbol'] = this.coinSymbol;
    } else {
      json[r'coinSymbol'] = null;
    }
    if (this.strategyType != null) {
      json[r'strategyType'] = this.strategyType;
    } else {
      json[r'strategyType'] = null;
    }
    if (this.priceType != null) {
      json[r'priceType'] = this.priceType;
    } else {
      json[r'priceType'] = null;
    }
    if (this.targetPrice != null) {
      json[r'targetPrice'] = this.targetPrice;
    } else {
      json[r'targetPrice'] = null;
    }
    if (this.takeProfitPrice != null) {
      json[r'takeProfitPrice'] = this.takeProfitPrice;
    } else {
      json[r'takeProfitPrice'] = null;
    }
    if (this.stopLossPrice != null) {
      json[r'stopLossPrice'] = this.stopLossPrice;
    } else {
      json[r'stopLossPrice'] = null;
    }
    if (this.validFrom != null) {
      json[r'validFrom'] = this.validFrom!.toUtc().toIso8601String();
    } else {
      json[r'validFrom'] = null;
    }
    if (this.validTo != null) {
      json[r'validTo'] = this.validTo!.toUtc().toIso8601String();
    } else {
      json[r'validTo'] = null;
    }
    if (this.viewCount != null) {
      json[r'viewCount'] = this.viewCount;
    } else {
      json[r'viewCount'] = null;
    }
    if (this.followCount != null) {
      json[r'followCount'] = this.followCount;
    } else {
      json[r'followCount'] = null;
    }
    if (this.avgRating != null) {
      json[r'avgRating'] = this.avgRating;
    } else {
      json[r'avgRating'] = null;
    }
    if (this.ratingCount != null) {
      json[r'ratingCount'] = this.ratingCount;
    } else {
      json[r'ratingCount'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'createdAt'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updatedAt'] = null;
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

  /// Returns a new [PublicStrategyResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PublicStrategyResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "PublicStrategyResponse[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "PublicStrategyResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PublicStrategyResponse(
        id: mapValueOfType<int>(json, r'id'),
        traderId: mapValueOfType<int>(json, r'traderId'),
        title: mapValueOfType<String>(json, r'title'),
        summary: mapValueOfType<String>(json, r'summary'),
        coinSymbol: mapValueOfType<String>(json, r'coinSymbol'),
        strategyType: mapValueOfType<int>(json, r'strategyType'),
        priceType: mapValueOfType<int>(json, r'priceType'),
        targetPrice: json[r'targetPrice'] == null
            ? null
            : num.parse(json[r'targetPrice'].toString()),
        takeProfitPrice: json[r'takeProfitPrice'] == null
            ? null
            : num.parse(json[r'takeProfitPrice'].toString()),
        stopLossPrice: json[r'stopLossPrice'] == null
            ? null
            : num.parse(json[r'stopLossPrice'].toString()),
        validFrom: mapDateTime(json, r'validFrom', ''),
        validTo: mapDateTime(json, r'validTo', ''),
        viewCount: mapValueOfType<int>(json, r'viewCount'),
        followCount: mapValueOfType<int>(json, r'followCount'),
        avgRating: json[r'avgRating'] == null
            ? null
            : num.parse(json[r'avgRating'].toString()),
        ratingCount: mapValueOfType<int>(json, r'ratingCount'),
        status: mapValueOfType<int>(json, r'status'),
        createdAt: mapDateTime(json, r'createdAt', ''),
        updatedAt: mapDateTime(json, r'updatedAt', ''),
        traderName: mapValueOfType<String>(json, r'traderName'),
        traderAvatar: mapValueOfType<String>(json, r'traderAvatar'),
      );
    }
    return null;
  }

  static List<PublicStrategyResponse> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PublicStrategyResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PublicStrategyResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PublicStrategyResponse> mapFromJson(dynamic json) {
    final map = <String, PublicStrategyResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PublicStrategyResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PublicStrategyResponse-objects as value to a dart map
  static Map<String, List<PublicStrategyResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PublicStrategyResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PublicStrategyResponse.listFromJson(
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
