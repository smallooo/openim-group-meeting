# toklink_pay_sdk.api.NotifyDataAppApi

## Load the API package
```dart
import 'package:toklink_pay_sdk/api.dart';
```

All URIs are relative to *http://localhost:9996/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getNotifyDetail**](NotifyDataAppApi.md#getnotifydetail) | **POST** /notify-data/detail | 获取通知详情
[**getNotifyLogs**](NotifyDataAppApi.md#getnotifylogs) | **POST** /notify-data/logs | 获取通知日志
[**queryNotifyData**](NotifyDataAppApi.md#querynotifydata) | **POST** /notify-data/query | 查询通知数据
[**receiveNotifyData**](NotifyDataAppApi.md#receivenotifydata) | **POST** /notify-data/receive | 接收异步通知数据
[**triggerNotify**](NotifyDataAppApi.md#triggernotify) | **POST** /notify-data/trigger | 手动触发通知


# **getNotifyDetail**
> ApiRespNotifyDataResponse getNotifyDetail(notifyDetailQueryDTO)

获取通知详情

根据通知ID获取通知详情

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

final api_instance = NotifyDataAppApi();
final notifyDetailQueryDTO = NotifyDetailQueryDTO(); // NotifyDetailQueryDTO | 

try {
    final result = api_instance.getNotifyDetail(notifyDetailQueryDTO);
    print(result);
} catch (e) {
    print('Exception when calling NotifyDataAppApi->getNotifyDetail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **notifyDetailQueryDTO** | [**NotifyDetailQueryDTO**](NotifyDetailQueryDTO.md)|  | 

### Return type

[**ApiRespNotifyDataResponse**](ApiRespNotifyDataResponse.md)

### Authorization

[X-Timestamp](../README.md#X-Timestamp), [Access-Token](../README.md#Access-Token), [X-Signature](../README.md#X-Signature), [X-Nonce](../README.md#X-Nonce)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNotifyLogs**
> ApiRespListNotifyLogResponse getNotifyLogs(notifyLogsQueryDTO)

获取通知日志

根据通知ID获取通知日志

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

final api_instance = NotifyDataAppApi();
final notifyLogsQueryDTO = NotifyLogsQueryDTO(); // NotifyLogsQueryDTO | 

try {
    final result = api_instance.getNotifyLogs(notifyLogsQueryDTO);
    print(result);
} catch (e) {
    print('Exception when calling NotifyDataAppApi->getNotifyLogs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **notifyLogsQueryDTO** | [**NotifyLogsQueryDTO**](NotifyLogsQueryDTO.md)|  | 

### Return type

[**ApiRespListNotifyLogResponse**](ApiRespListNotifyLogResponse.md)

### Authorization

[X-Timestamp](../README.md#X-Timestamp), [Access-Token](../README.md#Access-Token), [X-Signature](../README.md#X-Signature), [X-Nonce](../README.md#X-Nonce)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryNotifyData**
> ApiRespMapStringObject queryNotifyData(notifyQueryDTO)

查询通知数据

根据条件查询通知数据

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

final api_instance = NotifyDataAppApi();
final notifyQueryDTO = NotifyQueryDTO(); // NotifyQueryDTO | 

try {
    final result = api_instance.queryNotifyData(notifyQueryDTO);
    print(result);
} catch (e) {
    print('Exception when calling NotifyDataAppApi->queryNotifyData: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **notifyQueryDTO** | [**NotifyQueryDTO**](NotifyQueryDTO.md)|  | 

### Return type

[**ApiRespMapStringObject**](ApiRespMapStringObject.md)

### Authorization

[X-Timestamp](../README.md#X-Timestamp), [Access-Token](../README.md#Access-Token), [X-Signature](../README.md#X-Signature), [X-Nonce](../README.md#X-Nonce)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **receiveNotifyData**
> ApiRespString receiveNotifyData(notifyDataRequest)

接收异步通知数据

接收并处理来自支付系统的异步通知数据

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

final api_instance = NotifyDataAppApi();
final notifyDataRequest = NotifyDataRequest(); // NotifyDataRequest | 

try {
    final result = api_instance.receiveNotifyData(notifyDataRequest);
    print(result);
} catch (e) {
    print('Exception when calling NotifyDataAppApi->receiveNotifyData: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **notifyDataRequest** | [**NotifyDataRequest**](NotifyDataRequest.md)|  | 

### Return type

[**ApiRespString**](ApiRespString.md)

### Authorization

[X-Timestamp](../README.md#X-Timestamp), [Access-Token](../README.md#Access-Token), [X-Signature](../README.md#X-Signature), [X-Nonce](../README.md#X-Nonce)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **triggerNotify**
> ApiRespString triggerNotify(triggerNotifyDTO)

手动触发通知

手动触发指定订单的通知

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

final api_instance = NotifyDataAppApi();
final triggerNotifyDTO = TriggerNotifyDTO(); // TriggerNotifyDTO | 

try {
    final result = api_instance.triggerNotify(triggerNotifyDTO);
    print(result);
} catch (e) {
    print('Exception when calling NotifyDataAppApi->triggerNotify: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **triggerNotifyDTO** | [**TriggerNotifyDTO**](TriggerNotifyDTO.md)|  | 

### Return type

[**ApiRespString**](ApiRespString.md)

### Authorization

[X-Timestamp](../README.md#X-Timestamp), [Access-Token](../README.md#Access-Token), [X-Signature](../README.md#X-Signature), [X-Nonce](../README.md#X-Nonce)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

