//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FundAppApi {
  FundAppApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// 查询我的指定币种余额
  ///
  /// 获取当前用户指定币种的余额信息
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CurrencyBalanceQueryDTO] currencyBalanceQueryDTO (required):
  Future<Response> getMyBalanceWithHttpInfo(
    CurrencyBalanceQueryDTO currencyBalanceQueryDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/wallet-fund/currency';

    // ignore: prefer_final_locals
    Object? postBody = currencyBalanceQueryDTO;

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

  /// 查询我的指定币种余额
  ///
  /// 获取当前用户指定币种的余额信息
  ///
  /// Parameters:
  ///
  /// * [CurrencyBalanceQueryDTO] currencyBalanceQueryDTO (required):
  Future<ApiRespBalance?> getMyBalance(
    CurrencyBalanceQueryDTO currencyBalanceQueryDTO,
  ) async {
    final response = await getMyBalanceWithHttpInfo(
      currencyBalanceQueryDTO,
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
        'ApiRespBalance',
      ) as ApiRespBalance;
    }
    return null;
  }

  /// 查询我的余额列表
  ///
  /// 获取当前用户的所有币种余额信息
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [BalanceQueryDTO] balanceQueryDTO (required):
  Future<Response> getMyBalanceListWithHttpInfo(
    BalanceQueryDTO balanceQueryDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/wallet-fund/list';

    // ignore: prefer_final_locals
    Object? postBody = balanceQueryDTO;

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

  /// 查询我的余额列表
  ///
  /// 获取当前用户的所有币种余额信息
  ///
  /// Parameters:
  ///
  /// * [BalanceQueryDTO] balanceQueryDTO (required):
  Future<ApiRespListBalance?> getMyBalanceList(
    BalanceQueryDTO balanceQueryDTO,
  ) async {
    final response = await getMyBalanceListWithHttpInfo(
      balanceQueryDTO,
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
        'ApiRespListBalance',
      ) as ApiRespListBalance;
    }
    return null;
  }

  /// 获取我的余额总览
  ///
  /// 获取当前用户的余额概览信息
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getMyBalanceSummaryWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/wallet-fund/summary';

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

  /// 获取我的余额总览
  ///
  /// 获取当前用户的余额概览信息
  Future<ApiRespListBalance?> getMyBalanceSummary() async {
    final response = await getMyBalanceSummaryWithHttpInfo();
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
        'ApiRespListBalance',
      ) as ApiRespListBalance;
    }
    return null;
  }
}
