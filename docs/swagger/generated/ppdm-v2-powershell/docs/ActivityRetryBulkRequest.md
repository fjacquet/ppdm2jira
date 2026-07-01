# ActivityRetryBulkRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RetryJobIds** | **String[]** | Job ID to be retried. | [optional] 

## Examples

- Prepare the resource
```powershell
$ActivityRetryBulkRequest = Initialize-PpdmApiReferenceActivityRetryBulkRequest  -RetryJobIds null
```

- Convert the resource to JSON
```powershell
$ActivityRetryBulkRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

