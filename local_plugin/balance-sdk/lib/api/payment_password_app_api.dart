//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PaymentPasswordAppApi {
  PaymentPasswordAppApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// 修改我的支付密码
  ///
  /// 修改当前用户支付密码
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] oldPassword (required):
  ///   原支付密码
  ///
  /// * [String] newPassword (required):
  ///   新支付密码
  Future<Response> changeMyPaymentPasswordWithHttpInfo(
    String oldPassword,
    String newPassword,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/wallet-password/change';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'oldPassword', oldPassword));
    queryParams.addAll(_queryParams('', 'newPassword', newPassword));

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

  /// 修改我的支付密码
  ///
  /// 修改当前用户支付密码
  ///
  /// Parameters:
  ///
  /// * [String] oldPassword (required):
  ///   原支付密码
  ///
  /// * [String] newPassword (required):
  ///   新支付密码
  Future<ApiRespVoid?> changeMyPaymentPassword(
    String oldPassword,
    String newPassword,
  ) async {
    final response = await changeMyPaymentPasswordWithHttpInfo(
      oldPassword,
      newPassword,
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

  /// 查询我的支付密码状态
  ///
  /// 查询当前用户支付密码设置状态
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getMyPaymentPasswordStatusWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/wallet-password/status';

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

  /// 查询我的支付密码状态
  ///
  /// 查询当前用户支付密码设置状态
  Future<ApiRespPaymentPasswordStatusVO?> getMyPaymentPasswordStatus() async {
    final response = await getMyPaymentPasswordStatusWithHttpInfo();
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
        'ApiRespPaymentPasswordStatusVO',
      ) as ApiRespPaymentPasswordStatusVO;
    }
    return null;
  }

  /// 设置我的支付密码
  ///
  /// 为当前用户设置支付密码
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] password (required):
  ///   支付密码
  Future<Response> setMyPaymentPasswordWithHttpInfo(
    String password,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/wallet-password/set';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'password', password));

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

  /// 设置我的支付密码
  ///
  /// 为当前用户设置支付密码
  ///
  /// Parameters:
  ///
  /// * [String] password (required):
  ///   支付密码
  Future<ApiRespVoid?> setMyPaymentPassword(
    String password,
  ) async {
    final response = await setMyPaymentPasswordWithHttpInfo(
      password,
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

  /// 验证我的支付密码
  ///
  /// 验证当前用户支付密码是否正确
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] password (required):
  ///   支付密码
  Future<Response> verifyMyPaymentPasswordWithHttpInfo(
    String password,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/wallet-password/verify';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'password', password));

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

  /// 验证我的支付密码
  ///
  /// 验证当前用户支付密码是否正确
  ///
  /// Parameters:
  ///
  /// * [String] password (required):
  ///   支付密码
  Future<ApiRespVoid?> verifyMyPaymentPassword(
    String password,
  ) async {
    final response = await verifyMyPaymentPasswordWithHttpInfo(
      password,
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
