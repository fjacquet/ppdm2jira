# AssetVapp
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**InventorySourceId** | **String** |  | [optional] 
**InventorySourceName** | **String** |  | [optional] 
**NetworkName** | **String** |  | [optional] 
**OrganizationName** | **String** |  | [optional] 
**OrganizationVdcName** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AssetVapp = Initialize-PpdmApiReferenceAssetVapp  -InventorySourceId null `
 -InventorySourceName null `
 -NetworkName null `
 -OrganizationName null `
 -OrganizationVdcName null
```

- Convert the resource to JSON
```powershell
$AssetVapp | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

