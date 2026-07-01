# SdrEventNotification
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ComponentName** | **String** | Name of the component initiating the request. (Ex. configManager, AAA) | 
**Reason** | **String** | Reason for generating event notification. (Ex. asset_update, credential_change, policy_update, user_add, inventorySource_add) | 
**Type** | **String** | Type of event notification. | 

## Examples

- Prepare the resource
```powershell
$SdrEventNotification = Initialize-PpdmApiReferenceSdrEventNotification  -ComponentName null `
 -Reason null `
 -Type null
```

- Convert the resource to JSON
```powershell
$SdrEventNotification | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

