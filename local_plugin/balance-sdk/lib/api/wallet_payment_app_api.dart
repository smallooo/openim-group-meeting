//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WalletPaymentAppApi {
  WalletPaymentAppApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// 处理我的支付订单
  ///
  /// 处理当前用户的钱包支付订单
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PaymentProcessDTO] paymentProcessDTO (required):
  Future<Response> processMyPaymentWithHttpInfo(
    PaymentProcessDTO paymentProcessDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/wallet-payment/process';

    // ignore: prefer_final_locals
    Object? postBody = paymentProcessDTO;

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

  /// 处理我的支付订单
  ///
  /// 处理当前用户的钱包支付订单
  ///
  /// Parameters:
  ///
  /// * [PaymentProcessDTO] paymentProcessDTO (required):
  Future<ApiRespPaymentProcessResultVO?> processMyPayment(
    PaymentProcessDTO paymentProcessDTO,
  ) async {
    final response = await processMyPaymentWithHttpInfo(
      paymentProcessDTO,
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
        'ApiRespPaymentProcessResultVO',
      ) as ApiRespPaymentProcessResultVO;
    }
    return null;
  }

  /// 验证支付密码并支付
  ///
  /// 当前用户输入支付密码后验证并完成支付
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PaymentPasswordVerifyDTO] paymentPasswordVerifyDTO (required):
  Future<Response> verifyPasswordAndPayWithHttpInfo(
    PaymentPasswordVerifyDTO paymentPasswordVerifyDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/wallet-payment/verify';

    // ignore: prefer_final_locals
    Object? postBody = paymentPasswordVerifyDTO;

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

  /// 验证支付密码并支付
  ///
  /// 当前用户输入支付密码后验证并完成支付
  ///
  /// Parameters:
  ///
  /// * [PaymentPasswordVerifyDTO] paymentPasswordVerifyDTO (required):
  Future<ApiRespPaymentProcessResultVO?> verifyPasswordAndPay(
    PaymentPasswordVerifyDTO paymentPasswordVerifyDTO,
  ) async {
    final response = await verifyPasswordAndPayWithHttpInfo(
      paymentPasswordVerifyDTO,
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
        'ApiRespPaymentProcessResultVO',
      ) as ApiRespPaymentProcessResultVO;
    }
    return null;
  }
}
