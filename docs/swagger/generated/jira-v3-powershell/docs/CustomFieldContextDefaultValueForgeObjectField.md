# CustomFieldContextDefaultValueForgeObjectField
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ContextId** | **String** | The ID of the context. | 
**Object** | [**SystemCollectionsHashtable**](.md) | The default JSON object. | [optional] 
**Type** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$CustomFieldContextDefaultValueForgeObjectField = Initialize-JiraApiReferenceCustomFieldContextDefaultValueForgeObjectField  -ContextId null `
 -Object null `
 -Type null
```

- Convert the resource to JSON
```powershell
$CustomFieldContextDefaultValueForgeObjectField | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

