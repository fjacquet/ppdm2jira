# CustomFieldContextDefaultValueFloat
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ContextId** | **String** | The ID of the context. | 
**Number** | **Double** | The default floating-point number. | 
**Type** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$CustomFieldContextDefaultValueFloat = Initialize-JiraApiReferenceCustomFieldContextDefaultValueFloat  -ContextId null `
 -Number null `
 -Type null
```

- Convert the resource to JSON
```powershell
$CustomFieldContextDefaultValueFloat | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

