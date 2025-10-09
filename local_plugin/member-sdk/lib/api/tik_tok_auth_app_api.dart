//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TikTokAuthAppApi {
  TikTokAuthAppApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// TikTok OAuth2回调
  ///
  /// TikTok OAuth2授权回调处理。登录成功返回AccessToken（7天有效）和RefreshToken（30天有效）
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TikTokCallbackCommand] tikTokCallbackCommand (required):
  Future<Response> callbackWithHttpInfo(
    TikTokCallbackCommand tikTokCallbackCommand,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/oauth2/tiktok/callback';

    // ignore: prefer_final_locals
    Object? postBody = tikTokCallbackCommand;

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

  /// TikTok OAuth2回调
  ///
  /// TikTok OAuth2授权回调处理。登录成功返回AccessToken（7天有效）和RefreshToken（30天有效）
  ///
  /// Parameters:
  ///
  /// * [TikTokCallbackCommand] tikTokCallbackCommand (required):
  Future<ApiRespTikTokLoginResponse?> callback(
    TikTokCallbackCommand tikTokCallbackCommand,
  ) async {
    final response = await callbackWithHttpInfo(
      tikTokCallbackCommand,
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
        'ApiRespTikTokLoginResponse',
      ) as ApiRespTikTokLoginResponse;
    }
    return null;
  }

  /// 获取TikTok授权URL
  ///
  /// 获取TikTok OAuth2授权URL，用于跳转到TikTok进行授权
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TikTokAuthUrlCommand] tikTokAuthUrlCommand (required):
  Future<Response> getAuthUrlWithHttpInfo(
    TikTokAuthUrlCommand tikTokAuthUrlCommand,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/oauth2/tiktok/auth-url';

    // ignore: prefer_final_locals
    Object? postBody = tikTokAuthUrlCommand;

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

  /// 获取TikTok授权URL
  ///
  /// 获取TikTok OAuth2授权URL，用于跳转到TikTok进行授权
  ///
  /// Parameters:
  ///
  /// * [TikTokAuthUrlCommand] tikTokAuthUrlCommand (required):
  Future<ApiRespString?> getAuthUrl(
    TikTokAuthUrlCommand tikTokAuthUrlCommand,
  ) async {
    final response = await getAuthUrlWithHttpInfo(
      tikTokAuthUrlCommand,
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

  /// TikTok授权登录
  ///
  /// 使用TikTok授权码进行登录。登录成功返回AccessToken（7天有效）和RefreshToken（30天有效）
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TikTokLoginCommand] tikTokLoginCommand (required):
  Future<Response> loginWithHttpInfo(
    TikTokLoginCommand tikTokLoginCommand,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/oauth2/tiktok/login';

    // ignore: prefer_final_locals
    Object? postBody = tikTokLoginCommand;

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

  /// TikTok授权登录
  ///
  /// 使用TikTok授权码进行登录。登录成功返回AccessToken（7天有效）和RefreshToken（30天有效）
  ///
  /// Parameters:
  ///
  /// * [TikTokLoginCommand] tikTokLoginCommand (required):
  Future<ApiRespTikTokLoginResponse?> login(
    TikTokLoginCommand tikTokLoginCommand,
  ) async {
    final response = await loginWithHttpInfo(
      tikTokLoginCommand,
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
        'ApiRespTikTokLoginResponse',
      ) as ApiRespTikTokLoginResponse;
    }
    return null;
  }
}
