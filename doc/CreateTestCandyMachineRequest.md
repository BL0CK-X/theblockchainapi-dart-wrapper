# openapi.model.CreateTestCandyMachineRequest

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**wallet** | [**Wallet**](Wallet.md) |  | 
**network** | **String** |  | [optional] [default to 'devnet']
**candyMachineContractVersion** | **String** | The contract you want to use to create the candy machine. Note: Metaplex disabled the creation of `v1` candy machines on their smart contract, and so we no longer support the creation of `v1` test candy machines.  | [optional] [default to 'v2']
**includeGatekeeper** | **bool** | Whether or not to include a gatekeeper for testing purposes. Only applies to v2 candy machines. | [optional] [default to false]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


