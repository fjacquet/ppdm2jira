# BulkRedactionRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Redactions** | [**SingleRedactionRequest[]**](SingleRedactionRequest.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$BulkRedactionRequest = Initialize-JiraApiReferenceBulkRedactionRequest  -Redactions null
```

- Convert the resource to JSON
```powershell
$BulkRedactionRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

