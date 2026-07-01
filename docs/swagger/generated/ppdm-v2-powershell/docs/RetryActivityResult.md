# RetryActivityResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ErrorResponseObject** | [**ErrorResponseObject**](ErrorResponseObject.md) |  | [optional] 
**NewJobId** | **String** |  | [optional] 
**RetryJobId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RetryActivityResult = Initialize-PpdmApiReferenceRetryActivityResult  -ErrorResponseObject null `
 -NewJobId null `
 -RetryJobId null
```

- Convert the resource to JSON
```powershell
$RetryActivityResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

