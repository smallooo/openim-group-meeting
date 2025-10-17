//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RefundAppApi {
  RefundAppApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// 申请退款
  ///
  /// 用户申请退款
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RefundApplyRequest] refundApplyRequest (required):
  Future<Response> applyRefundWithHttpInfo(
    RefundApplyRequest refundApplyRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/app/refund/apply';

    // ignore: prefer_final_locals
    Object? postBody = refundApplyRequest;

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
  /// 用户申请退款
  ///
  /// Parameters:
  ///
  /// * [RefundApplyRequest] refundApplyRequest (required):
  Future<RefundApplicationVO?> applyRefund(
    RefundApplyRequest refundApplyRequest,
  ) async {
    final response = await applyRefundWithHttpInfo(
      refundApplyRequest,
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
        'RefundApplicationVO',
      ) as RefundApplicationVO;
    }
    return null;
  }

  /// 审核退款申请
  ///
  /// 审核退款申请，支持通过和拒绝操作
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RefundApproveRequest] refundApproveRequest (required):
  Future<Response> approveRefundWithHttpInfo(
    RefundApproveRequest refundApproveRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/app/refund/approve';

    // ignore: prefer_final_locals
    Object? postBody = refundApproveRequest;

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

  /// 审核退款申请
  ///
  /// 审核退款申请，支持通过和拒绝操作
  ///
  /// Parameters:
  ///
  /// * [RefundApproveRequest] refundApproveRequest (required):
  Future<RefundApplicationVO?> approveRefund(
    RefundApproveRequest refundApproveRequest,
  ) async {
    final response = await approveRefundWithHttpInfo(
      refundApproveRequest,
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
        'RefundApplicationVO',
      ) as RefundApplicationVO;
    }
    return null;
  }

  /// 撤销退款申请
  ///
  /// 用户撤销退款申请
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] refundNo (required):
  ///   退款编号
  Future<Response> cancelRefundWithHttpInfo(
    String refundNo,
  ) async {
    // ignore: prefer_const_declarations
    final path =
        r'/app/refund/{refundNo}/cancel'.replaceAll('{refundNo}', refundNo);

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

  /// 撤销退款申请
  ///
  /// 用户撤销退款申请
  ///
  /// Parameters:
  ///
  /// * [String] refundNo (required):
  ///   退款编号
  Future<RefundCancelResultVO?> cancelRefund(
    String refundNo,
  ) async {
    final response = await cancelRefundWithHttpInfo(
      refundNo,
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
        'RefundCancelResultVO',
      ) as RefundCancelResultVO;
    }
    return null;
  }

  /// 确认退款
  ///
  /// 商家确认退款，调用支付系统退款接口
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RefundConfirmRequest] refundConfirmRequest (required):
  Future<Response> confirmRefundWithHttpInfo(
    RefundConfirmRequest refundConfirmRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/app/refund/confirm';

    // ignore: prefer_final_locals
    Object? postBody = refundConfirmRequest;

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

  /// 确认退款
  ///
  /// 商家确认退款，调用支付系统退款接口
  ///
  /// Parameters:
  ///
  /// * [RefundConfirmRequest] refundConfirmRequest (required):
  Future<RefundConfirmResultVO?> confirmRefund(
    RefundConfirmRequest refundConfirmRequest,
  ) async {
    final response = await confirmRefundWithHttpInfo(
      refundConfirmRequest,
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
        'RefundConfirmResultVO',
      ) as RefundConfirmResultVO;
    }
    return null;
  }

  /// 根据订单ID获取退款申请
  ///
  /// 根据订单ID获取退款申请详情
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  ///   订单ID
  Future<Response> getRefundByOrderIdWithHttpInfo(
    int orderId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/app/refund/order/{orderId}'
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

  /// 根据订单ID获取退款申请
  ///
  /// 根据订单ID获取退款申请详情
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  ///   订单ID
  Future<RefundApplicationVO?> getRefundByOrderId(
    int orderId,
  ) async {
    final response = await getRefundByOrderIdWithHttpInfo(
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
        'RefundApplicationVO',
      ) as RefundApplicationVO;
    }
    return null;
  }

  /// 获取退款申请详情
  ///
  /// 根据退款编号获取退款申请详情
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] refundNo (required):
  ///   退款编号
  Future<Response> getRefundDetailWithHttpInfo(
    String refundNo,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/app/refund/{refundNo}'.replaceAll('{refundNo}', refundNo);

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

  /// 获取退款申请详情
  ///
  /// 根据退款编号获取退款申请详情
  ///
  /// Parameters:
  ///
  /// * [String] refundNo (required):
  ///   退款编号
  Future<RefundApplicationVO?> getRefundDetail(
    String refundNo,
  ) async {
    final response = await getRefundDetailWithHttpInfo(
      refundNo,
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
        'RefundApplicationVO',
      ) as RefundApplicationVO;
    }
    return null;
  }

  /// 分页查询退款申请列表
  ///
  /// 分页查询用户的退款申请列表
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] status:
  ///   退款状态筛选
  ///
  /// * [String] refundType:
  ///   退款类型筛选
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
  Future<Response> getRefundListWithHttpInfo({
    String? status,
    String? refundType,
    DateTime? startTime,
    DateTime? endTime,
    int? current,
    int? size,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/app/refund/list';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }
    if (refundType != null) {
      queryParams.addAll(_queryParams('', 'refundType', refundType));
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

  /// 分页查询退款申请列表
  ///
  /// 分页查询用户的退款申请列表
  ///
  /// Parameters:
  ///
  /// * [String] status:
  ///   退款状态筛选
  ///
  /// * [String] refundType:
  ///   退款类型筛选
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
  Future<RefundPageVO?> getRefundList({
    String? status,
    String? refundType,
    DateTime? startTime,
    DateTime? endTime,
    int? current,
    int? size,
  }) async {
    final response = await getRefundListWithHttpInfo(
      status: status,
      refundType: refundType,
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
        'RefundPageVO',
      ) as RefundPageVO;
    }
    return null;
  }

  /// 查询退款订单状态
  ///
  /// 查询退款订单的当前状态
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RefundQueryRequest] refundQueryRequest (required):
  Future<Response> queryRefundWithHttpInfo(
    RefundQueryRequest refundQueryRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/app/refund/refund/query';

    // ignore: prefer_final_locals
    Object? postBody = refundQueryRequest;

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

  /// 查询退款订单状态
  ///
  /// 查询退款订单的当前状态
  ///
  /// Parameters:
  ///
  /// * [RefundQueryRequest] refundQueryRequest (required):
  Future<RefundQueryResponse?> queryRefund(
    RefundQueryRequest refundQueryRequest,
  ) async {
    final response = await queryRefundWithHttpInfo(
      refundQueryRequest,
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
        'RefundQueryResponse',
      ) as RefundQueryResponse;
    }
    return null;
  }
}
