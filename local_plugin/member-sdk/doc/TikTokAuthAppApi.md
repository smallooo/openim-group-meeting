# toklink_member_sdk.api.TikTokAuthAppApi

## Load the API package
```dart
import 'package:toklink_member_sdk/api.dart';
```

All URIs are relative to *http://localhost:9999*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getTikTokAuthUrl**](TikTokAuthAppApi.md#gettiktokauthurl) | **POST** /app/auth/oauth2/tiktok/auth-url | 获取TikTok授权URL
[**tiktokCallback**](TikTokAuthAppApi.md#tiktokcallback) | **POST** /app/auth/oauth2/tiktok/callback | TikTok OAuth2回调
[**tiktokLogin**](TikTokAuthAppApi.md#tiktoklogin) | **POST** /app/auth/oauth2/tiktok/login | TikTok授权登录


# **getTikTokAuthUrl**
> ApiRespString getTikTokAuthUrl(tikTokAuthUrlCommand)

获取TikTok授权URL

获取TikTok OAuth2授权URL，用于跳转到TikTok进行授权

### Example
```dart
import 'package:toklink_member_sdk/api.dart';
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

final api_instance = TikTokAuthAppApi();
final tikTokAuthUrlCommand = TikTokAuthUrlCommand(); // TikTokAuthUrlCommand | 

try {
    final result = api_instance.getTikTokAuthUrl(tikTokAuthUrlCommand);
    print(result);
} catch (e) {
    print('Exception when calling TikTokAuthAppApi->getTikTokAuthUrl: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tikTokAuthUrlCommand** | [**TikTokAuthUrlCommand**](TikTokAuthUrlCommand.md)|  | 

### Return type

[**ApiRespString**](ApiRespString.md)

### Authorization

[X-Timestamp](../README.md#X-Timestamp), [Access-Token](../README.md#Access-Token), [X-Signature](../README.md#X-Signature), [X-Nonce](../README.md#X-Nonce)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tiktokCallback**
> ApiRespTikTokLoginResponse tiktokCallback(tikTokCallbackCommand)

TikTok OAuth2回调

TikTok OAuth2授权回调处理。登录成功返回AccessToken（7天有效）和RefreshToken（30天有效）

### Example
```dart
import 'package:toklink_member_sdk/api.dart';
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

final api_instance = TikTokAuthAppApi();
final tikTokCallbackCommand = TikTokCallbackCommand(); // TikTokCallbackCommand | 

try {
    final result = api_instance.tiktokCallback(tikTokCallbackCommand);
    print(result);
} catch (e) {
    print('Exception when calling TikTokAuthAppApi->tiktokCallback: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tikTokCallbackCommand** | [**TikTokCallbackCommand**](TikTokCallbackCommand.md)|  | 

### Return type

[**ApiRespTikTokLoginResponse**](ApiRespTikTokLoginResponse.md)

### Authorization

[X-Timestamp](../README.md#X-Timestamp), [Access-Token](../README.md#Access-Token), [X-Signature](../README.md#X-Signature), [X-Nonce](../README.md#X-Nonce)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tiktokLogin**
> ApiRespTikTokLoginResponse tiktokLogin(tikTokLoginCommand)

TikTok授权登录

使用TikTok授权码进行登录。登录成功返回AccessToken（7天有效）和RefreshToken（30天有效）

### Example
```dart
import 'package:toklink_member_sdk/api.dart';
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

final api_instance = TikTokAuthAppApi();
final tikTokLoginCommand = TikTokLoginCommand(); // TikTokLoginCommand | 

try {
    final result = api_instance.tiktokLogin(tikTokLoginCommand);
    print(result);
} catch (e) {
    print('Exception when calling TikTokAuthAppApi->tiktokLogin: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tikTokLoginCommand** | [**TikTokLoginCommand**](TikTokLoginCommand.md)|  | 

### Return type

[**ApiRespTikTokLoginResponse**](ApiRespTikTokLoginResponse.md)

### Authorization

[X-Timestamp](../README.md#X-Timestamp), [Access-Token](../README.md#Access-Token), [X-Signature](../README.md#X-Signature), [X-Nonce](../README.md#X-Nonce)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

