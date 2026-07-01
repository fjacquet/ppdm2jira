# FailedObjective
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Code** | **String** |  | [optional] 
**CopyType** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Reason** | **String** |  | [optional] 
**Remediation** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$FailedObjective = Initialize-PpdmApiReferenceFailedObjective  -Code null `
 -CopyType null `
 -Name null `
 -Reason null `
 -Remediation null
```

- Convert the resource to JSON
```powershell
$FailedObjective | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

