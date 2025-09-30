//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CAPIApi {
  CAPIApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// 修改我的支付密码
  ///
  /// 修改当前用户支付密码
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] oldPassword (required):
  ///   原支付密码
  ///
  /// * [String] newPassword (required):
  ///   新支付密码
  Future<Response> changeMyPaymentPasswordWithHttpInfo(String oldPassword, String newPassword,) async {
    // ignore: prefer_const_declarations
    final path = r'/wallet-password/change';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'oldPassword', oldPassword));
      queryParams.addAll(_queryParams('', 'newPassword', newPassword));

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

  /// 修改我的支付密码
  ///
  /// 修改当前用户支付密码
  ///
  /// Parameters:
  ///
  /// * [String] oldPassword (required):
  ///   原支付密码
  ///
  /// * [String] newPassword (required):
  ///   新支付密码
  Future<ApiRespVoid?> changeMyPaymentPassword(String oldPassword, String newPassword,) async {
    final response = await changeMyPaymentPasswordWithHttpInfo(oldPassword, newPassword,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ApiRespVoid',) as ApiRespVoid;
    
    }
    return null;
  }

  /// 创建红包
  ///
  /// 当前用户创建红包
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateRedPacketDTO] createRedPacketDTO (required):
  Future<Response> createRedPacketWithHttpInfo(CreateRedPacketDTO createRedPacketDTO,) async {
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
  Future<ApiRespString?> createRedPacket(CreateRedPacketDTO createRedPacketDTO,) async {
    final response = await createRedPacketWithHttpInfo(createRedPacketDTO,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ApiRespString',) as ApiRespString;
    
    }
    return null;
  }

  /// 查询我的指定币种余额
  ///
  /// 获取当前用户指定币种的余额信息
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] currencyId (required):
  ///   币种ID
  Future<Response> getMyBalanceWithHttpInfo(int currencyId,) async {
    // ignore: prefer_const_declarations
    final path = r'/wallet-fund/{currencyId}'
      .replaceAll('{currencyId}', currencyId.toString());

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

  /// 查询我的指定币种余额
  ///
  /// 获取当前用户指定币种的余额信息
  ///
  /// Parameters:
  ///
  /// * [int] currencyId (required):
  ///   币种ID
  Future<ApiRespBalance?> getMyBalance(int currencyId,) async {
    final response = await getMyBalanceWithHttpInfo(currencyId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ApiRespBalance',) as ApiRespBalance;
    
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
  /// * [BalanceQueryDTO] queryDTO (required):
  Future<Response> getMyBalanceListWithHttpInfo(BalanceQueryDTO queryDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/wallet-fund/list';

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

  /// 查询我的余额列表
  ///
  /// 获取当前用户的所有币种余额信息
  ///
  /// Parameters:
  ///
  /// * [BalanceQueryDTO] queryDTO (required):
  Future<ApiRespListBalance?> getMyBalanceList(BalanceQueryDTO queryDTO,) async {
    final response = await getMyBalanceListWithHttpInfo(queryDTO,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ApiRespListBalance',) as ApiRespListBalance;
    
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
      'GET',
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
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ApiRespListBalance',) as ApiRespListBalance;
    
    }
    return null;
  }

  /// 查询我的支付密码状态
  ///
  /// 查询当前用户支付密码设置状态
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getMyPaymentPasswordStatusWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/wallet-password/status';

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

  /// 查询我的支付密码状态
  ///
  /// 查询当前用户支付密码设置状态
  Future<ApiRespPaymentPasswordStatusVO?> getMyPaymentPasswordStatus() async {
    final response = await getMyPaymentPasswordStatusWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ApiRespPaymentPasswordStatusVO',) as ApiRespPaymentPasswordStatusVO;
    
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
  /// * [String] packetNo (required):
  ///   红包编号
  Future<Response> getRedPacketDetailWithHttpInfo(String packetNo,) async {
    // ignore: prefer_const_declarations
    final path = r'/wallet-red-packet/detail/{packetNo}'
      .replaceAll('{packetNo}', packetNo);

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

  /// 查询红包详情
  ///
  /// 根据红包编号查询红包详情
  ///
  /// Parameters:
  ///
  /// * [String] packetNo (required):
  ///   红包编号
  Future<ApiRespRedPacketVO?> getRedPacketDetail(String packetNo,) async {
    final response = await getRedPacketDetailWithHttpInfo(packetNo,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ApiRespRedPacketVO',) as ApiRespRedPacketVO;
    
    }
    return null;
  }

  /// 处理我的支付订单
  ///
  /// 处理当前用户的钱包支付订单
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PaymentProcessDTO] paymentProcessDTO (required):
  Future<Response> processMyPaymentWithHttpInfo(PaymentProcessDTO paymentProcessDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/wallet-payment/process';

    // ignore: prefer_final_locals
    Object? postBody = paymentProcessDTO;

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

  /// 处理我的支付订单
  ///
  /// 处理当前用户的钱包支付订单
  ///
  /// Parameters:
  ///
  /// * [PaymentProcessDTO] paymentProcessDTO (required):
  Future<ApiRespPaymentProcessResultVO?> processMyPayment(PaymentProcessDTO paymentProcessDTO,) async {
    final response = await processMyPaymentWithHttpInfo(paymentProcessDTO,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ApiRespPaymentProcessResultVO',) as ApiRespPaymentProcessResultVO;
    
    }
    return null;
  }

  /// 处理我的退款订单
  ///
  /// 处理当前用户的钱包退款订单
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RefundProcessDTO] refundProcessDTO (required):
  Future<Response> processMyRefundWithHttpInfo(RefundProcessDTO refundProcessDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/wallet-refund/process';

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
  Future<ApiRespRefundProcessResultVO?> processMyRefund(RefundProcessDTO refundProcessDTO,) async {
    final response = await processMyRefundWithHttpInfo(refundProcessDTO,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ApiRespRefundProcessResultVO',) as ApiRespRefundProcessResultVO;
    
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
  Future<Response> receiveRedPacketWithHttpInfo(ReceiveRedPacketDTO receiveRedPacketDTO,) async {
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
  Future<ApiRespReceiveRedPacketResultVO?> receiveRedPacket(ReceiveRedPacketDTO receiveRedPacketDTO,) async {
    final response = await receiveRedPacketWithHttpInfo(receiveRedPacketDTO,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ApiRespReceiveRedPacketResultVO',) as ApiRespReceiveRedPacketResultVO;
    
    }
    return null;
  }

  /// 设置我的支付密码
  ///
  /// 为当前用户设置支付密码
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] password (required):
  ///   支付密码
  Future<Response> setMyPaymentPasswordWithHttpInfo(String password,) async {
    // ignore: prefer_const_declarations
    final path = r'/wallet-password/set';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'password', password));

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

  /// 设置我的支付密码
  ///
  /// 为当前用户设置支付密码
  ///
  /// Parameters:
  ///
  /// * [String] password (required):
  ///   支付密码
  Future<ApiRespVoid?> setMyPaymentPassword(String password,) async {
    final response = await setMyPaymentPasswordWithHttpInfo(password,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ApiRespVoid',) as ApiRespVoid;
    
    }
    return null;
  }

  /// 验证我的支付密码
  ///
  /// 验证当前用户支付密码是否正确
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] password (required):
  ///   支付密码
  Future<Response> verifyMyPaymentPasswordWithHttpInfo(String password,) async {
    // ignore: prefer_const_declarations
    final path = r'/wallet-password/verify';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'password', password));

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

  /// 验证我的支付密码
  ///
  /// 验证当前用户支付密码是否正确
  ///
  /// Parameters:
  ///
  /// * [String] password (required):
  ///   支付密码
  Future<ApiRespVoid?> verifyMyPaymentPassword(String password,) async {
    final response = await verifyMyPaymentPasswordWithHttpInfo(password,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ApiRespVoid',) as ApiRespVoid;
    
    }
    return null;
  }

  /// 验证支付密码并支付
  ///
  /// 当前用户输入支付密码后验证并完成支付
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PaymentPasswordVerifyDTO] paymentPasswordVerifyDTO (required):
  Future<Response> verifyPasswordAndPayWithHttpInfo(PaymentPasswordVerifyDTO paymentPasswordVerifyDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/wallet-payment/verify';

    // ignore: prefer_final_locals
    Object? postBody = paymentPasswordVerifyDTO;

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

  /// 验证支付密码并支付
  ///
  /// 当前用户输入支付密码后验证并完成支付
  ///
  /// Parameters:
  ///
  /// * [PaymentPasswordVerifyDTO] paymentPasswordVerifyDTO (required):
  Future<ApiRespPaymentProcessResultVO?> verifyPasswordAndPay(PaymentPasswordVerifyDTO paymentPasswordVerifyDTO,) async {
    final response = await verifyPasswordAndPayWithHttpInfo(paymentPasswordVerifyDTO,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ApiRespPaymentProcessResultVO',) as ApiRespPaymentProcessResultVO;
    
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
  Future<Response> verifyPasswordAndRefundWithHttpInfo(RefundPasswordVerifyDTO refundPasswordVerifyDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/wallet-refund/verify';

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
  Future<ApiRespRefundProcessResultVO?> verifyPasswordAndRefund(RefundPasswordVerifyDTO refundPasswordVerifyDTO,) async {
    final response = await verifyPasswordAndRefundWithHttpInfo(refundPasswordVerifyDTO,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ApiRespRefundProcessResultVO',) as ApiRespRefundProcessResultVO;
    
    }
    return null;
  }
}
