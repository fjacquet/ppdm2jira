# ErrorMessage
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Code** | **Int32** | The error code number. | [optional] 
**ExtendedInfo** | **String** | Additional information about the error. | [optional] 
**Message** | **String** | The error message. | [optional] 
**MessageArgs** | **String[]** | The message arguments are the values for any substitution variables that are defined as part of the message. | [optional] 
**MessageId** | **String** | The unique message ID. | [optional] 
**MessageTemplate** | **String** | The message template defines the display sequence of the message arguments array. | [optional] 
**Path** | **String** | The path that produced the error. | [optional] 
**Reason** | **String** | The reason that the error occurred. | [optional] 
**Remediation** | **String** | A recommended solution to resolve the error. | [optional] 
**Timestamp** | **Int64** | When the error occurred. | [optional] 

## Examples

- Prepare the resource
```powershell
$ErrorMessage = Initialize-PpdmApiReferenceErrorMessage  -Code null `
 -ExtendedInfo null `
 -Message null `
 -MessageArgs null `
 -MessageId null `
 -MessageTemplate null `
 -Path null `
 -Reason null `
 -Remediation null `
 -Timestamp null
```

- Convert the resource to JSON
```powershell
$ErrorMessage | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

