# toklink_pay_sdk.api.PersonalPayOrderAppApi

## Load the API package
```dart
import 'package:toklink_pay_sdk/api.dart';
```

All URIs are relative to *http://localhost:9996/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getPersonalOrderByOrderNo**](PersonalPayOrderAppApi.md#getpersonalorderbyorderno) | **POST** /personal/pay-order/query/order-no | 根据订单系统订单号查询个人订单
[**getPersonalOrderByPaymentId**](PersonalPayOrderAppApi.md#getpersonalorderbypaymentid) | **POST** /personal/pay-order/query/payment-id | 根据支付系统订单号查询个人订单
[**getPersonalOrderStatistics**](PersonalPayOrderAppApi.md#getpersonalorderstatistics) | **POST** /personal/pay-order/statistics | 查询个人订单统计
[**getPersonalPayOrders**](PersonalPayOrderAppApi.md#getpersonalpayorders) | **POST** /personal/pay-order/list | 查询个人支付订单列表


# **getPersonalOrderByOrderNo**
> ApiRespChannelPayOrder getPersonalOrderByOrderNo(personalPayOrderOrderNoQueryDTO)

根据订单系统订单号查询个人订单

根据订单系统订单号查询当前用户的支付订单详情

### Example
```dart
import 'package:toklink_pay_sdk/api.dart';
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

final api_instance = PersonalPayOrderAppApi();
final personalPayOrderOrderNoQueryDTO = PersonalPayOrderOrderNoQueryDTO(); // PersonalPayOrderOrderNoQueryDTO | 

try {
    final result = api_instance.getPersonalOrderByOrderNo(personalPayOrderOrderNoQueryDTO);
    print(result);
} catch (e) {
    print('Exception when calling PersonalPayOrderAppApi->getPersonalOrderByOrderNo: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **personalPayOrderOrderNoQueryDTO** | [**PersonalPayOrderOrderNoQueryDTO**](PersonalPayOrderOrderNoQueryDTO.md)|  | 

### Return type

[**ApiRespChannelPayOrder**](ApiRespChannelPayOrder.md)

### Authorization

[X-Timestamp](../README.md#X-Timestamp), [Access-Token](../README.md#Access-Token), [X-Signature](../README.md#X-Signature), [X-Nonce](../README.md#X-Nonce)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPersonalOrderByPaymentId**
> ApiRespChannelPayOrder getPersonalOrderByPaymentId(personalPayOrderPaymentIdQueryDTO)

根据支付系统订单号查询个人订单

根据支付系统订单号查询当前用户的支付订单详情

### Example
```dart
import 'package:toklink_pay_sdk/api.dart';
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

final api_instance = PersonalPayOrderAppApi();
final personalPayOrderPaymentIdQueryDTO = PersonalPayOrderPaymentIdQueryDTO(); // PersonalPayOrderPaymentIdQueryDTO | 

try {
    final result = api_instance.getPersonalOrderByPaymentId(personalPayOrderPaymentIdQueryDTO);
    print(result);
} catch (e) {
    print('Exception when calling PersonalPayOrderAppApi->getPersonalOrderByPaymentId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **personalPayOrderPaymentIdQueryDTO** | [**PersonalPayOrderPaymentIdQueryDTO**](PersonalPayOrderPaymentIdQueryDTO.md)|  | 

### Return type

[**ApiRespChannelPayOrder**](ApiRespChannelPayOrder.md)

### Authorization

[X-Timestamp](../README.md#X-Timestamp), [Access-Token](../README.md#Access-Token), [X-Signature](../README.md#X-Signature), [X-Nonce](../README.md#X-Nonce)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPersonalOrderStatistics**
> ApiRespMapStringObject getPersonalOrderStatistics()

查询个人订单统计

查询当前用户的订单统计信息

### Example
```dart
import 'package:toklink_pay_sdk/api.dart';
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

final api_instance = PersonalPayOrderAppApi();

try {
    final result = api_instance.getPersonalOrderStatistics();
    print(result);
} catch (e) {
    print('Exception when calling PersonalPayOrderAppApi->getPersonalOrderStatistics: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApiRespMapStringObject**](ApiRespMapStringObject.md)

### Authorization

[X-Timestamp](../README.md#X-Timestamp), [Access-Token](../README.md#Access-Token), [X-Signature](../README.md#X-Signature), [X-Nonce](../README.md#X-Nonce)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPersonalPayOrders**
> ApiRespMapStringObject getPersonalPayOrders(personalPayOrderListQueryDTO)

查询个人支付订单列表

分页查询当前用户的支付订单列表

### Example
```dart
import 'package:toklink_pay_sdk/api.dart';
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

final api_instance = PersonalPayOrderAppApi();
final personalPayOrderListQueryDTO = PersonalPayOrderListQueryDTO(); // PersonalPayOrderListQueryDTO | 

try {
    final result = api_instance.getPersonalPayOrders(personalPayOrderListQueryDTO);
    print(result);
} catch (e) {
    print('Exception when calling PersonalPayOrderAppApi->getPersonalPayOrders: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **personalPayOrderListQueryDTO** | [**PersonalPayOrderListQueryDTO**](PersonalPayOrderListQueryDTO.md)|  | 

### Return type

[**ApiRespMapStringObject**](ApiRespMapStringObject.md)

### Authorization

[X-Timestamp](../README.md#X-Timestamp), [Access-Token](../README.md#Access-Token), [X-Signature](../README.md#X-Signature), [X-Nonce](../README.md#X-Nonce)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

