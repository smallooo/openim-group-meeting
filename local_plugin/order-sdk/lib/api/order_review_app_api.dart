//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderReviewAppApi {
  OrderReviewAppApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// 创建订单评价
  ///
  /// 用户对已完成的订单进行评价
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [OrderReviewRequest] orderReviewRequest (required):
  Future<Response> createOrderReviewWithHttpInfo(
    OrderReviewRequest orderReviewRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/app/order-review/create';

    // ignore: prefer_final_locals
    Object? postBody = orderReviewRequest;

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

  /// 创建订单评价
  ///
  /// 用户对已完成的订单进行评价
  ///
  /// Parameters:
  ///
  /// * [OrderReviewRequest] orderReviewRequest (required):
  Future<OrderReviewVO?> createOrderReview(
    OrderReviewRequest orderReviewRequest,
  ) async {
    final response = await createOrderReviewWithHttpInfo(
      orderReviewRequest,
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
        'OrderReviewVO',
      ) as OrderReviewVO;
    }
    return null;
  }

  /// 根据订单ID获取评价
  ///
  /// 根据订单ID获取该订单的评价信息
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  ///   订单ID
  Future<Response> getOrderReviewByOrderIdWithHttpInfo(
    int orderId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/app/order-review/order/{orderId}'
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

  /// 根据订单ID获取评价
  ///
  /// 根据订单ID获取该订单的评价信息
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  ///   订单ID
  Future<OrderReviewVO?> getOrderReviewByOrderId(
    int orderId,
  ) async {
    final response = await getOrderReviewByOrderIdWithHttpInfo(
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
        'OrderReviewVO',
      ) as OrderReviewVO;
    }
    return null;
  }

  /// 获取订单评价详情
  ///
  /// 根据评价ID获取订单评价详情
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] reviewId (required):
  ///   评价ID
  Future<Response> getOrderReviewDetailWithHttpInfo(
    int reviewId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/app/order-review/{reviewId}'
        .replaceAll('{reviewId}', reviewId.toString());

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

  /// 获取订单评价详情
  ///
  /// 根据评价ID获取订单评价详情
  ///
  /// Parameters:
  ///
  /// * [int] reviewId (required):
  ///   评价ID
  Future<OrderReviewVO?> getOrderReviewDetail(
    int reviewId,
  ) async {
    final response = await getOrderReviewDetailWithHttpInfo(
      reviewId,
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
        'OrderReviewVO',
      ) as OrderReviewVO;
    }
    return null;
  }
}
