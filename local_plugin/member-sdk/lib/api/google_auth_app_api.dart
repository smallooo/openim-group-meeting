//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GoogleAuthAppApi {
  GoogleAuthAppApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// 获取Google授权URL
  ///
  /// 重定向到Google授权页面
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> authorizeWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/oauth2/google/authorize';

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

  /// 获取Google授权URL
  ///
  /// 重定向到Google授权页面
  Future<void> authorize() async {
    final response = await authorizeWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Google登录
  ///
  /// 通过授权码进行Google登录。登录成功返回AccessToken（7天有效）和RefreshToken（30天有效）
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [GoogleLoginCommand] googleLoginCommand (required):
  Future<Response> call1WithHttpInfo(
    GoogleLoginCommand googleLoginCommand,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/oauth2/google/login';

    // ignore: prefer_final_locals
    Object? postBody = googleLoginCommand;

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

  /// Google登录
  ///
  /// 通过授权码进行Google登录。登录成功返回AccessToken（7天有效）和RefreshToken（30天有效）
  ///
  /// Parameters:
  ///
  /// * [GoogleLoginCommand] googleLoginCommand (required):
  Future<ApiRespGoogleLoginResponse?> call1(
    GoogleLoginCommand googleLoginCommand,
  ) async {
    final response = await call1WithHttpInfo(
      googleLoginCommand,
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
        'ApiRespGoogleLoginResponse',
      ) as ApiRespGoogleLoginResponse;
    }
    return null;
  }

  /// Google OAuth2回调
  ///
  /// 处理Google授权回调。登录成功返回AccessToken（7天有效）和RefreshToken（30天有效）
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [GoogleLoginCommand] googleLoginCommand (required):
  Future<Response> call1_1WithHttpInfo(
    GoogleLoginCommand googleLoginCommand,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/oauth2/google/callback';

    // ignore: prefer_final_locals
    Object? postBody = googleLoginCommand;

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

  /// Google OAuth2回调
  ///
  /// 处理Google授权回调。登录成功返回AccessToken（7天有效）和RefreshToken（30天有效）
  ///
  /// Parameters:
  ///
  /// * [GoogleLoginCommand] googleLoginCommand (required):
  Future<ApiRespGoogleLoginResponse?> call1_1(
    GoogleLoginCommand googleLoginCommand,
  ) async {
    final response = await call1_1WithHttpInfo(
      googleLoginCommand,
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
        'ApiRespGoogleLoginResponse',
      ) as ApiRespGoogleLoginResponse;
    }
    return null;
  }

  /// 获取授权URL
  ///
  /// 获取Google OAuth2授权URL
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [GoogleAuthUrlCommand] googleAuthUrlCommand (required):
  Future<Response> call1_2WithHttpInfo(
    GoogleAuthUrlCommand googleAuthUrlCommand,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/oauth2/google/auth-url';

    // ignore: prefer_final_locals
    Object? postBody = googleAuthUrlCommand;

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

  /// 获取授权URL
  ///
  /// 获取Google OAuth2授权URL
  ///
  /// Parameters:
  ///
  /// * [GoogleAuthUrlCommand] googleAuthUrlCommand (required):
  Future<ApiRespString?> call1_2(
    GoogleAuthUrlCommand googleAuthUrlCommand,
  ) async {
    final response = await call1_2WithHttpInfo(
      googleAuthUrlCommand,
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
}
