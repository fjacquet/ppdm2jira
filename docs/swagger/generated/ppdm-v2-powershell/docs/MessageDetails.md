# MessageDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** | Message text. | [optional] 
**MessageArgs** | **String[]** | Message components. | [optional] 
**MessageID** | **String** | ID of the message. | [optional] 
**Reason** | **String** | Message reason. | [optional] 
**Remediation** | **String** | Message remediation, if available. | [optional] 

## Examples

- Prepare the resource
```powershell
$MessageDetails = Initialize-PpdmApiReferenceMessageDetails  -Message null `
 -MessageArgs null `
 -MessageID null `
 -Reason null `
 -Remediation null
```

- Convert the resource to JSON
```powershell
$MessageDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

