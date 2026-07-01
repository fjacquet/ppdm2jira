# BulkRedactionResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Results** | [**SingleRedactionResponse[]**](SingleRedactionResponse.md) | Result for requested redactions | 

## Examples

- Prepare the resource
```powershell
$BulkRedactionResponse = Initialize-JiraApiReferenceBulkRedactionResponse  -Results null
```

- Convert the resource to JSON
```powershell
$BulkRedactionResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

