# openapi.api.SolanaAccountApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.blockchainapi.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**solanaGetAccount**](SolanaAccountApi.md#solanagetaccount) | **GET** /solana/account/{network}/{public_key} | Get the details of an account on Solana
[**solanaGetAccountIsCandyMachine**](SolanaAccountApi.md#solanagetaccountiscandymachine) | **GET** /solana/account/{network}/{public_key}/is_candy_machine | Get if account is candy machine
[**solanaGetAccountIsNFT**](SolanaAccountApi.md#solanagetaccountisnft) | **GET** /solana/account/{network}/{public_key}/is_nft | Get if account is NFT


# **solanaGetAccount**
> Account solanaGetAccount(network, publicKey)

Get the details of an account on Solana

<a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-account/get-account\" target=\"_blank\">See examples (Python, JavaScript)</a>.      Get the details of an account on Solana. Learn more about accounts <a href=\"https://docs.solana.com/developing/programming-model/accounts\" target=\"_blank\">here</a>.  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKeyID
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKeyID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKeyID').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: APISecretKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APISecretKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APISecretKey').apiKeyPrefix = 'Bearer';

final api_instance = SolanaAccountApi();
final network = mainnet-beta; // String | The network ID (devnet, mainnet-beta)
final publicKey = EEr5yQpNXf7Bru6Rt5podx56HGW9CEehXqgRGh2wa71w; // String | The public key of the account

try {
    final result = api_instance.solanaGetAccount(network, publicKey);
    print(result);
} catch (e) {
    print('Exception when calling SolanaAccountApi->solanaGetAccount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **network** | **String**| The network ID (devnet, mainnet-beta) | 
 **publicKey** | **String**| The public key of the account | 

### Return type

[**Account**](Account.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **solanaGetAccountIsCandyMachine**
> AccountIsCandyMachine solanaGetAccountIsCandyMachine(network, publicKey)

Get if account is candy machine

<a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-account/get-is-candy-machine\" target=\"_blank\">See examples (Python, JavaScript)</a>.      Determine whether or not a public key address corresponds to a candy machine ID or candy machine configuration.  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKeyID
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKeyID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKeyID').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: APISecretKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APISecretKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APISecretKey').apiKeyPrefix = 'Bearer';

final api_instance = SolanaAccountApi();
final network = mainnet-beta; // String | The network ID (devnet, mainnet-beta)
final publicKey = EEr5yQpNXf7Bru6Rt5podx56HGW9CEehXqgRGh2wa71w; // String | The public key of the account

try {
    final result = api_instance.solanaGetAccountIsCandyMachine(network, publicKey);
    print(result);
} catch (e) {
    print('Exception when calling SolanaAccountApi->solanaGetAccountIsCandyMachine: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **network** | **String**| The network ID (devnet, mainnet-beta) | 
 **publicKey** | **String**| The public key of the account | 

### Return type

[**AccountIsCandyMachine**](AccountIsCandyMachine.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **solanaGetAccountIsNFT**
> AccountIsNFT solanaGetAccountIsNFT(network, publicKey)

Get if account is NFT

<a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-account/get-is-nft\" target=\"_blank\">See examples (Python, JavaScript)</a>.      Determine whether or not a public key is an NFT `mint address`  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKeyID
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKeyID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKeyID').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: APISecretKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APISecretKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APISecretKey').apiKeyPrefix = 'Bearer';

final api_instance = SolanaAccountApi();
final network = mainnet-beta; // String | The network ID (devnet, mainnet-beta)
final publicKey = EEr5yQpNXf7Bru6Rt5podx56HGW9CEehXqgRGh2wa71w; // String | The public key of the account

try {
    final result = api_instance.solanaGetAccountIsNFT(network, publicKey);
    print(result);
} catch (e) {
    print('Exception when calling SolanaAccountApi->solanaGetAccountIsNFT: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **network** | **String**| The network ID (devnet, mainnet-beta) | 
 **publicKey** | **String**| The public key of the account | 

### Return type

[**AccountIsNFT**](AccountIsNFT.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

