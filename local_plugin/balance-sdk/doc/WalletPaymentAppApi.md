# toklink_balance_sdk.api.WalletPaymentAppApi

## Load the API package
```dart
import 'package:toklink_balance_sdk/api.dart';
```

All URIs are relative to *http://localhost:9998/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**processMyPayment**](WalletPaymentAppApi.md#processmypayment) | **POST** /wallet-payment/process | 处理我的支付订单
[**verifyPasswordAndPay**](WalletPaymentAppApi.md#verifypasswordandpay) | **POST** /wallet-payment/verify | 验证支付密码并支付


# **processMyPayment**
> ApiRespPaymentProcessResultVO processMyPayment(paymentProcessDTO)

处理我的支付订单

处理当前用户的钱包支付订单

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

final api_instance = WalletPaymentAppApi();
final paymentProcessDTO = PaymentProcessDTO(); // PaymentProcessDTO | 

try {
    final result = api_instance.processMyPayment(paymentProcessDTO);
    print(result);
} catch (e) {
    print('Exception when calling WalletPaymentAppApi->processMyPayment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paymentProcessDTO** | [**PaymentProcessDTO**](PaymentProcessDTO.md)|  | 

### Return type

[**ApiRespPaymentProcessResultVO**](ApiRespPaymentProcessResultVO.md)

### Authorization

[X-Timestamp](../README.md#X-Timestamp), [Access-Token](../README.md#Access-Token), [X-Signature](../README.md#X-Signature), [X-Nonce](../README.md#X-Nonce)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyPasswordAndPay**
> ApiRespPaymentProcessResultVO verifyPasswordAndPay(paymentPasswordVerifyDTO)

验证支付密码并支付

当前用户输入支付密码后验证并完成支付

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

final api_instance = WalletPaymentAppApi();
final paymentPasswordVerifyDTO = PaymentPasswordVerifyDTO(); // PaymentPasswordVerifyDTO | 

try {
    final result = api_instance.verifyPasswordAndPay(paymentPasswordVerifyDTO);
    print(result);
} catch (e) {
    print('Exception when calling WalletPaymentAppApi->verifyPasswordAndPay: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paymentPasswordVerifyDTO** | [**PaymentPasswordVerifyDTO**](PaymentPasswordVerifyDTO.md)|  | 

### Return type

[**ApiRespPaymentProcessResultVO**](ApiRespPaymentProcessResultVO.md)

### Authorization

[X-Timestamp](../README.md#X-Timestamp), [Access-Token](../README.md#Access-Token), [X-Signature](../README.md#X-Signature), [X-Nonce](../README.md#X-Nonce)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

