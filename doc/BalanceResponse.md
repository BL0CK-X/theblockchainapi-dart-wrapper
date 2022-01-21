# openapi.model.BalanceResponse

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**balance** | **num** | The balance of the token in the wallet | 
**integerBalance** | **num** | Not included if retreiving SOL balance | [optional] 
**decimals** | **num** | Not included if retreiving SOL balance. Sometimes not included if the balance of the token is '0'. | [optional] 
**network** | **String** |  | 
**unit** | **String** | Not included if retreiving an SPL token/NFT balance | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


