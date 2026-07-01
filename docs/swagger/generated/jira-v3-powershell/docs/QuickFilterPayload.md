# QuickFilterPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description of the quick filter | [optional] 
**JqlQuery** | **String** | The jql query for the quick filter | [optional] 
**Name** | **String** | The name of the quick filter | [optional] 

## Examples

- Prepare the resource
```powershell
$QuickFilterPayload = Initialize-JiraApiReferenceQuickFilterPayload  -Description null `
 -JqlQuery null `
 -Name null
```

- Convert the resource to JSON
```powershell
$QuickFilterPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

