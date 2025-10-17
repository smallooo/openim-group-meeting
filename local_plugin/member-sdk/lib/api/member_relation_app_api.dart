//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MemberRelationAppApi {
  MemberRelationAppApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// 关注一个用户
  ///
  /// 关注一个用户
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] memberId (required):
  Future<Response> attentionWithHttpInfo(
    int memberId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/app/member/relation/attention/{memberId}'
        .replaceAll('{memberId}', memberId.toString());

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

  /// 关注一个用户
  ///
  /// 关注一个用户
  ///
  /// Parameters:
  ///
  /// * [int] memberId (required):
  Future<ApiRespBoolean?> attention(
    int memberId,
  ) async {
    final response = await attentionWithHttpInfo(
      memberId,
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

  /// 取消关注一个用户
  ///
  /// 取消关注一个用户
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] memberId (required):
  Future<Response> unattentionWithHttpInfo(
    int memberId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/app/member/relation/unattention/{memberId}'
        .replaceAll('{memberId}', memberId.toString());

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

  /// 取消关注一个用户
  ///
  /// 取消关注一个用户
  ///
  /// Parameters:
  ///
  /// * [int] memberId (required):
  Future<ApiRespBoolean?> unattention(
    int memberId,
  ) async {
    final response = await unattentionWithHttpInfo(
      memberId,
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
