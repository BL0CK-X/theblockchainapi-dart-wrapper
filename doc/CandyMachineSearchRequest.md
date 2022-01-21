# openapi.model.CandyMachineSearchRequest

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**updateAuthority** | **String** | The public key of the update authority of the candy machine | [optional] 
**updateAuthoritySearchMethod** | **String** | Only `exact_match` supported at this time | [optional] [default to 'exact_match']
**configAddress** | **String** | The public key of the configuration of the candy machine | [optional] 
**configAddressSearchMethod** | **String** | Only `exact_match` supported at this time | [optional] [default to 'exact_match']
**uuid** | **String** | The alphanumeric string of length six that corresponds to the candy machine. This is NOT the candy machine ID.  This is the first six letters of the configuration address and is also used to identify the candy machine. An example is `4zKV6i`.  | [optional] 
**uuidSearchMethod** | **String** | Only `exact_match` supported at this time | [optional] [default to 'exact_match']
**symbol** | **String** | The symbol associated with the candy machine | [optional] 
**symbolSearchMethod** | **String** |  | [optional] [default to 'exact_match']
**nftName** | **String** | The name of an NFT on the candy machine, minted or unminted. For example, to find The Solana Money Boys candy machine, you already know that each NFT is named \"Solana Money Boy #0\", \"Solana Money Boy #1\", and so on. So you could search with  nft_name=\"Solana Money Boy #0\", nft_name_index=0, nft_name_search_method='exact_match', for example, which would return the candy machine ID. This also works with candy machines that are not live but are uploaded.  | [optional] 
**nftNameIndex** | **String** | The index of the NFT to check, e.g., the 2nd NFT would have an index of 1. We cannot search all NFTs on a candy machine currently, so you must search an NFT at a particular position, such as the first, second, and so on. In general, nft_name_index=0 works for most use cases.  | [optional] [default to '0']
**nftNameSearchMethod** | **String** |  | [optional] [default to 'exact_match']
**network** | **String** |  | [optional] [default to 'devnet']
**candyMachineContractVersion** | **String** | The candy machine contract you want to search.  If you want to search `v1` candy machines, set this to `v1`. If you want to search `v2` candy machines. set this to `v2`.  | [optional] [default to 'v1']

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


