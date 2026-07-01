# SdrBackupPostResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ActivityId** | **String** | Parent activity ID of the Server Disaster Recovery backup job. | [optional] 
**Id** | **String** | Server Disaster Recovery backup ID. | [optional] 
**TaskId** | **String** | Task ID of the Server Disaster Recovery backup job. (deprecated) | [optional] 

## Examples

- Prepare the resource
```powershell
$SdrBackupPostResponse = Initialize-PpdmApiReferenceSdrBackupPostResponse  -ActivityId null `
 -Id null `
 -TaskId null
```

- Convert the resource to JSON
```powershell
$SdrBackupPostResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

