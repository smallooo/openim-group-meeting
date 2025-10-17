//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StrategyRatingAppApi {
  StrategyRatingAppApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// 获取策略评价列表
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] strategyId (required):
  ///
  /// * [StrategyRatingQueryDTO] queryDTO (required):
  Future<Response> getStrategyRatingsWithHttpInfo(
    int strategyId,
    StrategyRatingQueryDTO queryDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/app/strategies/{strategyId}/ratings'
        .replaceAll('{strategyId}', strategyId.toString());

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

  /// 获取策略评价列表
  ///
  /// Parameters:
  ///
  /// * [int] strategyId (required):
  ///
  /// * [StrategyRatingQueryDTO] queryDTO (required):
  Future<ApiRespMapStringObject?> getStrategyRatings(
    int strategyId,
    StrategyRatingQueryDTO queryDTO,
  ) async {
    final response = await getStrategyRatingsWithHttpInfo(
      strategyId,
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
        'ApiRespMapStringObject',
      ) as ApiRespMapStringObject;
    }
    return null;
  }

  /// 评价策略
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] strategyId (required):
  ///
  /// * [StrategyRatingDTO] strategyRatingDTO (required):
  Future<Response> rateStrategyWithHttpInfo(
    int strategyId,
    StrategyRatingDTO strategyRatingDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/app/strategies/{strategyId}/rating'
        .replaceAll('{strategyId}', strategyId.toString());

    // ignore: prefer_final_locals
    Object? postBody = strategyRatingDTO;

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

  /// 评价策略
  ///
  /// Parameters:
  ///
  /// * [int] strategyId (required):
  ///
  /// * [StrategyRatingDTO] strategyRatingDTO (required):
  Future<ApiRespVoid?> rateStrategy(
    int strategyId,
    StrategyRatingDTO strategyRatingDTO,
  ) async {
    final response = await rateStrategyWithHttpInfo(
      strategyId,
      strategyRatingDTO,
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
