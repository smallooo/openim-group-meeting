//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RedPacketAppApi {
  RedPacketAppApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// 创建红包
  ///
  /// 当前用户创建红包
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateRedPacketDTO] createRedPacketDTO (required):
  Future<Response> createRedPacketWithHttpInfo(
    CreateRedPacketDTO createRedPacketDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/wallet-red-packet/create';

    // ignore: prefer_final_locals
    Object? postBody = createRedPacketDTO;

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

  /// 创建红包
  ///
  /// 当前用户创建红包
  ///
  /// Parameters:
  ///
  /// * [CreateRedPacketDTO] createRedPacketDTO (required):
  Future<ApiRespString?> createRedPacket(
    CreateRedPacketDTO createRedPacketDTO,
  ) async {
    final response = await createRedPacketWithHttpInfo(
      createRedPacketDTO,
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

  /// 查询红包详情
  ///
  /// 根据红包编号查询红包详情
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RedPacketDetailQueryDTO] redPacketDetailQueryDTO (required):
  Future<Response> getRedPacketDetailWithHttpInfo(
    RedPacketDetailQueryDTO redPacketDetailQueryDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/wallet-red-packet/detail';

    // ignore: prefer_final_locals
    Object? postBody = redPacketDetailQueryDTO;

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

  /// 查询红包详情
  ///
  /// 根据红包编号查询红包详情
  ///
  /// Parameters:
  ///
  /// * [RedPacketDetailQueryDTO] redPacketDetailQueryDTO (required):
  Future<ApiRespRedPacketVO?> getRedPacketDetail(
    RedPacketDetailQueryDTO redPacketDetailQueryDTO,
  ) async {
    final response = await getRedPacketDetailWithHttpInfo(
      redPacketDetailQueryDTO,
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
        'ApiRespRedPacketVO',
      ) as ApiRespRedPacketVO;
    }
    return null;
  }

  /// 领取红包
  ///
  /// 当前用户领取红包
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ReceiveRedPacketDTO] receiveRedPacketDTO (required):
  Future<Response> receiveRedPacketWithHttpInfo(
    ReceiveRedPacketDTO receiveRedPacketDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/wallet-red-packet/receive';

    // ignore: prefer_final_locals
    Object? postBody = receiveRedPacketDTO;

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

  /// 领取红包
  ///
  /// 当前用户领取红包
  ///
  /// Parameters:
  ///
  /// * [ReceiveRedPacketDTO] receiveRedPacketDTO (required):
  Future<ApiRespReceiveRedPacketResultVO?> receiveRedPacket(
    ReceiveRedPacketDTO receiveRedPacketDTO,
  ) async {
    final response = await receiveRedPacketWithHttpInfo(
      receiveRedPacketDTO,
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
        'ApiRespReceiveRedPacketResultVO',
      ) as ApiRespReceiveRedPacketResultVO;
    }
    return null;
  }
}
