//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailAuthAppApi {
  EmailAuthAppApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// 邮箱验证码登录
  ///
  /// 使用邮箱和6位数字验证码直接登录，不需要token。新用户会自动注册。登录成功返回AccessToken（7天有效）和RefreshToken（30天有效）。请求体格式：{\"email\": \"user@example.com\", \"code\": \"123456\", \"deviceId\": \"设备ID\"}
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [EmailCodeLoginCommand] emailCodeLoginCommand (required):
  Future<Response> emailCodeLoginWithHttpInfo(
    EmailCodeLoginCommand emailCodeLoginCommand,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/auth/email/code-login';

    // ignore: prefer_final_locals
    Object? postBody = emailCodeLoginCommand;

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

  /// 邮箱验证码登录
  ///
  /// 使用邮箱和6位数字验证码直接登录，不需要token。新用户会自动注册。登录成功返回AccessToken（7天有效）和RefreshToken（30天有效）。请求体格式：{\"email\": \"user@example.com\", \"code\": \"123456\", \"deviceId\": \"设备ID\"}
  ///
  /// Parameters:
  ///
  /// * [EmailCodeLoginCommand] emailCodeLoginCommand (required):
  Future<ApiRespEmailLoginResponse?> emailCodeLogin(
    EmailCodeLoginCommand emailCodeLoginCommand,
  ) async {
    final response = await emailCodeLoginWithHttpInfo(
      emailCodeLoginCommand,
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
        'ApiRespEmailLoginResponse',
      ) as ApiRespEmailLoginResponse;
    }
    return null;
  }

  /// 邮箱登录
  ///
  /// 邮箱验证登录，新用户自动注册。登录成功返回AccessToken（7天有效）和RefreshToken（30天有效）
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [EmailAuthVerifyCommand] emailAuthVerifyCommand (required):
  Future<Response> emailLoginWithHttpInfo(
    EmailAuthVerifyCommand emailAuthVerifyCommand,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/auth/email/login';

    // ignore: prefer_final_locals
    Object? postBody = emailAuthVerifyCommand;

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

  /// 邮箱登录
  ///
  /// 邮箱验证登录，新用户自动注册。登录成功返回AccessToken（7天有效）和RefreshToken（30天有效）
  ///
  /// Parameters:
  ///
  /// * [EmailAuthVerifyCommand] emailAuthVerifyCommand (required):
  Future<ApiRespEmailLoginResponse?> emailLogin(
    EmailAuthVerifyCommand emailAuthVerifyCommand,
  ) async {
    final response = await emailLoginWithHttpInfo(
      emailAuthVerifyCommand,
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
        'ApiRespEmailLoginResponse',
      ) as ApiRespEmailLoginResponse;
    }
    return null;
  }

  /// 获取认证状态
  ///
  /// 获取当前邮箱认证状态
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [EmailAuthVerifyCommand] emailAuthVerifyCommand (required):
  Future<Response> getAuthStatusWithHttpInfo(
    EmailAuthVerifyCommand emailAuthVerifyCommand,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/auth/email/status';

    // ignore: prefer_final_locals
    Object? postBody = emailAuthVerifyCommand;

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

  /// 获取认证状态
  ///
  /// 获取当前邮箱认证状态
  ///
  /// Parameters:
  ///
  /// * [EmailAuthVerifyCommand] emailAuthVerifyCommand (required):
  Future<ApiRespEmailVerifyResponse?> getAuthStatus(
    EmailAuthVerifyCommand emailAuthVerifyCommand,
  ) async {
    final response = await getAuthStatusWithHttpInfo(
      emailAuthVerifyCommand,
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
        'ApiRespEmailVerifyResponse',
      ) as ApiRespEmailVerifyResponse;
    }
    return null;
  }

  /// 发送邮箱验证码
  ///
  /// 向指定邮箱发送6位数字验证码，参考帮您登录页面的交互体验。支持登录、注册、重置密码等场景
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SendEmailCodeCommand] sendEmailCodeCommand (required):
  Future<Response> sendEmailCodeWithHttpInfo(
    SendEmailCodeCommand sendEmailCodeCommand,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/auth/email/send-code';

    // ignore: prefer_final_locals
    Object? postBody = sendEmailCodeCommand;

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

  /// 发送邮箱验证码
  ///
  /// 向指定邮箱发送6位数字验证码，参考帮您登录页面的交互体验。支持登录、注册、重置密码等场景
  ///
  /// Parameters:
  ///
  /// * [SendEmailCodeCommand] sendEmailCodeCommand (required):
  Future<ApiRespSendEmailCodeResponse?> sendEmailCode(
    SendEmailCodeCommand sendEmailCodeCommand,
  ) async {
    final response = await sendEmailCodeWithHttpInfo(
      sendEmailCodeCommand,
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
        'ApiRespSendEmailCodeResponse',
      ) as ApiRespSendEmailCodeResponse;
    }
    return null;
  }

  /// 发送邮箱验证链接
  ///
  /// 用户输入邮箱后，系统发送验证链接到用户邮箱
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [EmailAuthRequestCommand] emailAuthRequestCommand (required):
  Future<Response> sendVerificationEmailWithHttpInfo(
    EmailAuthRequestCommand emailAuthRequestCommand,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/auth/email/send-verification';

    // ignore: prefer_final_locals
    Object? postBody = emailAuthRequestCommand;

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

  /// 发送邮箱验证链接
  ///
  /// 用户输入邮箱后，系统发送验证链接到用户邮箱
  ///
  /// Parameters:
  ///
  /// * [EmailAuthRequestCommand] emailAuthRequestCommand (required):
  Future<ApiRespEmailAuthResponse?> sendVerificationEmail(
    EmailAuthRequestCommand emailAuthRequestCommand,
  ) async {
    final response = await sendVerificationEmailWithHttpInfo(
      emailAuthRequestCommand,
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
        'ApiRespEmailAuthResponse',
      ) as ApiRespEmailAuthResponse;
    }
    return null;
  }

  /// 验证跨设备验证码
  ///
  /// 不同设备时验证6位数字验证码
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [EmailAuthVerifyCommand] emailAuthVerifyCommand (required):
  Future<Response> verifyCodeWithHttpInfo(
    EmailAuthVerifyCommand emailAuthVerifyCommand,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/auth/email/verify-code';

    // ignore: prefer_final_locals
    Object? postBody = emailAuthVerifyCommand;

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

  /// 验证跨设备验证码
  ///
  /// 不同设备时验证6位数字验证码
  ///
  /// Parameters:
  ///
  /// * [EmailAuthVerifyCommand] emailAuthVerifyCommand (required):
  Future<ApiRespEmailVerifyResponse?> verifyCode(
    EmailAuthVerifyCommand emailAuthVerifyCommand,
  ) async {
    final response = await verifyCodeWithHttpInfo(
      emailAuthVerifyCommand,
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
        'ApiRespEmailVerifyResponse',
      ) as ApiRespEmailVerifyResponse;
    }
    return null;
  }

  /// 验证邮箱链接
  ///
  /// 用户点击邮箱中的验证链接后的处理
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [EmailAuthVerifyCommand] emailAuthVerifyCommand (required):
  Future<Response> verifyEmailWithHttpInfo(
    EmailAuthVerifyCommand emailAuthVerifyCommand,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/auth/email/verify';

    // ignore: prefer_final_locals
    Object? postBody = emailAuthVerifyCommand;

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

  /// 验证邮箱链接
  ///
  /// 用户点击邮箱中的验证链接后的处理
  ///
  /// Parameters:
  ///
  /// * [EmailAuthVerifyCommand] emailAuthVerifyCommand (required):
  Future<ApiRespEmailVerifyResponse?> verifyEmail(
    EmailAuthVerifyCommand emailAuthVerifyCommand,
  ) async {
    final response = await verifyEmailWithHttpInfo(
      emailAuthVerifyCommand,
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
        'ApiRespEmailVerifyResponse',
      ) as ApiRespEmailVerifyResponse;
    }
    return null;
  }
}
