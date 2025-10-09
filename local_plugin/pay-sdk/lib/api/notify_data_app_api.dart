//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NotifyDataAppApi {
  NotifyDataAppApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// 获取通知详情
  ///
  /// 根据通知ID获取通知详情
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [NotifyDetailQueryDTO] notifyDetailQueryDTO (required):
  Future<Response> getNotifyDetailWithHttpInfo(
    NotifyDetailQueryDTO notifyDetailQueryDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/notify-data/detail';

    // ignore: prefer_final_locals
    Object? postBody = notifyDetailQueryDTO;

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

  /// 获取通知详情
  ///
  /// 根据通知ID获取通知详情
  ///
  /// Parameters:
  ///
  /// * [NotifyDetailQueryDTO] notifyDetailQueryDTO (required):
  Future<ApiRespNotifyDataResponse?> getNotifyDetail(
    NotifyDetailQueryDTO notifyDetailQueryDTO,
  ) async {
    final response = await getNotifyDetailWithHttpInfo(
      notifyDetailQueryDTO,
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
        'ApiRespNotifyDataResponse',
      ) as ApiRespNotifyDataResponse;
    }
    return null;
  }

  /// 获取通知日志
  ///
  /// 根据通知ID获取通知日志
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [NotifyLogsQueryDTO] notifyLogsQueryDTO (required):
  Future<Response> getNotifyLogsWithHttpInfo(
    NotifyLogsQueryDTO notifyLogsQueryDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/notify-data/logs';

    // ignore: prefer_final_locals
    Object? postBody = notifyLogsQueryDTO;

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

  /// 获取通知日志
  ///
  /// 根据通知ID获取通知日志
  ///
  /// Parameters:
  ///
  /// * [NotifyLogsQueryDTO] notifyLogsQueryDTO (required):
  Future<ApiRespListNotifyLogResponse?> getNotifyLogs(
    NotifyLogsQueryDTO notifyLogsQueryDTO,
  ) async {
    final response = await getNotifyLogsWithHttpInfo(
      notifyLogsQueryDTO,
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
        'ApiRespListNotifyLogResponse',
      ) as ApiRespListNotifyLogResponse;
    }
    return null;
  }

  /// 查询通知数据
  ///
  /// 根据条件查询通知数据
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [NotifyQueryDTO] notifyQueryDTO (required):
  Future<Response> queryNotifyDataWithHttpInfo(
    NotifyQueryDTO notifyQueryDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/notify-data/query';

    // ignore: prefer_final_locals
    Object? postBody = notifyQueryDTO;

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

  /// 查询通知数据
  ///
  /// 根据条件查询通知数据
  ///
  /// Parameters:
  ///
  /// * [NotifyQueryDTO] notifyQueryDTO (required):
  Future<ApiRespMapStringObject?> queryNotifyData(
    NotifyQueryDTO notifyQueryDTO,
  ) async {
    final response = await queryNotifyDataWithHttpInfo(
      notifyQueryDTO,
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

  /// 接收异步通知数据
  ///
  /// 接收并处理来自支付系统的异步通知数据
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [NotifyDataRequest] notifyDataRequest (required):
  Future<Response> receiveNotifyDataWithHttpInfo(
    NotifyDataRequest notifyDataRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/notify-data/receive';

    // ignore: prefer_final_locals
    Object? postBody = notifyDataRequest;

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

  /// 接收异步通知数据
  ///
  /// 接收并处理来自支付系统的异步通知数据
  ///
  /// Parameters:
  ///
  /// * [NotifyDataRequest] notifyDataRequest (required):
  Future<ApiRespString?> receiveNotifyData(
    NotifyDataRequest notifyDataRequest,
  ) async {
    final response = await receiveNotifyDataWithHttpInfo(
      notifyDataRequest,
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
        'ApiRespString',
      ) as ApiRespString;
    }
    return null;
  }

  /// 手动触发通知
  ///
  /// 手动触发指定订单的通知
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TriggerNotifyDTO] triggerNotifyDTO (required):
  Future<Response> triggerNotifyWithHttpInfo(
    TriggerNotifyDTO triggerNotifyDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/notify-data/trigger';

    // ignore: prefer_final_locals
    Object? postBody = triggerNotifyDTO;

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

  /// 手动触发通知
  ///
  /// 手动触发指定订单的通知
  ///
  /// Parameters:
  ///
  /// * [TriggerNotifyDTO] triggerNotifyDTO (required):
  Future<ApiRespString?> triggerNotify(
    TriggerNotifyDTO triggerNotifyDTO,
  ) async {
    final response = await triggerNotifyWithHttpInfo(
      triggerNotifyDTO,
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
        'ApiRespString',
      ) as ApiRespString;
    }
    return null;
  }
}
