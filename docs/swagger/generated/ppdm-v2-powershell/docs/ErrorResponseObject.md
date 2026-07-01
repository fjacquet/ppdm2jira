# ErrorResponseObject
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Code** | **Int32** | The error code. | [optional] 
**Path** | **String** | The path the error applies to. | [optional] 
**Reason** | **String** | The reason for the error code. | [optional] 
**Remediation** | **String** | The remediation for the error code. | [optional] 
**Timestamp** | **Int64** | The time of the error. | [optional] 

## Examples

- Prepare the resource
```powershell
$ErrorResponseObject = Initialize-PpdmApiReferenceErrorResponseObject  -Code null `
 -Path null `
 -Reason null `
 -Remediation null `
 -Timestamp null
```

- Convert the resource to JSON
```powershell
$ErrorResponseObject | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

