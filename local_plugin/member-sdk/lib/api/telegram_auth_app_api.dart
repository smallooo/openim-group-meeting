//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TelegramAuthAppApi {
  TelegramAuthAppApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Telegram登录回调
  ///
  /// Telegram Widget的回调处理（使用data-auth-url方式时）。登录成功返回AccessToken（7天有效）和RefreshToken（30天有效）
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TelegramLoginCommand] telegramLoginCommand (required):
  Future<Response> callbackWithHttpInfo(
    TelegramLoginCommand telegramLoginCommand,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/app/auth/telegram/callback';

    // ignore: prefer_final_locals
    Object? postBody = telegramLoginCommand;

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

  /// Telegram登录回调
  ///
  /// Telegram Widget的回调处理（使用data-auth-url方式时）。登录成功返回AccessToken（7天有效）和RefreshToken（30天有效）
  ///
  /// Parameters:
  ///
  /// * [TelegramLoginCommand] telegramLoginCommand (required):
  Future<ApiRespTelegramLoginResponse?> callback(
    TelegramLoginCommand telegramLoginCommand,
  ) async {
    final response = await callbackWithHttpInfo(
      telegramLoginCommand,
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
        'ApiRespTelegramLoginResponse',
      ) as ApiRespTelegramLoginResponse;
    }
    return null;
  }

  /// 获取Telegram Bot配置
  ///
  /// 获取前端Telegram Login Widget所需的Bot配置信息
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Response> getConfigWithHttpInfo(
    Object body,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/app/auth/telegram/config';

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

  /// 获取Telegram Bot配置
  ///
  /// 获取前端Telegram Login Widget所需的Bot配置信息
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<ApiRespMapStringString?> getConfig(
    Object body,
  ) async {
    final response = await getConfigWithHttpInfo(
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
        'ApiRespMapStringString',
      ) as ApiRespMapStringString;
    }
    return null;
  }

  /// 获取Telegram Widget脚本配置
  ///
  /// 返回前端集成所需的JavaScript代码示例
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Response> getWidgetScriptWithHttpInfo(
    Object body,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/app/auth/telegram/widget-script';

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

  /// 获取Telegram Widget脚本配置
  ///
  /// 返回前端集成所需的JavaScript代码示例
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<ApiRespString?> getWidgetScript(
    Object body,
  ) async {
    final response = await getWidgetScriptWithHttpInfo(
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
        'ApiRespString',
      ) as ApiRespString;
    }
    return null;
  }

  /// Telegram登录
  ///
  /// 通过Telegram Login Widget数据进行登录。登录成功返回AccessToken（7天有效）和RefreshToken（30天有效）
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TelegramLoginCommand] telegramLoginCommand (required):
  Future<Response> loginWithHttpInfo(
    TelegramLoginCommand telegramLoginCommand,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/app/auth/telegram/login';

    // ignore: prefer_final_locals
    Object? postBody = telegramLoginCommand;

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

  /// Telegram登录
  ///
  /// 通过Telegram Login Widget数据进行登录。登录成功返回AccessToken（7天有效）和RefreshToken（30天有效）
  ///
  /// Parameters:
  ///
  /// * [TelegramLoginCommand] telegramLoginCommand (required):
  Future<ApiRespTelegramLoginResponse?> login(
    TelegramLoginCommand telegramLoginCommand,
  ) async {
    final response = await loginWithHttpInfo(
      telegramLoginCommand,
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
        'ApiRespTelegramLoginResponse',
      ) as ApiRespTelegramLoginResponse;
    }
    return null;
  }
}
