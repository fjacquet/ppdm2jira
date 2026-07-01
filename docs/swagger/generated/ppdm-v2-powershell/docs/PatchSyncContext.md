# PatchSyncContext
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**PatchContent[]**](PatchContent.md) | The updates to the context. | [optional] 
**RootContextId** | **String** | The referring root context Id | [optional] 
**SourceSystemId** | [**PatchSyncContextSourceSystemId**](PatchSyncContextSourceSystemId.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PatchSyncContext = Initialize-PpdmApiReferencePatchSyncContext  -Content null `
 -RootContextId null `
 -SourceSystemId null
```

- Convert the resource to JSON
```powershell
$PatchSyncContext | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

