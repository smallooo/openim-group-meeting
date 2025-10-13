//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TraderStrategyResponseDTO {
  /// Returns a new [TraderStrategyResponseDTO] instance.
  TraderStrategyResponseDTO({
    this.id,
    this.traderId,
    this.title,
    this.summary,
    this.content,
    this.coinSymbol,
    this.marketType,
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
    this.isSubscribed,
  });

  /// 策略ID
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

  /// 具体交易方案(需订阅才能查看)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? content;

  /// 币种符号
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? coinSymbol;

  /// 市场类型:SPOT-现货,FUTURES-合约
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? marketType;

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

  /// 目标价格(需订阅才能查看)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? targetPrice;

  /// 止盈价(需订阅才能查看)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? takeProfitPrice;

  /// 止损价(需订阅才能查看)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stopLossPrice;

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

  /// 是否已订阅对应策略类型
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isSubscribed;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TraderStrategyResponseDTO &&
          other.id == id &&
          other.traderId == traderId &&
          other.title == title &&
          other.summary == summary &&
          other.content == content &&
          other.coinSymbol == coinSymbol &&
          other.marketType == marketType &&
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
          other.isSubscribed == isSubscribed;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (traderId == null ? 0 : traderId!.hashCode) +
      (title == null ? 0 : title!.hashCode) +
      (summary == null ? 0 : summary!.hashCode) +
      (content == null ? 0 : content!.hashCode) +
      (coinSymbol == null ? 0 : coinSymbol!.hashCode) +
      (marketType == null ? 0 : marketType!.hashCode) +
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
      (isSubscribed == null ? 0 : isSubscribed!.hashCode);

  @override
  String toString() =>
      'TraderStrategyResponseDTO[id=$id, traderId=$traderId, title=$title, summary=$summary, content=$content, coinSymbol=$coinSymbol, marketType=$marketType, strategyType=$strategyType, priceType=$priceType, targetPrice=$targetPrice, takeProfitPrice=$takeProfitPrice, stopLossPrice=$stopLossPrice, validFrom=$validFrom, validTo=$validTo, viewCount=$viewCount, followCount=$followCount, avgRating=$avgRating, ratingCount=$ratingCount, status=$status, createdAt=$createdAt, isSubscribed=$isSubscribed]';

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
    if (this.content != null) {
      json[r'content'] = this.content;
    } else {
      json[r'content'] = null;
    }
    if (this.coinSymbol != null) {
      json[r'coinSymbol'] = this.coinSymbol;
    } else {
      json[r'coinSymbol'] = null;
    }
    if (this.marketType != null) {
      json[r'marketType'] = this.marketType;
    } else {
      json[r'marketType'] = null;
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
    if (this.isSubscribed != null) {
      json[r'isSubscribed'] = this.isSubscribed;
    } else {
      json[r'isSubscribed'] = null;
    }
    return json;
  }

  /// Returns a new [TraderStrategyResponseDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TraderStrategyResponseDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "TraderStrategyResponseDTO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "TraderStrategyResponseDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TraderStrategyResponseDTO(
        id: mapValueOfType<int>(json, r'id'),
        traderId: mapValueOfType<int>(json, r'traderId'),
        title: mapValueOfType<String>(json, r'title'),
        summary: mapValueOfType<String>(json, r'summary'),
        content: mapValueOfType<String>(json, r'content'),
        coinSymbol: mapValueOfType<String>(json, r'coinSymbol'),
        marketType: mapValueOfType<String>(json, r'marketType'),
        strategyType: mapValueOfType<int>(json, r'strategyType'),
        priceType: mapValueOfType<int>(json, r'priceType'),
        targetPrice: mapValueOfType<String>(json, r'targetPrice'),
        takeProfitPrice: mapValueOfType<String>(json, r'takeProfitPrice'),
        stopLossPrice: mapValueOfType<String>(json, r'stopLossPrice'),
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
        isSubscribed: mapValueOfType<bool>(json, r'isSubscribed'),
      );
    }
    return null;
  }

  static List<TraderStrategyResponseDTO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TraderStrategyResponseDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TraderStrategyResponseDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TraderStrategyResponseDTO> mapFromJson(dynamic json) {
    final map = <String, TraderStrategyResponseDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TraderStrategyResponseDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TraderStrategyResponseDTO-objects as value to a dart map
  static Map<String, List<TraderStrategyResponseDTO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<TraderStrategyResponseDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TraderStrategyResponseDTO.listFromJson(
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
