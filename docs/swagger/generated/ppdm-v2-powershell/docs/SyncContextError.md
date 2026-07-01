# SyncContextError
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Code** | **String** |  | [optional] 
**Reason** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SyncContextError = Initialize-PpdmApiReferenceSyncContextError  -Code null `
 -Reason null
```

- Convert the resource to JSON
```powershell
$SyncContextError | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

