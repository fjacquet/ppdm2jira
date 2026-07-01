# RestoreTarget
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApplianceId** | **String** |  | [optional] 
**ApplianceName** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**InventorySourceName** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Size** | **Int64** |  | [optional] 
**Status** | **String** |  | [optional] 
**Type** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RestoreTarget = Initialize-PpdmApiReferenceRestoreTarget  -ApplianceId null `
 -ApplianceName null `
 -Id null `
 -InventorySourceName null `
 -Name null `
 -Size null `
 -Status null `
 -Type null
```

- Convert the resource to JSON
```powershell
$RestoreTarget | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

