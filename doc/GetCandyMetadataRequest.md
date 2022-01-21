# openapi.model.GetCandyMetadataRequest

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**candyMachineId** | **String** | The ID of the candy machine. This is the same as `config_address` for `v2` candy machines (supply either).  | [optional] 
**configAddress** | **String** | The configuration address of the candy machine. This is the same as `candy_machine_id` for `v2` candy machines (supply either).  | [optional] 
**uuid** | **String** | The uuid of the candy machine. This is an alphanumeric string of length six (e.g., HpVdfP), which corresponds to the first six characters of the config_address.  | [optional] 
**network** | **String** |  | [optional] [default to 'devnet']
**candyMachineContractVersion** | **String** | The candy machine contract of the candy machine for which you are retrieving the metadata. If you are providing `v1` candy machine ID, set this to `v1`. If you are providing `v2` candy machine ID, set this to `v2`. If you don't know which version your candy machine is, check out <a href=\"#operation/solanaGetAccountIsCandyMachine\">this endpoint</a>.  | [optional] [default to 'v1']

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


