# ManageMountedCopyResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TaskId** | **String** | ID of a PowerProtect Data Manager task. This is the ID sub-field of the task link that is also contained in this object. | [optional] 

## Examples

- Prepare the resource
```powershell
$ManageMountedCopyResponse = Initialize-PpdmApiReferenceManageMountedCopyResponse  -TaskId null
```

- Convert the resource to JSON
```powershell
$ManageMountedCopyResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

