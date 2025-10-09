# toklink_balance_sdk.api.RedPacketAppApi

## Load the API package
```dart
import 'package:toklink_balance_sdk/api.dart';
```

All URIs are relative to *http://localhost:9998/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createRedPacket**](RedPacketAppApi.md#createredpacket) | **POST** /wallet-red-packet/create | 创建红包
[**getRedPacketDetail**](RedPacketAppApi.md#getredpacketdetail) | **POST** /wallet-red-packet/detail | 查询红包详情
[**receiveRedPacket**](RedPacketAppApi.md#receiveredpacket) | **POST** /wallet-red-packet/receive | 领取红包


# **createRedPacket**
> ApiRespString createRedPacket(createRedPacketDTO)

创建红包

当前用户创建红包

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

final api_instance = RedPacketAppApi();
final createRedPacketDTO = CreateRedPacketDTO(); // CreateRedPacketDTO | 

try {
    final result = api_instance.createRedPacket(createRedPacketDTO);
    print(result);
} catch (e) {
    print('Exception when calling RedPacketAppApi->createRedPacket: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createRedPacketDTO** | [**CreateRedPacketDTO**](CreateRedPacketDTO.md)|  | 

### Return type

[**ApiRespString**](ApiRespString.md)

### Authorization

[X-Timestamp](../README.md#X-Timestamp), [Access-Token](../README.md#Access-Token), [X-Signature](../README.md#X-Signature), [X-Nonce](../README.md#X-Nonce)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRedPacketDetail**
> ApiRespRedPacketVO getRedPacketDetail(redPacketDetailQueryDTO)

查询红包详情

根据红包编号查询红包详情

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

final api_instance = RedPacketAppApi();
final redPacketDetailQueryDTO = RedPacketDetailQueryDTO(); // RedPacketDetailQueryDTO | 

try {
    final result = api_instance.getRedPacketDetail(redPacketDetailQueryDTO);
    print(result);
} catch (e) {
    print('Exception when calling RedPacketAppApi->getRedPacketDetail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **redPacketDetailQueryDTO** | [**RedPacketDetailQueryDTO**](RedPacketDetailQueryDTO.md)|  | 

### Return type

[**ApiRespRedPacketVO**](ApiRespRedPacketVO.md)

### Authorization

[X-Timestamp](../README.md#X-Timestamp), [Access-Token](../README.md#Access-Token), [X-Signature](../README.md#X-Signature), [X-Nonce](../README.md#X-Nonce)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **receiveRedPacket**
> ApiRespReceiveRedPacketResultVO receiveRedPacket(receiveRedPacketDTO)

领取红包

当前用户领取红包

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

final api_instance = RedPacketAppApi();
final receiveRedPacketDTO = ReceiveRedPacketDTO(); // ReceiveRedPacketDTO | 

try {
    final result = api_instance.receiveRedPacket(receiveRedPacketDTO);
    print(result);
} catch (e) {
    print('Exception when calling RedPacketAppApi->receiveRedPacket: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **receiveRedPacketDTO** | [**ReceiveRedPacketDTO**](ReceiveRedPacketDTO.md)|  | 

### Return type

[**ApiRespReceiveRedPacketResultVO**](ApiRespReceiveRedPacketResultVO.md)

### Authorization

[X-Timestamp](../README.md#X-Timestamp), [Access-Token](../README.md#Access-Token), [X-Signature](../README.md#X-Signature), [X-Nonce](../README.md#X-Nonce)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

