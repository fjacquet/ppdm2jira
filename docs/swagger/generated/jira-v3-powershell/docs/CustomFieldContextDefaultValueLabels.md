# CustomFieldContextDefaultValueLabels
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ContextId** | **String** | The ID of the context. | 
**Labels** | **String[]** | The default labels value. | 
**Type** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$CustomFieldContextDefaultValueLabels = Initialize-JiraApiReferenceCustomFieldContextDefaultValueLabels  -ContextId null `
 -Labels null `
 -Type null
```

- Convert the resource to JSON
```powershell
$CustomFieldContextDefaultValueLabels | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

