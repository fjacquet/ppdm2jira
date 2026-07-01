# AssetInventorySourceRef
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the inventory source. | [optional] 
**Name** | **String** | The name of the inventory source. | [optional] 
**PrimaryAddress** | **String** | The IP address of the inventory source. | [optional] 

## Examples

- Prepare the resource
```powershell
$AssetInventorySourceRef = Initialize-PpdmApiReferenceAssetInventorySourceRef  -Id null `
 -Name null `
 -PrimaryAddress null
```

- Convert the resource to JSON
```powershell
$AssetInventorySourceRef | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

