# FlrErrorMessage
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Code** | **String** |  | [optional] 
**Reason** | **String** |  | [optional] 
**Remediation** | **String** |  | [optional] 
**Timestamp** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$FlrErrorMessage = Initialize-PpdmApiReferenceFlrErrorMessage  -Code null `
 -Reason null `
 -Remediation null `
 -Timestamp null
```

- Convert the resource to JSON
```powershell
$FlrErrorMessage | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

