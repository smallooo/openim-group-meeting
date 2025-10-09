# toklink_strategy_sdk.api.StrategyCommentAppApi

## Load the API package
```dart
import 'package:toklink_strategy_sdk/api.dart';
```

All URIs are relative to *http://localhost:9997/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addStrategyComment**](StrategyCommentAppApi.md#addstrategycomment) | **POST** /strategies/{strategyId}/comment | 添加策略评论（交易员追加）
[**getStrategyComments**](StrategyCommentAppApi.md#getstrategycomments) | **GET** /strategies/{strategyId}/comments | 获取策略评论列表


# **addStrategyComment**
> ApiRespVoid addStrategyComment(strategyId, strategyCommentDTO)

添加策略评论（交易员追加）

### Example
```dart
import 'package:toklink_strategy_sdk/api.dart';
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

final api_instance = StrategyCommentAppApi();
final strategyId = 789; // int | 
final strategyCommentDTO = StrategyCommentDTO(); // StrategyCommentDTO | 

try {
    final result = api_instance.addStrategyComment(strategyId, strategyCommentDTO);
    print(result);
} catch (e) {
    print('Exception when calling StrategyCommentAppApi->addStrategyComment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **strategyId** | **int**|  | 
 **strategyCommentDTO** | [**StrategyCommentDTO**](StrategyCommentDTO.md)|  | 

### Return type

[**ApiRespVoid**](ApiRespVoid.md)

### Authorization

[X-Timestamp](../README.md#X-Timestamp), [Access-Token](../README.md#Access-Token), [X-Signature](../README.md#X-Signature), [X-Nonce](../README.md#X-Nonce)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStrategyComments**
> ApiRespIPageStrStrategyComment getStrategyComments(strategyId, queryDTO)

获取策略评论列表

### Example
```dart
import 'package:toklink_strategy_sdk/api.dart';
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

final api_instance = StrategyCommentAppApi();
final strategyId = 789; // int | 
final queryDTO = ; // StrategyCommentQueryDTO | 

try {
    final result = api_instance.getStrategyComments(strategyId, queryDTO);
    print(result);
} catch (e) {
    print('Exception when calling StrategyCommentAppApi->getStrategyComments: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **strategyId** | **int**|  | 
 **queryDTO** | [**StrategyCommentQueryDTO**](.md)|  | 

### Return type

[**ApiRespIPageStrStrategyComment**](ApiRespIPageStrStrategyComment.md)

### Authorization

[X-Timestamp](../README.md#X-Timestamp), [Access-Token](../README.md#Access-Token), [X-Signature](../README.md#X-Signature), [X-Nonce](../README.md#X-Nonce)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

