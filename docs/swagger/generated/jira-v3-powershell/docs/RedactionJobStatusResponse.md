# RedactionJobStatusResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BulkRedactionResponse** | [**BulkRedactionResponse**](BulkRedactionResponse.md) |  | [optional] 
**JobStatus** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RedactionJobStatusResponse = Initialize-JiraApiReferenceRedactionJobStatusResponse  -BulkRedactionResponse null `
 -JobStatus null
```

- Convert the resource to JSON
```powershell
$RedactionJobStatusResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

