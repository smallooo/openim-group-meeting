//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SmsLoginAppApi {
  SmsLoginAppApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// 获取短信验证码
  ///
  /// 获取一个短信验证码
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SendSmsCaptchaCommand] sendSmsCaptchaCommand (required):
  Future<Response> sendSmsCaptchaWithHttpInfo(
    SendSmsCaptchaCommand sendSmsCaptchaCommand,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/app/auth/login/sms-captcha';

    // ignore: prefer_final_locals
    Object? postBody = sendSmsCaptchaCommand;

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

  /// 获取短信验证码
  ///
  /// 获取一个短信验证码
  ///
  /// Parameters:
  ///
  /// * [SendSmsCaptchaCommand] sendSmsCaptchaCommand (required):
  Future<ApiRespString?> sendSmsCaptcha(
    SendSmsCaptchaCommand sendSmsCaptchaCommand,
  ) async {
    final response = await sendSmsCaptchaWithHttpInfo(
      sendSmsCaptchaCommand,
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

  /// 短信验证码登录
  ///
  /// 短信验证码登录。登录成功返回AccessToken（7天有效）和RefreshToken（30天有效）
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SmsLoginCommand] smsLoginCommand (required):
  Future<Response> smsLoginWithHttpInfo(
    SmsLoginCommand smsLoginCommand,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/app/auth/login/sms';

    // ignore: prefer_final_locals
    Object? postBody = smsLoginCommand;

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

  /// 短信验证码登录
  ///
  /// 短信验证码登录。登录成功返回AccessToken（7天有效）和RefreshToken（30天有效）
  ///
  /// Parameters:
  ///
  /// * [SmsLoginCommand] smsLoginCommand (required):
  Future<ApiRespString?> smsLogin(
    SmsLoginCommand smsLoginCommand,
  ) async {
    final response = await smsLoginWithHttpInfo(
      smsLoginCommand,
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
