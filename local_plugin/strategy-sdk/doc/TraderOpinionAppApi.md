# toklink_strategy_sdk.api.TraderOpinionAppApi

## Load the API package
```dart
import 'package:toklink_strategy_sdk/api.dart';
```

All URIs are relative to *http://localhost:9997/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**countOpinionsByTraderId**](TraderOpinionAppApi.md#countopinionsbytraderid) | **GET** /trader-opinion/count/trader/{traderId} | 统计交易员观点数量
[**createOpinion**](TraderOpinionAppApi.md#createopinion) | **POST** /trader-opinion | 创建观点
[**deleteOpinion**](TraderOpinionAppApi.md#deleteopinion) | **DELETE** /trader-opinion/{opinionId} | 删除观点
[**getMyOpinions**](TraderOpinionAppApi.md#getmyopinions) | **GET** /trader-opinion/my-opinions | 我的观点列表
[**getOpinionsByTraderId**](TraderOpinionAppApi.md#getopinionsbytraderid) | **GET** /trader-opinion/trader/{traderId} | 根据交易员ID查询观点列表
[**likeOpinion**](TraderOpinionAppApi.md#likeopinion) | **POST** /trader-opinion/{opinionId}/like | 点赞观点
[**unlikeOpinion**](TraderOpinionAppApi.md#unlikeopinion) | **DELETE** /trader-opinion/{opinionId}/like | 取消点赞观点
[**updateOpinion**](TraderOpinionAppApi.md#updateopinion) | **PUT** /trader-opinion | 更新观点


# **countOpinionsByTraderId**
> ApiRespMapStringObject countOpinionsByTraderId(traderId, publishStatus)

统计交易员观点数量

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

final api_instance = TraderOpinionAppApi();
final traderId = 789; // int | 
final publishStatus = 56; // int | 

try {
    final result = api_instance.countOpinionsByTraderId(traderId, publishStatus);
    print(result);
} catch (e) {
    print('Exception when calling TraderOpinionAppApi->countOpinionsByTraderId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **traderId** | **int**|  | 
 **publishStatus** | **int**|  | [optional] [default to 1]

### Return type

[**ApiRespMapStringObject**](ApiRespMapStringObject.md)

### Authorization

[X-Timestamp](../README.md#X-Timestamp), [Access-Token](../README.md#Access-Token), [X-Signature](../README.md#X-Signature), [X-Nonce](../README.md#X-Nonce)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createOpinion**
> ApiRespMapStringObject createOpinion(traderOpinionCreateDTO)

创建观点

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

final api_instance = TraderOpinionAppApi();
final traderOpinionCreateDTO = TraderOpinionCreateDTO(); // TraderOpinionCreateDTO | 

try {
    final result = api_instance.createOpinion(traderOpinionCreateDTO);
    print(result);
} catch (e) {
    print('Exception when calling TraderOpinionAppApi->createOpinion: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **traderOpinionCreateDTO** | [**TraderOpinionCreateDTO**](TraderOpinionCreateDTO.md)|  | 

### Return type

[**ApiRespMapStringObject**](ApiRespMapStringObject.md)

### Authorization

[X-Timestamp](../README.md#X-Timestamp), [Access-Token](../README.md#Access-Token), [X-Signature](../README.md#X-Signature), [X-Nonce](../README.md#X-Nonce)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteOpinion**
> ApiRespMapStringObject deleteOpinion(opinionId)

删除观点

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

final api_instance = TraderOpinionAppApi();
final opinionId = 789; // int | 

try {
    final result = api_instance.deleteOpinion(opinionId);
    print(result);
} catch (e) {
    print('Exception when calling TraderOpinionAppApi->deleteOpinion: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **opinionId** | **int**|  | 

### Return type

[**ApiRespMapStringObject**](ApiRespMapStringObject.md)

### Authorization

[X-Timestamp](../README.md#X-Timestamp), [Access-Token](../README.md#Access-Token), [X-Signature](../README.md#X-Signature), [X-Nonce](../README.md#X-Nonce)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMyOpinions**
> ApiRespIPageTraderOpinionResponseDTO getMyOpinions(current, size, publishStatus)

我的观点列表

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

final api_instance = TraderOpinionAppApi();
final current = 56; // int | 
final size = 56; // int | 
final publishStatus = 56; // int | 

try {
    final result = api_instance.getMyOpinions(current, size, publishStatus);
    print(result);
} catch (e) {
    print('Exception when calling TraderOpinionAppApi->getMyOpinions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **current** | **int**|  | [optional] [default to 1]
 **size** | **int**|  | [optional] [default to 10]
 **publishStatus** | **int**|  | [optional] 

### Return type

[**ApiRespIPageTraderOpinionResponseDTO**](ApiRespIPageTraderOpinionResponseDTO.md)

### Authorization

[X-Timestamp](../README.md#X-Timestamp), [Access-Token](../README.md#Access-Token), [X-Signature](../README.md#X-Signature), [X-Nonce](../README.md#X-Nonce)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOpinionsByTraderId**
> ApiRespIPageTraderOpinionResponseDTO getOpinionsByTraderId(traderId, current, size)

根据交易员ID查询观点列表

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

final api_instance = TraderOpinionAppApi();
final traderId = 789; // int | 
final current = 56; // int | 
final size = 56; // int | 

try {
    final result = api_instance.getOpinionsByTraderId(traderId, current, size);
    print(result);
} catch (e) {
    print('Exception when calling TraderOpinionAppApi->getOpinionsByTraderId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **traderId** | **int**|  | 
 **current** | **int**|  | [optional] [default to 1]
 **size** | **int**|  | [optional] [default to 10]

### Return type

[**ApiRespIPageTraderOpinionResponseDTO**](ApiRespIPageTraderOpinionResponseDTO.md)

### Authorization

[X-Timestamp](../README.md#X-Timestamp), [Access-Token](../README.md#Access-Token), [X-Signature](../README.md#X-Signature), [X-Nonce](../README.md#X-Nonce)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **likeOpinion**
> ApiRespMapStringObject likeOpinion(opinionId)

点赞观点

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

final api_instance = TraderOpinionAppApi();
final opinionId = 789; // int | 

try {
    final result = api_instance.likeOpinion(opinionId);
    print(result);
} catch (e) {
    print('Exception when calling TraderOpinionAppApi->likeOpinion: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **opinionId** | **int**|  | 

### Return type

[**ApiRespMapStringObject**](ApiRespMapStringObject.md)

### Authorization

[X-Timestamp](../README.md#X-Timestamp), [Access-Token](../README.md#Access-Token), [X-Signature](../README.md#X-Signature), [X-Nonce](../README.md#X-Nonce)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unlikeOpinion**
> ApiRespMapStringObject unlikeOpinion(opinionId)

取消点赞观点

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

final api_instance = TraderOpinionAppApi();
final opinionId = 789; // int | 

try {
    final result = api_instance.unlikeOpinion(opinionId);
    print(result);
} catch (e) {
    print('Exception when calling TraderOpinionAppApi->unlikeOpinion: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **opinionId** | **int**|  | 

### Return type

[**ApiRespMapStringObject**](ApiRespMapStringObject.md)

### Authorization

[X-Timestamp](../README.md#X-Timestamp), [Access-Token](../README.md#Access-Token), [X-Signature](../README.md#X-Signature), [X-Nonce](../README.md#X-Nonce)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateOpinion**
> ApiRespMapStringObject updateOpinion(traderOpinionUpdateDTO)

更新观点

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

final api_instance = TraderOpinionAppApi();
final traderOpinionUpdateDTO = TraderOpinionUpdateDTO(); // TraderOpinionUpdateDTO | 

try {
    final result = api_instance.updateOpinion(traderOpinionUpdateDTO);
    print(result);
} catch (e) {
    print('Exception when calling TraderOpinionAppApi->updateOpinion: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **traderOpinionUpdateDTO** | [**TraderOpinionUpdateDTO**](TraderOpinionUpdateDTO.md)|  | 

### Return type

[**ApiRespMapStringObject**](ApiRespMapStringObject.md)

### Authorization

[X-Timestamp](../README.md#X-Timestamp), [Access-Token](../README.md#Access-Token), [X-Signature](../README.md#X-Signature), [X-Nonce](../README.md#X-Nonce)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

