# SuggestedMappingsForProjectsRequestBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Add** | **Int64[]** | The ids of projects being added to the scheme. | [optional] 

## Examples

- Prepare the resource
```powershell
$SuggestedMappingsForProjectsRequestBean = Initialize-JiraApiReferenceSuggestedMappingsForProjectsRequestBean  -Add null
```

- Convert the resource to JSON
```powershell
$SuggestedMappingsForProjectsRequestBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

