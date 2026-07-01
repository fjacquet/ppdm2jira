# MountResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FlrSessionId** | **String** | The ID of the FLR session. | [optional] 
**TaskId** | **String** | The ID of the task used to track the status of the called API that returned this response object. | [optional] 

## Examples

- Prepare the resource
```powershell
$MountResponse = Initialize-PpdmApiReferenceMountResponse  -FlrSessionId null `
 -TaskId null
```

- Convert the resource to JSON
```powershell
$MountResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

