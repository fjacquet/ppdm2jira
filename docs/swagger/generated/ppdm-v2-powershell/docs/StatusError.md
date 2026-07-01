# StatusError
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Code** | **String** |  | [optional] 
**Reason** | **String** |  | [optional] 
**Remediation** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$StatusError = Initialize-PpdmApiReferenceStatusError  -Code null `
 -Reason null `
 -Remediation null
```

- Convert the resource to JSON
```powershell
$StatusError | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

