# SingleRedactionResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExternalId** | **String** | An unique id for the redaction request | 
**Successful** | **Boolean** | Indicates if redaction was success/failure | 

## Examples

- Prepare the resource
```powershell
$SingleRedactionResponse = Initialize-JiraApiReferenceSingleRedactionResponse  -ExternalId null `
 -Successful null
```

- Convert the resource to JSON
```powershell
$SingleRedactionResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

