//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TraderOpinionAppApi {
  TraderOpinionAppApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// 统计交易员观点数量
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] traderId (required):
  ///
  /// * [int] publishStatus:
  Future<Response> countOpinionsByTraderIdWithHttpInfo(
    int traderId, {
    int? publishStatus,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/app/trader-opinion/count/trader/{traderId}'
        .replaceAll('{traderId}', traderId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (publishStatus != null) {
      queryParams.addAll(_queryParams('', 'publishStatus', publishStatus));
    }

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

  /// 统计交易员观点数量
  ///
  /// Parameters:
  ///
  /// * [int] traderId (required):
  ///
  /// * [int] publishStatus:
  Future<ApiRespMapStringObject?> countOpinionsByTraderId(
    int traderId, {
    int? publishStatus,
  }) async {
    final response = await countOpinionsByTraderIdWithHttpInfo(
      traderId,
      publishStatus: publishStatus,
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

  /// 创建观点
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TraderOpinionCreateDTO] traderOpinionCreateDTO (required):
  Future<Response> createOpinionWithHttpInfo(
    TraderOpinionCreateDTO traderOpinionCreateDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/app/trader-opinion';

    // ignore: prefer_final_locals
    Object? postBody = traderOpinionCreateDTO;

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

  /// 创建观点
  ///
  /// Parameters:
  ///
  /// * [TraderOpinionCreateDTO] traderOpinionCreateDTO (required):
  Future<ApiRespMapStringObject?> createOpinion(
    TraderOpinionCreateDTO traderOpinionCreateDTO,
  ) async {
    final response = await createOpinionWithHttpInfo(
      traderOpinionCreateDTO,
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

  /// 删除观点
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] opinionId (required):
  Future<Response> deleteOpinionWithHttpInfo(
    int opinionId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/app/trader-opinion/{opinionId}'
        .replaceAll('{opinionId}', opinionId.toString());

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

  /// 删除观点
  ///
  /// Parameters:
  ///
  /// * [int] opinionId (required):
  Future<ApiRespMapStringObject?> deleteOpinion(
    int opinionId,
  ) async {
    final response = await deleteOpinionWithHttpInfo(
      opinionId,
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

  /// 我的观点列表
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] current:
  ///
  /// * [int] size:
  ///
  /// * [int] publishStatus:
  Future<Response> getMyOpinionsWithHttpInfo({
    int? current,
    int? size,
    int? publishStatus,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/app/trader-opinion/my-opinions';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (current != null) {
      queryParams.addAll(_queryParams('', 'current', current));
    }
    if (size != null) {
      queryParams.addAll(_queryParams('', 'size', size));
    }
    if (publishStatus != null) {
      queryParams.addAll(_queryParams('', 'publishStatus', publishStatus));
    }

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

  /// 我的观点列表
  ///
  /// Parameters:
  ///
  /// * [int] current:
  ///
  /// * [int] size:
  ///
  /// * [int] publishStatus:
  Future<ApiRespIPageTraderOpinionResponseDTO?> getMyOpinions({
    int? current,
    int? size,
    int? publishStatus,
  }) async {
    final response = await getMyOpinionsWithHttpInfo(
      current: current,
      size: size,
      publishStatus: publishStatus,
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
        'ApiRespIPageTraderOpinionResponseDTO',
      ) as ApiRespIPageTraderOpinionResponseDTO;
    }
    return null;
  }

  /// 根据交易员ID查询观点列表
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] traderId (required):
  ///
  /// * [int] current:
  ///
  /// * [int] size:
  Future<Response> getOpinionsByTraderIdWithHttpInfo(
    int traderId, {
    int? current,
    int? size,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/app/trader-opinion/trader/{traderId}'
        .replaceAll('{traderId}', traderId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (current != null) {
      queryParams.addAll(_queryParams('', 'current', current));
    }
    if (size != null) {
      queryParams.addAll(_queryParams('', 'size', size));
    }

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

  /// 根据交易员ID查询观点列表
  ///
  /// Parameters:
  ///
  /// * [int] traderId (required):
  ///
  /// * [int] current:
  ///
  /// * [int] size:
  Future<ApiRespIPageTraderOpinionResponseDTO?> getOpinionsByTraderId(
    int traderId, {
    int? current,
    int? size,
  }) async {
    final response = await getOpinionsByTraderIdWithHttpInfo(
      traderId,
      current: current,
      size: size,
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
        'ApiRespIPageTraderOpinionResponseDTO',
      ) as ApiRespIPageTraderOpinionResponseDTO;
    }
    return null;
  }

  /// 点赞观点
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] opinionId (required):
  Future<Response> likeOpinionWithHttpInfo(
    int opinionId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/app/trader-opinion/{opinionId}/like'
        .replaceAll('{opinionId}', opinionId.toString());

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

  /// 点赞观点
  ///
  /// Parameters:
  ///
  /// * [int] opinionId (required):
  Future<ApiRespMapStringObject?> likeOpinion(
    int opinionId,
  ) async {
    final response = await likeOpinionWithHttpInfo(
      opinionId,
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

  /// 取消点赞观点
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] opinionId (required):
  Future<Response> unlikeOpinionWithHttpInfo(
    int opinionId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/app/trader-opinion/{opinionId}/like'
        .replaceAll('{opinionId}', opinionId.toString());

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

  /// 取消点赞观点
  ///
  /// Parameters:
  ///
  /// * [int] opinionId (required):
  Future<ApiRespMapStringObject?> unlikeOpinion(
    int opinionId,
  ) async {
    final response = await unlikeOpinionWithHttpInfo(
      opinionId,
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

  /// 更新观点
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TraderOpinionUpdateDTO] traderOpinionUpdateDTO (required):
  Future<Response> updateOpinionWithHttpInfo(
    TraderOpinionUpdateDTO traderOpinionUpdateDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/app/trader-opinion';

    // ignore: prefer_final_locals
    Object? postBody = traderOpinionUpdateDTO;

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

  /// 更新观点
  ///
  /// Parameters:
  ///
  /// * [TraderOpinionUpdateDTO] traderOpinionUpdateDTO (required):
  Future<ApiRespMapStringObject?> updateOpinion(
    TraderOpinionUpdateDTO traderOpinionUpdateDTO,
  ) async {
    final response = await updateOpinionWithHttpInfo(
      traderOpinionUpdateDTO,
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
}
