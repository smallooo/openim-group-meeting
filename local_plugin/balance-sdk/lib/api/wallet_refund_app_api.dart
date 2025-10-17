//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WalletRefundAppApi {
  WalletRefundAppApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// 处理我的退款订单
  ///
  /// 处理当前用户的钱包退款订单
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RefundProcessDTO] refundProcessDTO (required):
  Future<Response> processMyRefundWithHttpInfo(
    RefundProcessDTO refundProcessDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/app/wallet-refund/process';

    // ignore: prefer_final_locals
    Object? postBody = refundProcessDTO;

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

  /// 处理我的退款订单
  ///
  /// 处理当前用户的钱包退款订单
  ///
  /// Parameters:
  ///
  /// * [RefundProcessDTO] refundProcessDTO (required):
  Future<ApiRespRefundProcessResultVO?> processMyRefund(
    RefundProcessDTO refundProcessDTO,
  ) async {
    final response = await processMyRefundWithHttpInfo(
      refundProcessDTO,
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
        'ApiRespRefundProcessResultVO',
      ) as ApiRespRefundProcessResultVO;
    }
    return null;
  }

  /// 验证支付密码并退款
  ///
  /// 当前用户输入支付密码后验证并完成退款
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RefundPasswordVerifyDTO] refundPasswordVerifyDTO (required):
  Future<Response> verifyPasswordAndRefundWithHttpInfo(
    RefundPasswordVerifyDTO refundPasswordVerifyDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/app/wallet-refund/verify';

    // ignore: prefer_final_locals
    Object? postBody = refundPasswordVerifyDTO;

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

  /// 验证支付密码并退款
  ///
  /// 当前用户输入支付密码后验证并完成退款
  ///
  /// Parameters:
  ///
  /// * [RefundPasswordVerifyDTO] refundPasswordVerifyDTO (required):
  Future<ApiRespRefundProcessResultVO?> verifyPasswordAndRefund(
    RefundPasswordVerifyDTO refundPasswordVerifyDTO,
  ) async {
    final response = await verifyPasswordAndRefundWithHttpInfo(
      refundPasswordVerifyDTO,
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
        'ApiRespRefundProcessResultVO',
      ) as ApiRespRefundProcessResultVO;
    }
    return null;
  }
}
