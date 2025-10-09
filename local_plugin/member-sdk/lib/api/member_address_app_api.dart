//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MemberAddressAppApi {
  MemberAddressAppApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// 删除收货地址
  ///
  /// 删除收货地址
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MemberAddressDeleteCommand] memberAddressDeleteCommand (required):
  Future<Response> deleteWithHttpInfo(
    MemberAddressDeleteCommand memberAddressDeleteCommand,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/address/delete';

    // ignore: prefer_final_locals
    Object? postBody = memberAddressDeleteCommand;

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

  /// 删除收货地址
  ///
  /// 删除收货地址
  ///
  /// Parameters:
  ///
  /// * [MemberAddressDeleteCommand] memberAddressDeleteCommand (required):
  Future<ApiRespVoid?> delete(
    MemberAddressDeleteCommand memberAddressDeleteCommand,
  ) async {
    final response = await deleteWithHttpInfo(
      memberAddressDeleteCommand,
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

  /// 查询当前用户的收货地址列表
  ///
  /// 查询当前用户的收货地址列表
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Response> listWithHttpInfo(
    Object body,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/address/list';

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// 查询当前用户的收货地址列表
  ///
  /// 查询当前用户的收货地址列表
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<ApiRespListMemberAddressResponse?> list(
    Object body,
  ) async {
    final response = await listWithHttpInfo(
      body,
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
        'ApiRespListMemberAddressResponse',
      ) as ApiRespListMemberAddressResponse;
    }
    return null;
  }

  /// 新增收货地址
  ///
  /// 新增收货地址
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MemberAddressSaveCommand] memberAddressSaveCommand (required):
  Future<Response> saveWithHttpInfo(
    MemberAddressSaveCommand memberAddressSaveCommand,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/address/save';

    // ignore: prefer_final_locals
    Object? postBody = memberAddressSaveCommand;

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

  /// 新增收货地址
  ///
  /// 新增收货地址
  ///
  /// Parameters:
  ///
  /// * [MemberAddressSaveCommand] memberAddressSaveCommand (required):
  Future<ApiRespVoid?> save(
    MemberAddressSaveCommand memberAddressSaveCommand,
  ) async {
    final response = await saveWithHttpInfo(
      memberAddressSaveCommand,
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

  /// 更新收货地址
  ///
  /// 更新收货地址
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MemberAddressUpdateCommand] memberAddressUpdateCommand (required):
  Future<Response> updateWithHttpInfo(
    MemberAddressUpdateCommand memberAddressUpdateCommand,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/address/update';

    // ignore: prefer_final_locals
    Object? postBody = memberAddressUpdateCommand;

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

  /// 更新收货地址
  ///
  /// 更新收货地址
  ///
  /// Parameters:
  ///
  /// * [MemberAddressUpdateCommand] memberAddressUpdateCommand (required):
  Future<ApiRespVoid?> update(
    MemberAddressUpdateCommand memberAddressUpdateCommand,
  ) async {
    final response = await updateWithHttpInfo(
      memberAddressUpdateCommand,
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
}
