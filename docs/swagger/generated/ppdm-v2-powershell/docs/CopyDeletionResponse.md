# CopyDeletionResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ActivityId** | **String** |  | [optional] 
**CopyIds** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CopyDeletionResponse = Initialize-PpdmApiReferenceCopyDeletionResponse  -ActivityId null `
 -CopyIds null
```

- Convert the resource to JSON
```powershell
$CopyDeletionResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

