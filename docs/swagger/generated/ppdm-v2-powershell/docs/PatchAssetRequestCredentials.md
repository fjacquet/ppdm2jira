# PatchAssetRequestCredentials
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**Type** | [**ConnectionTypeEnum**](ConnectionTypeEnum.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PatchAssetRequestCredentials = Initialize-PpdmApiReferencePatchAssetRequestCredentials  -Id null `
 -Type null
```

- Convert the resource to JSON
```powershell
$PatchAssetRequestCredentials | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

