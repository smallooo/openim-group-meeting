# toklink_balance_sdk.api.WalletRefundAppApi

## Load the API package
```dart
import 'package:toklink_balance_sdk/api.dart';
```

All URIs are relative to *http://localhost:9998*

Method | HTTP request | Description
------------- | ------------- | -------------
[**processMyRefund**](WalletRefundAppApi.md#processmyrefund) | **POST** /app/wallet-refund/process | 处理我的退款订单
[**verifyPasswordAndRefund**](WalletRefundAppApi.md#verifypasswordandrefund) | **POST** /app/wallet-refund/verify | 验证支付密码并退款


# **processMyRefund**
> ApiRespRefundProcessResultVO processMyRefund(refundProcessDTO)

处理我的退款订单

处理当前用户的钱包退款订单

### Example
```dart
import 'package:toklink_balance_sdk/api.dart';
// TODO Configure API key authorization: X-Timestamp
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-Timestamp').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-Timestamp').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: Access-Token
//defaultApiClient.getAuthentication<ApiKeyAuth>('Access-Token').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Access-Token').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: X-Signature
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-Signature').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-Signature').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: X-Nonce
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-Nonce').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-Nonce').apiKeyPrefix = 'Bearer';

final api_instance = WalletRefundAppApi();
final refundProcessDTO = RefundProcessDTO(); // RefundProcessDTO | 

try {
    final result = api_instance.processMyRefund(refundProcessDTO);
    print(result);
} catch (e) {
    print('Exception when calling WalletRefundAppApi->processMyRefund: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **refundProcessDTO** | [**RefundProcessDTO**](RefundProcessDTO.md)|  | 

### Return type

[**ApiRespRefundProcessResultVO**](ApiRespRefundProcessResultVO.md)

### Authorization

[X-Timestamp](../README.md#X-Timestamp), [Access-Token](../README.md#Access-Token), [X-Signature](../README.md#X-Signature), [X-Nonce](../README.md#X-Nonce)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyPasswordAndRefund**
> ApiRespRefundProcessResultVO verifyPasswordAndRefund(refundPasswordVerifyDTO)

验证支付密码并退款

当前用户输入支付密码后验证并完成退款

### Example
```dart
import 'package:toklink_balance_sdk/api.dart';
// TODO Configure API key authorization: X-Timestamp
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-Timestamp').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-Timestamp').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: Access-Token
//defaultApiClient.getAuthentication<ApiKeyAuth>('Access-Token').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Access-Token').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: X-Signature
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-Signature').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-Signature').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: X-Nonce
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-Nonce').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-Nonce').apiKeyPrefix = 'Bearer';

final api_instance = WalletRefundAppApi();
final refundPasswordVerifyDTO = RefundPasswordVerifyDTO(); // RefundPasswordVerifyDTO | 

try {
    final result = api_instance.verifyPasswordAndRefund(refundPasswordVerifyDTO);
    print(result);
} catch (e) {
    print('Exception when calling WalletRefundAppApi->verifyPasswordAndRefund: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **refundPasswordVerifyDTO** | [**RefundPasswordVerifyDTO**](RefundPasswordVerifyDTO.md)|  | 

### Return type

[**ApiRespRefundProcessResultVO**](ApiRespRefundProcessResultVO.md)

### Authorization

[X-Timestamp](../README.md#X-Timestamp), [Access-Token](../README.md#Access-Token), [X-Signature](../README.md#X-Signature), [X-Nonce](../README.md#X-Nonce)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

