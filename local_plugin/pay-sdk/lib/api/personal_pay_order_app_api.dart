//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PersonalPayOrderAppApi {
  PersonalPayOrderAppApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// 根据订单系统订单号查询个人订单
  ///
  /// 根据订单系统订单号查询当前用户的支付订单详情
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PersonalPayOrderOrderNoQueryDTO] personalPayOrderOrderNoQueryDTO (required):
  Future<Response> getPersonalOrderByOrderNoWithHttpInfo(
    PersonalPayOrderOrderNoQueryDTO personalPayOrderOrderNoQueryDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/personal/pay-order/query/order-no';

    // ignore: prefer_final_locals
    Object? postBody = personalPayOrderOrderNoQueryDTO;

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

  /// 根据订单系统订单号查询个人订单
  ///
  /// 根据订单系统订单号查询当前用户的支付订单详情
  ///
  /// Parameters:
  ///
  /// * [PersonalPayOrderOrderNoQueryDTO] personalPayOrderOrderNoQueryDTO (required):
  Future<ApiRespChannelPayOrder?> getPersonalOrderByOrderNo(
    PersonalPayOrderOrderNoQueryDTO personalPayOrderOrderNoQueryDTO,
  ) async {
    final response = await getPersonalOrderByOrderNoWithHttpInfo(
      personalPayOrderOrderNoQueryDTO,
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
        'ApiRespChannelPayOrder',
      ) as ApiRespChannelPayOrder;
    }
    return null;
  }

  /// 根据支付系统订单号查询个人订单
  ///
  /// 根据支付系统订单号查询当前用户的支付订单详情
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PersonalPayOrderPaymentIdQueryDTO] personalPayOrderPaymentIdQueryDTO (required):
  Future<Response> getPersonalOrderByPaymentIdWithHttpInfo(
    PersonalPayOrderPaymentIdQueryDTO personalPayOrderPaymentIdQueryDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/personal/pay-order/query/payment-id';

    // ignore: prefer_final_locals
    Object? postBody = personalPayOrderPaymentIdQueryDTO;

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

  /// 根据支付系统订单号查询个人订单
  ///
  /// 根据支付系统订单号查询当前用户的支付订单详情
  ///
  /// Parameters:
  ///
  /// * [PersonalPayOrderPaymentIdQueryDTO] personalPayOrderPaymentIdQueryDTO (required):
  Future<ApiRespChannelPayOrder?> getPersonalOrderByPaymentId(
    PersonalPayOrderPaymentIdQueryDTO personalPayOrderPaymentIdQueryDTO,
  ) async {
    final response = await getPersonalOrderByPaymentIdWithHttpInfo(
      personalPayOrderPaymentIdQueryDTO,
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
        'ApiRespChannelPayOrder',
      ) as ApiRespChannelPayOrder;
    }
    return null;
  }

  /// 查询个人订单统计
  ///
  /// 查询当前用户的订单统计信息
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPersonalOrderStatisticsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/personal/pay-order/statistics';

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

  /// 查询个人订单统计
  ///
  /// 查询当前用户的订单统计信息
  Future<ApiRespMapStringObject?> getPersonalOrderStatistics() async {
    final response = await getPersonalOrderStatisticsWithHttpInfo();
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
        'ApiRespMapStringObject',
      ) as ApiRespMapStringObject;
    }
    return null;
  }

  /// 查询个人支付订单列表
  ///
  /// 分页查询当前用户的支付订单列表
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PersonalPayOrderListQueryDTO] personalPayOrderListQueryDTO (required):
  Future<Response> getPersonalPayOrdersWithHttpInfo(
    PersonalPayOrderListQueryDTO personalPayOrderListQueryDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/personal/pay-order/list';

    // ignore: prefer_final_locals
    Object? postBody = personalPayOrderListQueryDTO;

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

  /// 查询个人支付订单列表
  ///
  /// 分页查询当前用户的支付订单列表
  ///
  /// Parameters:
  ///
  /// * [PersonalPayOrderListQueryDTO] personalPayOrderListQueryDTO (required):
  Future<ApiRespMapStringObject?> getPersonalPayOrders(
    PersonalPayOrderListQueryDTO personalPayOrderListQueryDTO,
  ) async {
    final response = await getPersonalPayOrdersWithHttpInfo(
      personalPayOrderListQueryDTO,
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
        'ApiRespMapStringObject',
      ) as ApiRespMapStringObject;
    }
    return null;
  }
}
