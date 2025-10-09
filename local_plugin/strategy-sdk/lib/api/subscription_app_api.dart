//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SubscriptionAppApi {
  SubscriptionAppApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// 取消订阅
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] subscriptionId (required):
  Future<Response> cancelSubscriptionWithHttpInfo(
    int subscriptionId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/subscriptions/{subscriptionId}'
        .replaceAll('{subscriptionId}', subscriptionId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// 取消订阅
  ///
  /// Parameters:
  ///
  /// * [int] subscriptionId (required):
  Future<ApiRespVoid?> cancelSubscription(
    int subscriptionId,
  ) async {
    final response = await cancelSubscriptionWithHttpInfo(
      subscriptionId,
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

  /// 检查用户订阅状态（Feign调用）
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SubscriptionCheckDTO] checkDTO (required):
  Future<Response> checkSubscriptionWithHttpInfo(
    SubscriptionCheckDTO checkDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/subscription/check';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'checkDTO', checkDTO));

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

  /// 检查用户订阅状态（Feign调用）
  ///
  /// Parameters:
  ///
  /// * [SubscriptionCheckDTO] checkDTO (required):
  Future<ApiRespBoolean?> checkSubscription(
    SubscriptionCheckDTO checkDTO,
  ) async {
    final response = await checkSubscriptionWithHttpInfo(
      checkDTO,
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
        'ApiRespBoolean',
      ) as ApiRespBoolean;
    }
    return null;
  }

  /// 检查是否已订阅
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] traderId (required):
  Future<Response> checkSubscriptionStatusWithHttpInfo(
    int traderId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/subscribe/{traderId}/status'
        .replaceAll('{traderId}', traderId.toString());

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

  /// 检查是否已订阅
  ///
  /// Parameters:
  ///
  /// * [int] traderId (required):
  Future<ApiRespMapStringObject?> checkSubscriptionStatus(
    int traderId,
  ) async {
    final response = await checkSubscriptionStatusWithHttpInfo(
      traderId,
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

  /// 查询我的支付订单
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PaymentOrderQueryDTO] queryDTO (required):
  Future<Response> getMyPaymentOrdersWithHttpInfo(
    PaymentOrderQueryDTO queryDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/my-payment-orders';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'queryDTO', queryDTO));

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

  /// 查询我的支付订单
  ///
  /// Parameters:
  ///
  /// * [PaymentOrderQueryDTO] queryDTO (required):
  Future<ApiRespIPageStrSubscriptionPayment?> getMyPaymentOrders(
    PaymentOrderQueryDTO queryDTO,
  ) async {
    final response = await getMyPaymentOrdersWithHttpInfo(
      queryDTO,
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
        'ApiRespIPageStrSubscriptionPayment',
      ) as ApiRespIPageStrSubscriptionPayment;
    }
    return null;
  }

  /// 查询我的退款订单
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RefundOrderQueryDTO] queryDTO (required):
  Future<Response> getMyRefundOrdersWithHttpInfo(
    RefundOrderQueryDTO queryDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/my-refund-orders';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'queryDTO', queryDTO));

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

  /// 查询我的退款订单
  ///
  /// Parameters:
  ///
  /// * [RefundOrderQueryDTO] queryDTO (required):
  Future<ApiRespIPageStrSubscriptionRefund?> getMyRefundOrders(
    RefundOrderQueryDTO queryDTO,
  ) async {
    final response = await getMyRefundOrdersWithHttpInfo(
      queryDTO,
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
        'ApiRespIPageStrSubscriptionRefund',
      ) as ApiRespIPageStrSubscriptionRefund;
    }
    return null;
  }

  /// 我的订阅列表
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SubscriptionQueryDTO] queryDTO (required):
  Future<Response> getMySubscriptionsWithHttpInfo(
    SubscriptionQueryDTO queryDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/my-subscriptions';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'queryDTO', queryDTO));

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

  /// 我的订阅列表
  ///
  /// Parameters:
  ///
  /// * [SubscriptionQueryDTO] queryDTO (required):
  Future<ApiRespIPageStrSubscription?> getMySubscriptions(
    SubscriptionQueryDTO queryDTO,
  ) async {
    final response = await getMySubscriptionsWithHttpInfo(
      queryDTO,
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
        'ApiRespIPageStrSubscription',
      ) as ApiRespIPageStrSubscription;
    }
    return null;
  }

  /// 查询支付订单详情
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] paymentOrderNo (required):
  Future<Response> getPaymentOrderDetailWithHttpInfo(
    String paymentOrderNo,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/payment-orders/{paymentOrderNo}'
        .replaceAll('{paymentOrderNo}', paymentOrderNo);

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

  /// 查询支付订单详情
  ///
  /// Parameters:
  ///
  /// * [String] paymentOrderNo (required):
  Future<ApiRespStrSubscriptionPayment?> getPaymentOrderDetail(
    String paymentOrderNo,
  ) async {
    final response = await getPaymentOrderDetailWithHttpInfo(
      paymentOrderNo,
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
        'ApiRespStrSubscriptionPayment',
      ) as ApiRespStrSubscriptionPayment;
    }
    return null;
  }

  /// 查询退款订单详情
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] refundOrderNo (required):
  Future<Response> getRefundOrderDetailWithHttpInfo(
    String refundOrderNo,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/refund-orders/{refundOrderNo}'
        .replaceAll('{refundOrderNo}', refundOrderNo);

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

  /// 查询退款订单详情
  ///
  /// Parameters:
  ///
  /// * [String] refundOrderNo (required):
  Future<ApiRespStrSubscriptionRefund?> getRefundOrderDetail(
    String refundOrderNo,
  ) async {
    final response = await getRefundOrderDetailWithHttpInfo(
      refundOrderNo,
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
        'ApiRespStrSubscriptionRefund',
      ) as ApiRespStrSubscriptionRefund;
    }
    return null;
  }

  /// 申请退款
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] subscriptionId (required):
  ///
  /// * [RefundRequestDTO] refundRequestDTO (required):
  Future<Response> requestRefundWithHttpInfo(
    int subscriptionId,
    RefundRequestDTO refundRequestDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/subscriptions/{subscriptionId}/refund'
        .replaceAll('{subscriptionId}', subscriptionId.toString());

    // ignore: prefer_final_locals
    Object? postBody = refundRequestDTO;

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

  /// 申请退款
  ///
  /// Parameters:
  ///
  /// * [int] subscriptionId (required):
  ///
  /// * [RefundRequestDTO] refundRequestDTO (required):
  Future<ApiRespMapStringObject?> requestRefund(
    int subscriptionId,
    RefundRequestDTO refundRequestDTO,
  ) async {
    final response = await requestRefundWithHttpInfo(
      subscriptionId,
      refundRequestDTO,
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

  /// 订阅交易员
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] traderId (required):
  ///
  /// * [SubscribeTraderDTO] subscribeTraderDTO (required):
  Future<Response> subscribeTraderWithHttpInfo(
    int traderId,
    SubscribeTraderDTO subscribeTraderDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/subscribe/{traderId}'
        .replaceAll('{traderId}', traderId.toString());

    // ignore: prefer_final_locals
    Object? postBody = subscribeTraderDTO;

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

  /// 订阅交易员
  ///
  /// Parameters:
  ///
  /// * [int] traderId (required):
  ///
  /// * [SubscribeTraderDTO] subscribeTraderDTO (required):
  Future<ApiRespMapStringObject?> subscribeTrader(
    int traderId,
    SubscribeTraderDTO subscribeTraderDTO,
  ) async {
    final response = await subscribeTraderWithHttpInfo(
      traderId,
      subscribeTraderDTO,
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
