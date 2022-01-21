# openapi.api.SolanaCandyMachineApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.blockchainapi.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**solanaCreateTestCandyMachine**](SolanaCandyMachineApi.md#solanacreatetestcandymachine) | **POST** /solana/nft/candy_machine | Create a test CM
[**solanaGetAllNFTsFromCandyMachine**](SolanaCandyMachineApi.md#solanagetallnftsfromcandymachine) | **GET** /solana/nft/candy_machine/{network}/{candy_machine_id}/nfts | Get CM's NFTs  
[**solanaGetCandyMachineMetadata**](SolanaCandyMachineApi.md#solanagetcandymachinemetadata) | **POST** /solana/nft/candy_machine/metadata | Get a CM's metadata 
[**solanaListAllCandyMachines**](SolanaCandyMachineApi.md#solanalistallcandymachines) | **GET** /solana/nft/candy_machine/list | List all CMs
[**solanaMintFromCandyMachine**](SolanaCandyMachineApi.md#solanamintfromcandymachine) | **POST** /solana/nft/candy_machine/mint | Mint from a CM
[**solanaSearchCandyMachines**](SolanaCandyMachineApi.md#solanasearchcandymachines) | **POST** /solana/nft/candy_machine/search | Search CMs


# **solanaCreateTestCandyMachine**
> CreateTestCandyMachineResponse solanaCreateTestCandyMachine(createTestCandyMachineRequest)

Create a test CM

<a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-candy-machine/create-test-candy-machine\" target=\"_blank\">See examples (Python, JavaScript)</a>.   Use this endpoint to create a test candy machine so that you can test your minting bot.  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)

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

final api_instance = SolanaCandyMachineApi();
final createTestCandyMachineRequest = CreateTestCandyMachineRequest(); // CreateTestCandyMachineRequest | 

try {
    final result = api_instance.solanaCreateTestCandyMachine(createTestCandyMachineRequest);
    print(result);
} catch (e) {
    print('Exception when calling SolanaCandyMachineApi->solanaCreateTestCandyMachine: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createTestCandyMachineRequest** | [**CreateTestCandyMachineRequest**](CreateTestCandyMachineRequest.md)|  | [optional] 

### Return type

[**CreateTestCandyMachineResponse**](CreateTestCandyMachineResponse.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **solanaGetAllNFTsFromCandyMachine**
> GetAllNFTsResponse solanaGetAllNFTsFromCandyMachine(network, candyMachineId)

Get CM's NFTs  

<a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-candy-machine/get-candy-machine-all-nfts\" target=\"_blank\"> See examples (Python, JavaScript)</a>.  Use this endpoint to get the list of all NFTs (minted and unminted) from a Solana Candy Machine.  This works for `v1` and `v2` candy machines.   *However*, for `v2` only the value for `all_nfts` is provided. To determine which are minted and unminted follow this example.  You do not need to specify `v1` or `v2` for this endpoint as it will automatically determine it from the candy machine ID.  See example for how to get the list of NFT hashes <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-candy-machine/get-candy-machine-hash-table\" target=\"_blank\">here</a>.    `Cost: 2 Credits` (<a href=\"#section/Pricing\">See Pricing</a>)

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

final api_instance = SolanaCandyMachineApi();
final network = mainnet-beta; // String | The network ID
final candyMachineId = FmkrvXRenCGtwBHw3VtBcExp8eTdnau97upaewF4GUEX; // String | The ID of the candy machine

try {
    final result = api_instance.solanaGetAllNFTsFromCandyMachine(network, candyMachineId);
    print(result);
} catch (e) {
    print('Exception when calling SolanaCandyMachineApi->solanaGetAllNFTsFromCandyMachine: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **network** | **String**| The network ID | 
 **candyMachineId** | **String**| The ID of the candy machine | 

### Return type

[**GetAllNFTsResponse**](GetAllNFTsResponse.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **solanaGetCandyMachineMetadata**
> GetCandyMetadataResponse solanaGetCandyMachineMetadata(getCandyMetadataRequest)

Get a CM's metadata 

<a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-candy-machine/get-candy-machine-metadata\" target=\"_blank\">See examples (Python, JavaScript)</a>.  Use this endpoint to get metadata about a Metaplex candy machine. This includes the goLiveDate, itemsAvailable, and itemsRedeemed. To see what is included, expand the green successful response below.  NOTE: Supply exactly one of `candy_machine_id`, `config_address`, or `uuid`. If you provide more than one, you will receive a `400` error.   `Cost: 2 Credits` (<a href=\"#section/Pricing\">See Pricing</a>)

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

final api_instance = SolanaCandyMachineApi();
final getCandyMetadataRequest = GetCandyMetadataRequest(); // GetCandyMetadataRequest | 

try {
    final result = api_instance.solanaGetCandyMachineMetadata(getCandyMetadataRequest);
    print(result);
} catch (e) {
    print('Exception when calling SolanaCandyMachineApi->solanaGetCandyMachineMetadata: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **getCandyMetadataRequest** | [**GetCandyMetadataRequest**](GetCandyMetadataRequest.md)|  | [optional] 

### Return type

[**GetCandyMetadataResponse**](GetCandyMetadataResponse.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **solanaListAllCandyMachines**
> Object solanaListAllCandyMachines()

List all CMs

<a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-candy-machine/list-all-candy-machines\" target=\"_blank\">See examples (Python, JavaScript)</a>.  With this endpoint, you can list all candy machines published to Solana mainnet.  We update this data every 15 minutes.  The output is a list of config addresses, currently about 17000 in length.  `Cost: 2 Credits` (<a href=\"#section/Pricing\">See Pricing</a>)

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

final api_instance = SolanaCandyMachineApi();

try {
    final result = api_instance.solanaListAllCandyMachines();
    print(result);
} catch (e) {
    print('Exception when calling SolanaCandyMachineApi->solanaListAllCandyMachines: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Object**](Object.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **solanaMintFromCandyMachine**
> MintNFTResponse solanaMintFromCandyMachine(mintNFTRequest)

Mint from a CM

<a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-candy-machine/mint-from-candy-machine\" target=\"_blank\">See examples (Python, JavaScript)</a>.  Use this endpoint to mint an NFT from a metaplex candy machine as soon as it drops.  This only works for `v1` and `v2` candy machines, and does not work for candy machines of any other type such as Magic Eden candy machines.  In order to achieve speed, this endpoint sends the transaction without checking whether or not it confirmed. It could still fail, for example, because the candy machine ran out of available mints. You should check the status of the transaction using our <a href=\"#operation/solanaGetTransaction\">getTransaction</a> endpoint. <a href=\"https://gist.github.com/joshwolff1/298e8251e43ff9b4815028683b1ca17d\" target=\"_blank\">Here's an example</a> of how to do this.  Mint transactions for candy machines that have capatcha/Civic enabled will fail. There is a gatekeeper functionality where you must manually verify through Civic and captcha in order to mint from a candy machine. In this functionality, Civic signs the transaction. Therefore, if the gatekeeper functionality is enabled, our “Mint from candy machine” endpoint will fail because it is missing a signer. If it is not enabled, then our “Mint from candy machine” endpoint will succeed. One caveat is the attribute “expireOnUse”. If this is True, then you have to solve a captcha each time. In this case, the “Mint from candy machine” endpoint will fail. If this is False, then your first verification is sufficient for further mints. In which case, after verifying manually the first time, you can use our endpoint thereafter.   You can check if the gatekeeper functionality is enabled with this <a href=\"#operation/solanaGetCandyMachineMetadata\">endpoint</a>.   `Cost: 8 Credits`  Limited to $29/mo plans and above. (<a href=\"#section/Pricing\">See Pricing</a>)  (You are able to try on the `Free` plan as well, until you run out of credits.)

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

final api_instance = SolanaCandyMachineApi();
final mintNFTRequest = MintNFTRequest(); // MintNFTRequest | 

try {
    final result = api_instance.solanaMintFromCandyMachine(mintNFTRequest);
    print(result);
} catch (e) {
    print('Exception when calling SolanaCandyMachineApi->solanaMintFromCandyMachine: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mintNFTRequest** | [**MintNFTRequest**](MintNFTRequest.md)|  | [optional] 

### Return type

[**MintNFTResponse**](MintNFTResponse.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **solanaSearchCandyMachines**
> List<String> solanaSearchCandyMachines(candyMachineSearchRequest)

Search CMs

<a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-candy-machine/search-candy-machines\" target=\"_blank\">See examples (Python, JavaScript)</a>.  With this endpoint, you can search candy machines by their symbol, name of NFTs, uuid, configuration address, and update authority.  The output is a list of config addresses.  You can also provide multiple search clauses, such as the update authority (`update_authority=\"G17UmNGnMJ851x3M1JXocgpft1afcYedjPuFpo1ohhCk\"`) and symbol begins with \"Sol\" (`symbol=\"Sol\", symbol_search_method='begins_with'`).  `Cost: 2 Credits` (<a href=\"#section/Pricing\">See Pricing</a>)

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

final api_instance = SolanaCandyMachineApi();
final candyMachineSearchRequest = CandyMachineSearchRequest(); // CandyMachineSearchRequest | 

try {
    final result = api_instance.solanaSearchCandyMachines(candyMachineSearchRequest);
    print(result);
} catch (e) {
    print('Exception when calling SolanaCandyMachineApi->solanaSearchCandyMachines: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **candyMachineSearchRequest** | [**CandyMachineSearchRequest**](CandyMachineSearchRequest.md)|  | [optional] 

### Return type

**List<String>**

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

