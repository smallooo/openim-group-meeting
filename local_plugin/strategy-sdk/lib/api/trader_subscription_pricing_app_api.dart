//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TraderSubscriptionPricingAppApi {
  TraderSubscriptionPricingAppApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// 删除价格配置
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  Future<Response> deletePricingWithHttpInfo(
    int id,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/trader/pricing/{id}'.replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// 删除价格配置
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  Future<ApiRespBoolean?> deletePricing(
    int id,
  ) async {
    final response = await deletePricingWithHttpInfo(
      id,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ApiRespBoolean',
      ) as ApiRespBoolean;
    }
    return null;
  }

  /// 根据策略类型获取所有激活的价格配置
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] strategyType (required):
  Future<Response> getActivePricingByStrategyTypeWithHttpInfo(
    String strategyType,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/trader/pricing/strategy/{strategyType}'
        .replaceAll('{strategyType}', strategyType);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// 根据策略类型获取所有激活的价格配置
  ///
  /// Parameters:
  ///
  /// * [String] strategyType (required):
  Future<ApiRespListStrTraderSubscriptionPricing?>
      getActivePricingByStrategyType(
    String strategyType,
  ) async {
    final response = await getActivePricingByStrategyTypeWithHttpInfo(
      strategyType,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ApiRespListStrTraderSubscriptionPricing',
      ) as ApiRespListStrTraderSubscriptionPricing;
    }
    return null;
  }

  /// 获取我的激活订阅价格列表
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getMyActivePricingWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/trader/pricing/my/active';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// 获取我的激活订阅价格列表
  Future<ApiRespListStrTraderSubscriptionPricing?> getMyActivePricing() async {
    final response = await getMyActivePricingWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ApiRespListStrTraderSubscriptionPricing',
      ) as ApiRespListStrTraderSubscriptionPricing;
    }
    return null;
  }

  /// 获取我的订阅价格列表
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getMyPricingWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/trader/pricing/my';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// 获取我的订阅价格列表
  Future<ApiRespListStrTraderSubscriptionPricing?> getMyPricing() async {
    final response = await getMyPricingWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ApiRespListStrTraderSubscriptionPricing',
      ) as ApiRespListStrTraderSubscriptionPricing;
    }
    return null;
  }

  /// 获取交易员的订阅价格
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] traderId (required):
  Future<Response> getTraderPricingWithHttpInfo(
    int traderId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/trader/pricing/trader/{traderId}'
        .replaceAll('{traderId}', traderId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// 获取交易员的订阅价格
  ///
  /// Parameters:
  ///
  /// * [int] traderId (required):
  Future<ApiRespListStrTraderSubscriptionPricing?> getTraderPricing(
    int traderId,
  ) async {
    final response = await getTraderPricingWithHttpInfo(
      traderId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ApiRespListStrTraderSubscriptionPricing',
      ) as ApiRespListStrTraderSubscriptionPricing;
    }
    return null;
  }

  /// 获取指定交易员和策略类型的价格
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] traderId (required):
  ///
  /// * [String] strategyType (required):
  Future<Response> getTraderStrategyPricingWithHttpInfo(
    int traderId,
    String strategyType,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/trader/pricing/trader/{traderId}/strategy/{strategyType}'
        .replaceAll('{traderId}', traderId.toString())
        .replaceAll('{strategyType}', strategyType);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// 获取指定交易员和策略类型的价格
  ///
  /// Parameters:
  ///
  /// * [int] traderId (required):
  ///
  /// * [String] strategyType (required):
  Future<ApiRespStrTraderSubscriptionPricing?> getTraderStrategyPricing(
    int traderId,
    String strategyType,
  ) async {
    final response = await getTraderStrategyPricingWithHttpInfo(
      traderId,
      strategyType,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ApiRespStrTraderSubscriptionPricing',
      ) as ApiRespStrTraderSubscriptionPricing;
    }
    return null;
  }

  /// 设置交易员订阅价格
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TraderSubscriptionPricingDTO] traderSubscriptionPricingDTO (required):
  Future<Response> setTraderPricingWithHttpInfo(
    TraderSubscriptionPricingDTO traderSubscriptionPricingDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/trader/pricing/set';

    // ignore: prefer_final_locals
    Object? postBody = traderSubscriptionPricingDTO;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// 设置交易员订阅价格
  ///
  /// Parameters:
  ///
  /// * [TraderSubscriptionPricingDTO] traderSubscriptionPricingDTO (required):
  Future<ApiRespBoolean?> setTraderPricing(
    TraderSubscriptionPricingDTO traderSubscriptionPricingDTO,
  ) async {
    final response = await setTraderPricingWithHttpInfo(
      traderSubscriptionPricingDTO,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ApiRespBoolean',
      ) as ApiRespBoolean;
    }
    return null;
  }

  /// 启用/禁用价格配置
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///
  /// * [bool] isActive (required):
  Future<Response> togglePricingActiveWithHttpInfo(
    int id,
    bool isActive,
  ) async {
    // ignore: prefer_const_declarations
    final path =
        r'/trader/pricing/toggle/{id}'.replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'isActive', isActive));

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// 启用/禁用价格配置
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///
  /// * [bool] isActive (required):
  Future<ApiRespBoolean?> togglePricingActive(
    int id,
    bool isActive,
  ) async {
    final response = await togglePricingActiveWithHttpInfo(
      id,
      isActive,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ApiRespBoolean',
      ) as ApiRespBoolean;
    }
    return null;
  }

  /// 更新交易员订阅价格
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///
  /// * [TraderSubscriptionPricingDTO] traderSubscriptionPricingDTO (required):
  Future<Response> updateTraderPricingWithHttpInfo(
    int id,
    TraderSubscriptionPricingDTO traderSubscriptionPricingDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path =
        r'/trader/pricing/update/{id}'.replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = traderSubscriptionPricingDTO;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// 更新交易员订阅价格
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///
  /// * [TraderSubscriptionPricingDTO] traderSubscriptionPricingDTO (required):
  Future<ApiRespBoolean?> updateTraderPricing(
    int id,
    TraderSubscriptionPricingDTO traderSubscriptionPricingDTO,
  ) async {
    final response = await updateTraderPricingWithHttpInfo(
      id,
      traderSubscriptionPricingDTO,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ApiRespBoolean',
      ) as ApiRespBoolean;
    }
    return null;
  }
}
