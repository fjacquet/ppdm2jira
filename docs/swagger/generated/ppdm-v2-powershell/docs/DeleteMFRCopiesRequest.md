# DeleteMFRCopiesRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CopyResourceIds** | **String[]** |  | [optional] 
**WorkflowTaskId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DeleteMFRCopiesRequest = Initialize-PpdmApiReferenceDeleteMFRCopiesRequest  -CopyResourceIds null `
 -WorkflowTaskId null
```

- Convert the resource to JSON
```powershell
$DeleteMFRCopiesRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

