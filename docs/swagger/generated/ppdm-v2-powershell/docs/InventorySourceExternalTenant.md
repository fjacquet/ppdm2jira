# InventorySourceExternalTenant
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Id of the external tenant | 
**Name** | **String** | Name of the external tenant | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$InventorySourceExternalTenant = Initialize-PpdmApiReferenceInventorySourceExternalTenant  -Id null `
 -Name null
```

- Convert the resource to JSON
```powershell
$InventorySourceExternalTenant | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

