# CopyNetworkSettings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NetworkKey** | **Int32** |  | [optional] 
**NetworkLabel** | **String** |  | [optional] 
**NetworkMoref** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CopyNetworkSettings = Initialize-PpdmApiReferenceCopyNetworkSettings  -NetworkKey null `
 -NetworkLabel null `
 -NetworkMoref null
```

- Convert the resource to JSON
```powershell
$CopyNetworkSettings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

