# ProtectionRuleExecution
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssetRuleIds** | **String[]** | Id list of dynamic filters. | [optional] 
**InventorySourceType** | **String** | Type of inventory source. | [optional] 

## Examples

- Prepare the resource
```powershell
$ProtectionRuleExecution = Initialize-PpdmApiReferenceProtectionRuleExecution  -AssetRuleIds null `
 -InventorySourceType null
```

- Convert the resource to JSON
```powershell
$ProtectionRuleExecution | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

