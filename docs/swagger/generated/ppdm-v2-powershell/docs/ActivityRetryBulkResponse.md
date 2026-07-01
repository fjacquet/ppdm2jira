# ActivityRetryBulkResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RetryJobsInitiatedCount** | **Int32** |  | [optional] 
**RetryJobsReceivedCount** | **Int32** |  | [optional] 
**RetryResults** | [**RetryActivityResult[]**](RetryActivityResult.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ActivityRetryBulkResponse = Initialize-PpdmApiReferenceActivityRetryBulkResponse  -RetryJobsInitiatedCount null `
 -RetryJobsReceivedCount null `
 -RetryResults null
```

- Convert the resource to JSON
```powershell
$ActivityRetryBulkResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

