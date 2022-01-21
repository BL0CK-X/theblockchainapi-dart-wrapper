# openapi.model.NFTSearchRequest

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**updateAuthority** | **String** | The public key of the update authority of the NFT | [optional] 
**updateAuthoritySearchMethod** | **String** | Only `exact_match` supported at this time | [optional] [default to 'exact_match']
**mintAddress** | **String** | The mint address of the NFT | [optional] 
**mintAddressSearchMethod** | **String** | Only `exact_match` supported at this time | [optional] [default to 'exact_match']
**name** | **String** | The name of the NFT | [optional] 
**nameSearchMethod** | **String** |  | [optional] [default to 'exact_match']
**uri** | **String** | The NFT's uri | [optional] 
**uriSearchMethod** | **String** |  | [optional] [default to 'exact_match']
**symbol** | **String** | The symbol associated with the candy machine | [optional] 
**symbolSearchMethod** | **String** |  | [optional] [default to 'exact_match']
**network** | **String** |  | [optional] [default to 'devnet']

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


