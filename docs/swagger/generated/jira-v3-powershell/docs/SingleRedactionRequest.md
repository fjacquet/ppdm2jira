# SingleRedactionRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ContentItem** | [**ContentItem**](ContentItem.md) |  | 
**ExternalId** | **String** | Unique id for the redaction request; ID format should be of UUID | 
**Reason** | **String** | The reason why the content is being redacted | 
**RedactionPosition** | [**RedactionPosition**](RedactionPosition.md) |  | 

## Examples

- Prepare the resource
```powershell
$SingleRedactionRequest = Initialize-JiraApiReferenceSingleRedactionRequest  -ContentItem null `
 -ExternalId 51101de6-d001-429d-a095-b2b96dd57fcb `
 -Reason PII data `
 -RedactionPosition null
```

- Convert the resource to JSON
```powershell
$SingleRedactionRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

