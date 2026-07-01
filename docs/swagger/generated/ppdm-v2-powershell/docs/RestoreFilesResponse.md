# RestoreFilesResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TaskId** | **String** | The ID of the PowerProtect Data Manager task that is used to track the status of the called API that returned this response object. | [optional] 

## Examples

- Prepare the resource
```powershell
$RestoreFilesResponse = Initialize-PpdmApiReferenceRestoreFilesResponse  -TaskId null
```

- Convert the resource to JSON
```powershell
$RestoreFilesResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

