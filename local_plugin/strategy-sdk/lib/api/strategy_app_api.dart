//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StrategyAppApi {
  StrategyAppApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// 我的策略列表
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [StrategyQueryDTO] queryDTO (required):
  Future<Response> getMyStrategiesWithHttpInfo(
    StrategyQueryDTO queryDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/strategies/my';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'queryDTO', queryDTO));

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

  /// 我的策略列表
  ///
  /// Parameters:
  ///
  /// * [StrategyQueryDTO] queryDTO (required):
  Future<ApiRespIPageStrStrategy?> getMyStrategies(
    StrategyQueryDTO queryDTO,
  ) async {
    final response = await getMyStrategiesWithHttpInfo(
      queryDTO,
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
        'ApiRespIPageStrStrategy',
      ) as ApiRespIPageStrStrategy;
    }
    return null;
  }

  /// 公用策略看板
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PublicStrategyQueryDTO] queryDTO (required):
  Future<Response> getPublicStrategiesWithHttpInfo(
    PublicStrategyQueryDTO queryDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/strategies/public';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'queryDTO', queryDTO));

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

  /// 公用策略看板
  ///
  /// Parameters:
  ///
  /// * [PublicStrategyQueryDTO] queryDTO (required):
  Future<ApiRespIPagePublicStrategyResponse?> getPublicStrategies(
    PublicStrategyQueryDTO queryDTO,
  ) async {
    final response = await getPublicStrategiesWithHttpInfo(
      queryDTO,
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
        'ApiRespIPagePublicStrategyResponse',
      ) as ApiRespIPagePublicStrategyResponse;
    }
    return null;
  }

  /// 获取策略详情
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] strategyId (required):
  Future<Response> getStrategyDetailWithHttpInfo(
    int strategyId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/strategies/{strategyId}'
        .replaceAll('{strategyId}', strategyId.toString());

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

  /// 获取策略详情
  ///
  /// Parameters:
  ///
  /// * [int] strategyId (required):
  Future<ApiRespStrStrategy?> getStrategyDetail(
    int strategyId,
  ) async {
    final response = await getStrategyDetailWithHttpInfo(
      strategyId,
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
        'ApiRespStrStrategy',
      ) as ApiRespStrStrategy;
    }
    return null;
  }

  /// 热门策略排行
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TrendingStrategyQueryDTO] queryDTO (required):
  Future<Response> getTrendingStrategiesWithHttpInfo(
    TrendingStrategyQueryDTO queryDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/strategies/trending';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'queryDTO', queryDTO));

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

  /// 热门策略排行
  ///
  /// Parameters:
  ///
  /// * [TrendingStrategyQueryDTO] queryDTO (required):
  Future<ApiRespListStrStrategy?> getTrendingStrategies(
    TrendingStrategyQueryDTO queryDTO,
  ) async {
    final response = await getTrendingStrategiesWithHttpInfo(
      queryDTO,
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
        'ApiRespListStrStrategy',
      ) as ApiRespListStrStrategy;
    }
    return null;
  }

  /// 发布策略
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [StrStrategy] strStrategy (required):
  Future<Response> publishStrategyWithHttpInfo(
    StrStrategy strStrategy,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/strategies';

    // ignore: prefer_final_locals
    Object? postBody = strStrategy;

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

  /// 发布策略
  ///
  /// Parameters:
  ///
  /// * [StrStrategy] strStrategy (required):
  Future<ApiRespMapStringObject?> publishStrategy(
    StrStrategy strStrategy,
  ) async {
    final response = await publishStrategyWithHttpInfo(
      strStrategy,
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
        'ApiRespMapStringObject',
      ) as ApiRespMapStringObject;
    }
    return null;
  }

  /// 记录策略浏览
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] strategyId (required):
  ///
  /// * [StrategyViewRecordDTO] strategyViewRecordDTO (required):
  Future<Response> recordStrategyViewWithHttpInfo(
    int strategyId,
    StrategyViewRecordDTO strategyViewRecordDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/strategies/{strategyId}/view'
        .replaceAll('{strategyId}', strategyId.toString());

    // ignore: prefer_final_locals
    Object? postBody = strategyViewRecordDTO;

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

  /// 记录策略浏览
  ///
  /// Parameters:
  ///
  /// * [int] strategyId (required):
  ///
  /// * [StrategyViewRecordDTO] strategyViewRecordDTO (required):
  Future<ApiRespVoid?> recordStrategyView(
    int strategyId,
    StrategyViewRecordDTO strategyViewRecordDTO,
  ) async {
    final response = await recordStrategyViewWithHttpInfo(
      strategyId,
      strategyViewRecordDTO,
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
        'ApiRespVoid',
      ) as ApiRespVoid;
    }
    return null;
  }

  /// 更新策略
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] strategyId (required):
  ///
  /// * [StrStrategy] strStrategy (required):
  Future<Response> updateStrategyWithHttpInfo(
    int strategyId,
    StrStrategy strStrategy,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/strategies/{strategyId}'
        .replaceAll('{strategyId}', strategyId.toString());

    // ignore: prefer_final_locals
    Object? postBody = strStrategy;

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

  /// 更新策略
  ///
  /// Parameters:
  ///
  /// * [int] strategyId (required):
  ///
  /// * [StrStrategy] strStrategy (required):
  Future<ApiRespVoid?> updateStrategy(
    int strategyId,
    StrStrategy strStrategy,
  ) async {
    final response = await updateStrategyWithHttpInfo(
      strategyId,
      strStrategy,
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
        'ApiRespVoid',
      ) as ApiRespVoid;
    }
    return null;
  }
}
