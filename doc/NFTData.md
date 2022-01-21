# openapi.model.NFTData

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**creators** | **List<String>** | The creators of the NFT  | [optional] [default to const []]
**name** | **String** | The name of the NFT  | [optional] 
**share** | **List<double>** | The portion of the seller fee that each creator receives. Index 0 corresponds to creator at index 0 in the creator array, and so on. Length of share array must be the same as the length of the creator array.  | [optional] [default to const []]
**symbol** | **String** | The symbol of the NFT  | [optional] 
**uri** | **String** | The URI of the NFT  | [optional] 
**verified** | **List<int>** | Whether or not the respective creator has signed the minting transaction of the NFT. Index 0 corresponds to creator at index 0 in the creator array, and so on. Length of verified array must be the same as the length of the creator array.  | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


