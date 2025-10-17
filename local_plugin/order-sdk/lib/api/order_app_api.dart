//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderAppApi {
  OrderAppApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// 取消支付订单
  ///
  /// 取消支付订单
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PaymentCancelRequest] paymentCancelRequest (required):
  Future<Response> cancelPaymentWithHttpInfo(
    PaymentCancelRequest paymentCancelRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/app/order/payment/cancel';

    // ignore: prefer_final_locals
    Object? postBody = paymentCancelRequest;

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

  /// 取消支付订单
  ///
  /// 取消支付订单
  ///
  /// Parameters:
  ///
  /// * [PaymentCancelRequest] paymentCancelRequest (required):
  Future<PaymentCancelResponse?> cancelPayment(
    PaymentCancelRequest paymentCancelRequest,
  ) async {
    final response = await cancelPaymentWithHttpInfo(
      paymentCancelRequest,
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
        'PaymentCancelResponse',
      ) as PaymentCancelResponse;
    }
    return null;
  }

  /// 确认收货
  ///
  /// 用户确认收货
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  ///   订单ID
  Future<Response> confirmReceiveWithHttpInfo(
    int orderId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/app/order/{orderId}/confirm-receive'
        .replaceAll('{orderId}', orderId.toString());

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

  /// 确认收货
  ///
  /// 用户确认收货
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  ///   订单ID
  Future<bool?> confirmReceive(
    int orderId,
  ) async {
    final response = await confirmReceiveWithHttpInfo(
      orderId,
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
        'bool',
      ) as bool;
    }
    return null;
  }

  /// 创建订单
  ///
  /// 用户创建新订单
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [OrderCreateDTO] orderCreateDTO (required):
  Future<Response> createOrderWithHttpInfo(
    OrderCreateDTO orderCreateDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/app/order/create';

    // ignore: prefer_final_locals
    Object? postBody = orderCreateDTO;

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

  /// 创建订单
  ///
  /// 用户创建新订单
  ///
  /// Parameters:
  ///
  /// * [OrderCreateDTO] orderCreateDTO (required):
  Future<OrderCreateVO?> createOrder(
    OrderCreateDTO orderCreateDTO,
  ) async {
    final response = await createOrderWithHttpInfo(
      orderCreateDTO,
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
        'OrderCreateVO',
      ) as OrderCreateVO;
    }
    return null;
  }

  /// 创建支付
  ///
  /// 为订单创建支付
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] orderNo (required):
  ///   订单编号
  Future<Response> createPaymentWithHttpInfo(
    String orderNo,
  ) async {
    // ignore: prefer_const_declarations
    final path =
        r'/app/order/{orderNo}/payment'.replaceAll('{orderNo}', orderNo);

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

  /// 创建支付
  ///
  /// 为订单创建支付
  ///
  /// Parameters:
  ///
  /// * [String] orderNo (required):
  ///   订单编号
  Future<PaymentVO?> createPayment(
    String orderNo,
  ) async {
    final response = await createPaymentWithHttpInfo(
      orderNo,
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
        'PaymentVO',
      ) as PaymentVO;
    }
    return null;
  }

  /// 删除订单
  ///
  /// 用户删除订单
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  ///   订单ID
  Future<Response> deleteOrderWithHttpInfo(
    int orderId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/app/order/{orderId}/delete'
        .replaceAll('{orderId}', orderId.toString());

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

  /// 删除订单
  ///
  /// 用户删除订单
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  ///   订单ID
  Future<bool?> deleteOrder(
    int orderId,
  ) async {
    final response = await deleteOrderWithHttpInfo(
      orderId,
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
        'bool',
      ) as bool;
    }
    return null;
  }

  /// 获取订单详情
  ///
  /// 根据订单ID获取订单详情
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  ///   订单ID
  Future<Response> getOrderDetailWithHttpInfo(
    int orderId,
  ) async {
    // ignore: prefer_const_declarations
    final path =
        r'/app/order/{orderId}'.replaceAll('{orderId}', orderId.toString());

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

  /// 获取订单详情
  ///
  /// 根据订单ID获取订单详情
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  ///   订单ID
  Future<OrderDetailVO?> getOrderDetail(
    int orderId,
  ) async {
    final response = await getOrderDetailWithHttpInfo(
      orderId,
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
        'OrderDetailVO',
      ) as OrderDetailVO;
    }
    return null;
  }

  /// 根据订单号获取订单详情
  ///
  /// 根据订单号获取订单详情
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] orderNo (required):
  ///   订单编号
  Future<Response> getOrderDetailByOrderNoWithHttpInfo(
    String orderNo,
  ) async {
    // ignore: prefer_const_declarations
    final path =
        r'/app/order/detail/{orderNo}'.replaceAll('{orderNo}', orderNo);

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

  /// 根据订单号获取订单详情
  ///
  /// 根据订单号获取订单详情
  ///
  /// Parameters:
  ///
  /// * [String] orderNo (required):
  ///   订单编号
  Future<OrderDetailVO?> getOrderDetailByOrderNo(
    String orderNo,
  ) async {
    final response = await getOrderDetailByOrderNoWithHttpInfo(
      orderNo,
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
        'OrderDetailVO',
      ) as OrderDetailVO;
    }
    return null;
  }

  /// 分页查询订单列表
  ///
  /// 分页查询用户的订单列表
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] orderType:
  ///   订单类型筛选
  ///
  /// * [int] orderStatus:
  ///   订单状态筛选
  ///
  /// * [DateTime] startTime:
  ///   开始时间筛选
  ///
  /// * [DateTime] endTime:
  ///   结束时间筛选
  ///
  /// * [int] current:
  ///   当前页码
  ///
  /// * [int] size:
  ///   每页大小
  Future<Response> getOrderListWithHttpInfo({
    String? orderType,
    int? orderStatus,
    DateTime? startTime,
    DateTime? endTime,
    int? current,
    int? size,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/app/order/list';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (orderType != null) {
      queryParams.addAll(_queryParams('', 'orderType', orderType));
    }
    if (orderStatus != null) {
      queryParams.addAll(_queryParams('', 'orderStatus', orderStatus));
    }
    if (startTime != null) {
      queryParams.addAll(_queryParams('', 'startTime', startTime));
    }
    if (endTime != null) {
      queryParams.addAll(_queryParams('', 'endTime', endTime));
    }
    if (current != null) {
      queryParams.addAll(_queryParams('', 'current', current));
    }
    if (size != null) {
      queryParams.addAll(_queryParams('', 'size', size));
    }

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

  /// 分页查询订单列表
  ///
  /// 分页查询用户的订单列表
  ///
  /// Parameters:
  ///
  /// * [String] orderType:
  ///   订单类型筛选
  ///
  /// * [int] orderStatus:
  ///   订单状态筛选
  ///
  /// * [DateTime] startTime:
  ///   开始时间筛选
  ///
  /// * [DateTime] endTime:
  ///   结束时间筛选
  ///
  /// * [int] current:
  ///   当前页码
  ///
  /// * [int] size:
  ///   每页大小
  Future<OrderPageVO?> getOrderList({
    String? orderType,
    int? orderStatus,
    DateTime? startTime,
    DateTime? endTime,
    int? current,
    int? size,
  }) async {
    final response = await getOrderListWithHttpInfo(
      orderType: orderType,
      orderStatus: orderStatus,
      startTime: startTime,
      endTime: endTime,
      current: current,
      size: size,
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
        'OrderPageVO',
      ) as OrderPageVO;
    }
    return null;
  }

  /// 获取支付状态
  ///
  /// 获取支付状态
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] paymentId (required):
  ///   支付ID
  Future<Response> getPaymentStatusWithHttpInfo(
    String paymentId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/app/order/payment/{paymentId}/status'
        .replaceAll('{paymentId}', paymentId);

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

  /// 获取支付状态
  ///
  /// 获取支付状态
  ///
  /// Parameters:
  ///
  /// * [String] paymentId (required):
  ///   支付ID
  Future<PaymentVO?> getPaymentStatus(
    String paymentId,
  ) async {
    final response = await getPaymentStatusWithHttpInfo(
      paymentId,
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
        'PaymentVO',
      ) as PaymentVO;
    }
    return null;
  }

  /// 查询支付订单状态
  ///
  /// 查询支付订单状态
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PaymentQueryRequest] paymentQueryRequest (required):
  Future<Response> queryPaymentWithHttpInfo(
    PaymentQueryRequest paymentQueryRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/app/order/payment/query';

    // ignore: prefer_final_locals
    Object? postBody = paymentQueryRequest;

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

  /// 查询支付订单状态
  ///
  /// 查询支付订单状态
  ///
  /// Parameters:
  ///
  /// * [PaymentQueryRequest] paymentQueryRequest (required):
  Future<PaymentQueryResponse?> queryPayment(
    PaymentQueryRequest paymentQueryRequest,
  ) async {
    final response = await queryPaymentWithHttpInfo(
      paymentQueryRequest,
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
        'PaymentQueryResponse',
      ) as PaymentQueryResponse;
    }
    return null;
  }
}
