# CloudBucketErrorResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Code** | **Int32** |  | [optional] 
**Path** | **String** |  | [optional] 
**Reason** | **String** |  | [optional] 
**Remediation** | **String** |  | [optional] 
**Timestamp** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CloudBucketErrorResponse = Initialize-PpdmApiReferenceCloudBucketErrorResponse  -Code null `
 -Path null `
 -Reason null `
 -Remediation null `
 -Timestamp null
```

- Convert the resource to JSON
```powershell
$CloudBucketErrorResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

