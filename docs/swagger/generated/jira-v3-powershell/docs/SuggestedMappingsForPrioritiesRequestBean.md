# SuggestedMappingsForPrioritiesRequestBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Add** | **Int64[]** | The ids of priorities being removed from the scheme. | [optional] 
**Remove** | **Int64[]** | The ids of priorities being removed from the scheme. | [optional] 

## Examples

- Prepare the resource
```powershell
$SuggestedMappingsForPrioritiesRequestBean = Initialize-JiraApiReferenceSuggestedMappingsForPrioritiesRequestBean  -Add null `
 -Remove null
```

- Convert the resource to JSON
```powershell
$SuggestedMappingsForPrioritiesRequestBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

