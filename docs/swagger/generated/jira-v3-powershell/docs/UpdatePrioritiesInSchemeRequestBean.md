# UpdatePrioritiesInSchemeRequestBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Add** | [**PrioritySchemeChangesWithoutMappings**](PrioritySchemeChangesWithoutMappings.md) | Priorities to add to a scheme | [optional] 
**Remove** | [**PrioritySchemeChangesWithoutMappings**](PrioritySchemeChangesWithoutMappings.md) | Priorities to remove from a scheme | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdatePrioritiesInSchemeRequestBean = Initialize-JiraApiReferenceUpdatePrioritiesInSchemeRequestBean  -Add null `
 -Remove null
```

- Convert the resource to JSON
```powershell
$UpdatePrioritiesInSchemeRequestBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

