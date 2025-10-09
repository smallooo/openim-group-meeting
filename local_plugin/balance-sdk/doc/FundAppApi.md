# toklink_balance_sdk.api.FundAppApi

## Load the API package
```dart
import 'package:toklink_balance_sdk/api.dart';
```

All URIs are relative to *http://localhost:9998/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getMyBalance**](FundAppApi.md#getmybalance) | **POST** /wallet-fund/currency | 查询我的指定币种余额
[**getMyBalanceList**](FundAppApi.md#getmybalancelist) | **POST** /wallet-fund/list | 查询我的余额列表
[**getMyBalanceSummary**](FundAppApi.md#getmybalancesummary) | **POST** /wallet-fund/summary | 获取我的余额总览


# **getMyBalance**
> ApiRespBalance getMyBalance(currencyBalanceQueryDTO)

查询我的指定币种余额

获取当前用户指定币种的余额信息

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

final api_instance = FundAppApi();
final currencyBalanceQueryDTO = CurrencyBalanceQueryDTO(); // CurrencyBalanceQueryDTO | 

try {
    final result = api_instance.getMyBalance(currencyBalanceQueryDTO);
    print(result);
} catch (e) {
    print('Exception when calling FundAppApi->getMyBalance: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currencyBalanceQueryDTO** | [**CurrencyBalanceQueryDTO**](CurrencyBalanceQueryDTO.md)|  | 

### Return type

[**ApiRespBalance**](ApiRespBalance.md)

### Authorization

[X-Timestamp](../README.md#X-Timestamp), [Access-Token](../README.md#Access-Token), [X-Signature](../README.md#X-Signature), [X-Nonce](../README.md#X-Nonce)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMyBalanceList**
> ApiRespListBalance getMyBalanceList(balanceQueryDTO)

查询我的余额列表

获取当前用户的所有币种余额信息

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

final api_instance = FundAppApi();
final balanceQueryDTO = BalanceQueryDTO(); // BalanceQueryDTO | 

try {
    final result = api_instance.getMyBalanceList(balanceQueryDTO);
    print(result);
} catch (e) {
    print('Exception when calling FundAppApi->getMyBalanceList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **balanceQueryDTO** | [**BalanceQueryDTO**](BalanceQueryDTO.md)|  | 

### Return type

[**ApiRespListBalance**](ApiRespListBalance.md)

### Authorization

[X-Timestamp](../README.md#X-Timestamp), [Access-Token](../README.md#Access-Token), [X-Signature](../README.md#X-Signature), [X-Nonce](../README.md#X-Nonce)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMyBalanceSummary**
> ApiRespListBalance getMyBalanceSummary()

获取我的余额总览

获取当前用户的余额概览信息

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

final api_instance = FundAppApi();

try {
    final result = api_instance.getMyBalanceSummary();
    print(result);
} catch (e) {
    print('Exception when calling FundAppApi->getMyBalanceSummary: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApiRespListBalance**](ApiRespListBalance.md)

### Authorization

[X-Timestamp](../README.md#X-Timestamp), [Access-Token](../README.md#Access-Token), [X-Signature](../README.md#X-Signature), [X-Nonce](../README.md#X-Nonce)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

