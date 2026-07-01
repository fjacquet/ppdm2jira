# ActivityResultError
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Arguments** | [**NameValuePairString[]**](NameValuePairString.md) |  | [optional] 
**Code** | **String** | The error code or message id for message catalog. | [optional] 
**DetailedDescription** | **String** | The detailed description from message catalog. | [optional] 
**ExtendedReason** | **String** | The extended reason not from the message catalog. | [optional] 
**MessageID** | **String** | The unique message ID. | [optional] 
**Reason** | **String** | The error reason or message from message catalog. | [optional] 
**Remediation** | **String** | The remediation or remediation from message catalog. | [optional] 

## Examples

- Prepare the resource
```powershell
$ActivityResultError = Initialize-PpdmApiReferenceActivityResultError  -Arguments null `
 -Code null `
 -DetailedDescription null `
 -ExtendedReason null `
 -MessageID null `
 -Reason null `
 -Remediation null
```

- Convert the resource to JSON
```powershell
$ActivityResultError | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

