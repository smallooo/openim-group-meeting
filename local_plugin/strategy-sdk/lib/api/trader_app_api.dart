//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TraderAppApi {
  TraderAppApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// 申请成为交易员
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TraderApplyDTO] traderApplyDTO (required):
  Future<Response> applyTraderWithHttpInfo(
    TraderApplyDTO traderApplyDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/trader/apply';

    // ignore: prefer_final_locals
    Object? postBody = traderApplyDTO;

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

  /// 申请成为交易员
  ///
  /// Parameters:
  ///
  /// * [TraderApplyDTO] traderApplyDTO (required):
  Future<ApiRespMapStringObject?> applyTrader(
    TraderApplyDTO traderApplyDTO,
  ) async {
    final response = await applyTraderWithHttpInfo(
      traderApplyDTO,
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

  /// 检查当前用户是否为交易员
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> checkTraderStatusWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/trader/status';

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

  /// 检查当前用户是否为交易员
  Future<ApiRespTraderStatusDTO?> checkTraderStatus() async {
    final response = await checkTraderStatusWithHttpInfo();
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
        'ApiRespTraderStatusDTO',
      ) as ApiRespTraderStatusDTO;
    }
    return null;
  }

  /// 获取交易员详情
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] traderId (required):
  Future<Response> getTraderDetailWithHttpInfo(
    int traderId,
  ) async {
    // ignore: prefer_const_declarations
    final path =
        r'/trader/{traderId}'.replaceAll('{traderId}', traderId.toString());

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

  /// 获取交易员详情
  ///
  /// Parameters:
  ///
  /// * [int] traderId (required):
  Future<ApiRespStrTrader?> getTraderDetail(
    int traderId,
  ) async {
    final response = await getTraderDetailWithHttpInfo(
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
        'ApiRespStrTrader',
      ) as ApiRespStrTrader;
    }
    return null;
  }

  /// 获取交易员列表
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TraderQueryDTO] queryDTO (required):
  Future<Response> getTraderListWithHttpInfo(
    TraderQueryDTO queryDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/trader/list';

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

  /// 获取交易员列表
  ///
  /// Parameters:
  ///
  /// * [TraderQueryDTO] queryDTO (required):
  Future<ApiRespIPageTraderListResponseDTO?> getTraderList(
    TraderQueryDTO queryDTO,
  ) async {
    final response = await getTraderListWithHttpInfo(
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
        'ApiRespIPageTraderListResponseDTO',
      ) as ApiRespIPageTraderListResponseDTO;
    }
    return null;
  }

  /// 获取交易员统计数据
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTraderStatsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/trader/stats';

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

  /// 获取交易员统计数据
  Future<ApiRespMapStringObject?> getTraderStats() async {
    final response = await getTraderStatsWithHttpInfo();
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

  /// 手动同步交易员统计数据
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> syncTraderStatsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/trader/sync-stats';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

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

  /// 手动同步交易员统计数据
  Future<ApiRespVoid?> syncTraderStats() async {
    final response = await syncTraderStatsWithHttpInfo();
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

  /// 更新交易员资料
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TraderUpdateDTO] traderUpdateDTO (required):
  Future<Response> updateTraderProfileWithHttpInfo(
    TraderUpdateDTO traderUpdateDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/trader/profile';

    // ignore: prefer_final_locals
    Object? postBody = traderUpdateDTO;

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

  /// 更新交易员资料
  ///
  /// Parameters:
  ///
  /// * [TraderUpdateDTO] traderUpdateDTO (required):
  Future<ApiRespVoid?> updateTraderProfile(
    TraderUpdateDTO traderUpdateDTO,
  ) async {
    final response = await updateTraderProfileWithHttpInfo(
      traderUpdateDTO,
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
