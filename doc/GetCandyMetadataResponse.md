# openapi.model.GetCandyMetadataResponse

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**authority** | **String** | The update authority of the candy machine | [optional] 
**bump** | **num** |  | [optional] 
**candyMachineId** | **String** | The ID of the candy machine  | [optional] 
**configAddress** | **String** | The configuration public key address of the candy machine  | [optional] 
**creators** | [**List<GetCandyMetadataResponseCreators>**](GetCandyMetadataResponseCreators.md) |  | [optional] [default to const []]
**goLiveDate** | **num** | The unix timestamp of the start date of the candy machine  | [optional] 
**isMutable** | **bool** |  | [optional] 
**itemsAvailable** | **num** | The number of NFTs available for mint from the candy machine  | [optional] 
**itemsRedeemed** | **num** | The number of NFTs minted already from the candy machine  | [optional] 
**maxNumberOfLines** | **num** |  | [optional] 
**maxSupply** | **num** |  | [optional] 
**price** | **num** | The price in Lamports for minting an NFT from the candy machine. 1e9 Lamport  = 1 SOL  | [optional] 
**retainAuthority** | **bool** |  | [optional] 
**sellerFeeBasisPoints** | **num** | The royalty the creators receive on each sale after the primary sale (the initial minting) (denominated in basis points (e.g., 75 basis points = 0.75%))  | [optional] 
**symbol** | **String** |  | [optional] 
**tokenMint** | **String** |  | [optional] 
**uuid** | **String** | The uuid of the candy machine | [optional] 
**wallet** | **String** | The public key address of the wallet that recevies the proceeds from NFT mints  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


