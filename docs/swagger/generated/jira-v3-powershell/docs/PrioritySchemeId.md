# PrioritySchemeId
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the priority scheme. | [optional] [readonly] 
**Task** | [**TaskProgressBeanJsonNode**](TaskProgressBeanJsonNode.md) | The in-progress issue migration task. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$PrioritySchemeId = Initialize-JiraApiReferencePrioritySchemeId  -Id null `
 -Task null
```

- Convert the resource to JSON
```powershell
$PrioritySchemeId | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

