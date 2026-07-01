# ComponentErrorResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Code** | **Int32** |  | [optional] 
**Path** | **String** |  | [optional] 
**Reason** | **String** |  | [optional] 
**Remediation** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**Timestamp** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ComponentErrorResponse = Initialize-PpdmApiReferenceComponentErrorResponse  -Code null `
 -Path null `
 -Reason null `
 -Remediation null `
 -Timestamp null
```

- Convert the resource to JSON
```powershell
$ComponentErrorResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

