# SyncTrigger
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CascadeToInput** | **Boolean** |  | [optional] 
**Type** | **String** |  | [optional] 
**Value** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SyncTrigger = Initialize-PpdmApiReferenceSyncTrigger  -CascadeToInput null `
 -Type null `
 -Value null
```

- Convert the resource to JSON
```powershell
$SyncTrigger | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

