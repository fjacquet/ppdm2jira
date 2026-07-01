# AssetCredentials
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExtraInfo** | [**AssetExtraInfo[]**](AssetExtraInfo.md) |  | [optional] 
**Id** | **String** |  | [optional] 
**Type** | [**ConnectionTypeEnum**](ConnectionTypeEnum.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AssetCredentials = Initialize-PpdmApiReferenceAssetCredentials  -ExtraInfo null `
 -Id null `
 -Type null
```

- Convert the resource to JSON
```powershell
$AssetCredentials | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

