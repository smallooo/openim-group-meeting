//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TokenAppApi {
  TokenAppApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// 检查Token状态
  ///
  /// 检查当前AccessToken的有效性和剩余时间。AccessToken有效期为7天
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Response> checkTokenStatusWithHttpInfo(
    Object body,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/app/auth/token/status';

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// 检查Token状态
  ///
  /// 检查当前AccessToken的有效性和剩余时间。AccessToken有效期为7天
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<ApiRespObject?> checkTokenStatus(
    Object body,
  ) async {
    final response = await checkTokenStatusWithHttpInfo(
      body,
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
        'ApiRespObject',
      ) as ApiRespObject;
    }
    return null;
  }

  /// 退出登录
  ///
  /// 清除当前用户的登录状态并删除RefreshToken
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TokenLogoutCommand] tokenLogoutCommand (required):
  Future<Response> logoutWithHttpInfo(
    TokenLogoutCommand tokenLogoutCommand,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/app/auth/token/logout';

    // ignore: prefer_final_locals
    Object? postBody = tokenLogoutCommand;

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

  /// 退出登录
  ///
  /// 清除当前用户的登录状态并删除RefreshToken
  ///
  /// Parameters:
  ///
  /// * [TokenLogoutCommand] tokenLogoutCommand (required):
  Future<ApiRespString?> logout(
    TokenLogoutCommand tokenLogoutCommand,
  ) async {
    final response = await logoutWithHttpInfo(
      tokenLogoutCommand,
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
        'ApiRespString',
      ) as ApiRespString;
    }
    return null;
  }

  /// 刷新AccessToken
  ///
  /// 使用RefreshToken获取新的AccessToken。AccessToken有效期为7天，RefreshToken有效期为30天
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TokenRefreshCommand] tokenRefreshCommand (required):
  Future<Response> refreshTokenWithHttpInfo(
    TokenRefreshCommand tokenRefreshCommand,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/app/auth/token/refresh';

    // ignore: prefer_final_locals
    Object? postBody = tokenRefreshCommand;

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

  /// 刷新AccessToken
  ///
  /// 使用RefreshToken获取新的AccessToken。AccessToken有效期为7天，RefreshToken有效期为30天
  ///
  /// Parameters:
  ///
  /// * [TokenRefreshCommand] tokenRefreshCommand (required):
  Future<ApiRespTokenRefreshResponse?> refreshToken(
    TokenRefreshCommand tokenRefreshCommand,
  ) async {
    final response = await refreshTokenWithHttpInfo(
      tokenRefreshCommand,
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
        'ApiRespTokenRefreshResponse',
      ) as ApiRespTokenRefreshResponse;
    }
    return null;
  }
}
