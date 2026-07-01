# Failure
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Reason** | **String** |  | [optional] 
**Remediation** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Failure = Initialize-PpdmApiReferenceFailure  -Reason null `
 -Remediation null
```

- Convert the resource to JSON
```powershell
$Failure | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

