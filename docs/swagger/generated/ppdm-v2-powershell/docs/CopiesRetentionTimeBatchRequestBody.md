# CopiesRetentionTimeBatchRequestBody
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Copy id. | [optional] 
**RetentionLock** | **String** | It indicates the retention lock status of the protection copy files and only supports ALL_COPIES_UNLOCKED now. | [optional] 
**RetentionTime** | **System.DateTime** | New retention time. | [optional] 

## Examples

- Prepare the resource
```powershell
$CopiesRetentionTimeBatchRequestBody = Initialize-PpdmApiReferenceCopiesRetentionTimeBatchRequestBody  -Id null `
 -RetentionLock null `
 -RetentionTime null
```

- Convert the resource to JSON
```powershell
$CopiesRetentionTimeBatchRequestBody | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

