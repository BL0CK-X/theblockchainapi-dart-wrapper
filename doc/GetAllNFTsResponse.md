# openapi.model.GetAllNFTsResponse

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**mintedNfts** | [**List<GetAllNFTsResponseMintedNfts>**](GetAllNFTsResponseMintedNfts.md) | The minted NFTs. Only filled in for `v1` candy machines. Left empty for `v2`. | [optional] [default to const []]
**unmintedNfts** | [**List<GetAllNFTsResponseUnmintedNfts>**](GetAllNFTsResponseUnmintedNfts.md) | The unminted NFTs. Only filled in for `v1` candy machines. Left empty for `v2`. | [optional] [default to const []]
**allNfts** | [**List<GetAllNFTsResponseUnmintedNfts>**](GetAllNFTsResponseUnmintedNfts.md) | The list of all NFTs. Filled in for both `v1` and `v2` NFTs. | [optional] [default to const []]
**accurate** | **bool** | Whether or not the division of NFTs among minted and unminted is accurate. If it is not accurate, then it is possible that NFTs have been included in the `minted` list that are not actually minted. If it is accurate, then the split of  minted and unminted is correct. `v1` candy machines always return a correct minted/unminted split.   | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


