//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FollowAppApi {
  FollowAppApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// 检查是否已关注
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] traderId (required):
  Future<Response> checkFollowStatusWithHttpInfo(
    int traderId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/follow/follow/{traderId}/status'
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

  /// 检查是否已关注
  ///
  /// Parameters:
  ///
  /// * [int] traderId (required):
  Future<ApiRespMapStringObject?> checkFollowStatus(
    int traderId,
  ) async {
    final response = await checkFollowStatusWithHttpInfo(
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
        'ApiRespMapStringObject',
      ) as ApiRespMapStringObject;
    }
    return null;
  }

  /// 关注交易员
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] traderId (required):
  Future<Response> followTraderWithHttpInfo(
    int traderId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/follow/follow/{traderId}'
        .replaceAll('{traderId}', traderId.toString());

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

  /// 关注交易员
  ///
  /// Parameters:
  ///
  /// * [int] traderId (required):
  Future<ApiRespMapStringObject?> followTrader(
    int traderId,
  ) async {
    final response = await followTraderWithHttpInfo(
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
        'ApiRespMapStringObject',
      ) as ApiRespMapStringObject;
    }
    return null;
  }

  /// 我的关注列表
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [FollowQueryDTO] queryDTO (required):
  Future<Response> getMyFollowsWithHttpInfo(
    FollowQueryDTO queryDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/follow/my-follows';

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

  /// 我的关注列表
  ///
  /// Parameters:
  ///
  /// * [FollowQueryDTO] queryDTO (required):
  Future<ApiRespIPageStrFollow?> getMyFollows(
    FollowQueryDTO queryDTO,
  ) async {
    final response = await getMyFollowsWithHttpInfo(
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
        'ApiRespIPageStrFollow',
      ) as ApiRespIPageStrFollow;
    }
    return null;
  }

  /// 取消关注交易员
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] traderId (required):
  Future<Response> unfollowTraderWithHttpInfo(
    int traderId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/follow/follow/{traderId}'
        .replaceAll('{traderId}', traderId.toString());

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

  /// 取消关注交易员
  ///
  /// Parameters:
  ///
  /// * [int] traderId (required):
  Future<ApiRespVoid?> unfollowTrader(
    int traderId,
  ) async {
    final response = await unfollowTraderWithHttpInfo(
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
        'ApiRespVoid',
      ) as ApiRespVoid;
    }
    return null;
  }
}
