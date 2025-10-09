# toklink_member_sdk.api.SmsLoginAppApi

## Load the API package
```dart
import 'package:toklink_member_sdk/api.dart';
```

All URIs are relative to *http://localhost:9999/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sendSmsCaptcha**](SmsLoginAppApi.md#sendsmscaptcha) | **POST** /login/sms-captcha | 获取短信验证码
[**smsLogin**](SmsLoginAppApi.md#smslogin) | **POST** /login/sms | 短信验证码登录


# **sendSmsCaptcha**
> ApiRespString sendSmsCaptcha(sendSmsCaptchaCommand)

获取短信验证码

获取一个短信验证码

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

final api_instance = SmsLoginAppApi();
final sendSmsCaptchaCommand = SendSmsCaptchaCommand(); // SendSmsCaptchaCommand | 

try {
    final result = api_instance.sendSmsCaptcha(sendSmsCaptchaCommand);
    print(result);
} catch (e) {
    print('Exception when calling SmsLoginAppApi->sendSmsCaptcha: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sendSmsCaptchaCommand** | [**SendSmsCaptchaCommand**](SendSmsCaptchaCommand.md)|  | 

### Return type

[**ApiRespString**](ApiRespString.md)

### Authorization

[X-Timestamp](../README.md#X-Timestamp), [Access-Token](../README.md#Access-Token), [X-Signature](../README.md#X-Signature), [X-Nonce](../README.md#X-Nonce)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **smsLogin**
> ApiRespString smsLogin(smsLoginCommand)

短信验证码登录

短信验证码登录。登录成功返回AccessToken（7天有效）和RefreshToken（30天有效）

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

final api_instance = SmsLoginAppApi();
final smsLoginCommand = SmsLoginCommand(); // SmsLoginCommand | 

try {
    final result = api_instance.smsLogin(smsLoginCommand);
    print(result);
} catch (e) {
    print('Exception when calling SmsLoginAppApi->smsLogin: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **smsLoginCommand** | [**SmsLoginCommand**](SmsLoginCommand.md)|  | 

### Return type

[**ApiRespString**](ApiRespString.md)

### Authorization

[X-Timestamp](../README.md#X-Timestamp), [Access-Token](../README.md#Access-Token), [X-Signature](../README.md#X-Signature), [X-Nonce](../README.md#X-Nonce)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

