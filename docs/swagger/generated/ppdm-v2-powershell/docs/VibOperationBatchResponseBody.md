# VibOperationBatchResponseBody
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ActivityId** | **String** | The activity id to monitor the status of the VIB operation. | [optional] 
**Code** | **Int32** | The HTTP response code based on the VIB operation error type. | [optional] 
**Reason** | **String** | The reason for the VIB operation failure. | [optional] 
**Remediation** | **String** | The remediation action to fix the VIB operation. | [optional] 
**Timestamp** | **String** | The timestamp at which the VIB operation failed. | [optional] 

## Examples

- Prepare the resource
```powershell
$VibOperationBatchResponseBody = Initialize-PpdmApiReferenceVibOperationBatchResponseBody  -ActivityId null `
 -Code null `
 -Reason null `
 -Remediation null `
 -Timestamp null
```

- Convert the resource to JSON
```powershell
$VibOperationBatchResponseBody | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

