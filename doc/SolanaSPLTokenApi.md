# openapi.api.SolanaSPLTokenApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.blockchainapi.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**solanaGetSPLToken**](SolanaSPLTokenApi.md#solanagetspltoken) | **GET** /solana/spl-token/{network}/{public_key} | Get SPL token metadata


# **solanaGetSPLToken**
> GetSPLTokenResponse solanaGetSPLToken(publicKey, network)

Get SPL token metadata

<a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-spl-token/get-spl-token\" target=\"_blank\">See examples (Python, JavaScript)</a>.  Retrieves basic information about an SPL token given its `mint_address`.  You can see the mint addresses of popular SPL tokens <a href=\"https://raw.githubusercontent.com/solana-labs/token-list/main/src/tokens/solana.tokenlist.json\" target=\"_blank\">here</a>.  Some example mint addresses of SPL tokens: - USDC: EPjFWdd5AufqSSqeM2qN1xzybapC8G4wEGGkZwyTDt1v - Mango: MangoCzJ36AjZyKwVj3VnYU4GTonjfVEnJmvvWaxLac - Serum: SRMuApVNdxXokk5GT7XD5cUUgXMBCoAz2LHeuAoKWRt - Raydium: 4k3Dyjzvzp8eMZWUXbBCjEvwSkkk59S5iCNLY3QrkX6R - wSOL: So11111111111111111111111111111111111111112 - ATLAS: ATLASXmbPQxBUYbxPsV97usA3fPQYEqzQBUHgiFCUsXx  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)

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

final api_instance = SolanaSPLTokenApi();
final publicKey = MangoCzJ36AjZyKwVj3VnYU4GTonjfVEnJmvvWaxLac; // String | The public key of the token
final network = mainnet-beta; // String | The network ID (devnet, mainnet-beta)

try {
    final result = api_instance.solanaGetSPLToken(publicKey, network);
    print(result);
} catch (e) {
    print('Exception when calling SolanaSPLTokenApi->solanaGetSPLToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **publicKey** | **String**| The public key of the token | 
 **network** | **String**| The network ID (devnet, mainnet-beta) | 

### Return type

[**GetSPLTokenResponse**](GetSPLTokenResponse.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

