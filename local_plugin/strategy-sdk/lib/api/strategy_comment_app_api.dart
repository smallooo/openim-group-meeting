//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StrategyCommentAppApi {
  StrategyCommentAppApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// 添加策略评论（交易员追加）
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] strategyId (required):
  ///
  /// * [StrategyCommentDTO] strategyCommentDTO (required):
  Future<Response> addStrategyCommentWithHttpInfo(
    int strategyId,
    StrategyCommentDTO strategyCommentDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/strategies/{strategyId}/comment'
        .replaceAll('{strategyId}', strategyId.toString());

    // ignore: prefer_final_locals
    Object? postBody = strategyCommentDTO;

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

  /// 添加策略评论（交易员追加）
  ///
  /// Parameters:
  ///
  /// * [int] strategyId (required):
  ///
  /// * [StrategyCommentDTO] strategyCommentDTO (required):
  Future<ApiRespVoid?> addStrategyComment(
    int strategyId,
    StrategyCommentDTO strategyCommentDTO,
  ) async {
    final response = await addStrategyCommentWithHttpInfo(
      strategyId,
      strategyCommentDTO,
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

  /// 获取策略评论列表
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] strategyId (required):
  ///
  /// * [StrategyCommentQueryDTO] queryDTO (required):
  Future<Response> getStrategyCommentsWithHttpInfo(
    int strategyId,
    StrategyCommentQueryDTO queryDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/strategies/{strategyId}/comments'
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

  /// 获取策略评论列表
  ///
  /// Parameters:
  ///
  /// * [int] strategyId (required):
  ///
  /// * [StrategyCommentQueryDTO] queryDTO (required):
  Future<ApiRespIPageStrStrategyComment?> getStrategyComments(
    int strategyId,
    StrategyCommentQueryDTO queryDTO,
  ) async {
    final response = await getStrategyCommentsWithHttpInfo(
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
        'ApiRespIPageStrStrategyComment',
      ) as ApiRespIPageStrStrategyComment;
    }
    return null;
  }
}
