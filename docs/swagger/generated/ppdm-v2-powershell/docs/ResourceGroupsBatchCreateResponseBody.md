# ResourceGroupsBatchCreateResponseBody
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Code** | **Int32** | The error code number. | [optional] 
**CopyDeletionActivityId** | **String** | Copy deletion activity ID. | [optional] 
**ExtendedInfo** | **String** | Additional information about the error. | [optional] 
**Id** | **String** | ID of the successfully created resource. | [optional] 
**Path** | **String** | The path that produced the error. | [optional] 
**Reason** | **String** | The reason that the error occurred. | [optional] 
**Remediation** | **String** | A recommended solution to resolve the error. | [optional] 
**Timestamp** | **Int64** | When the error occurred. | [optional] 

## Examples

- Prepare the resource
```powershell
$ResourceGroupsBatchCreateResponseBody = Initialize-PpdmApiReferenceResourceGroupsBatchCreateResponseBody  -Code null `
 -CopyDeletionActivityId null `
 -ExtendedInfo null `
 -Id null `
 -Path null `
 -Reason null `
 -Remediation null `
 -Timestamp null
```

- Convert the resource to JSON
```powershell
$ResourceGroupsBatchCreateResponseBody | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

