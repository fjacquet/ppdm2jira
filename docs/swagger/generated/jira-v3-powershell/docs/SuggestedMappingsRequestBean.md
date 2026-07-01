# SuggestedMappingsRequestBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MaxResults** | **Int32** | The maximum number of results that could be on the page. | [optional] 
**Priorities** | [**SuggestedMappingsForPrioritiesRequestBean**](SuggestedMappingsForPrioritiesRequestBean.md) | The priority changes in the scheme. | [optional] 
**Projects** | [**SuggestedMappingsForProjectsRequestBean**](SuggestedMappingsForProjectsRequestBean.md) | The project changes in the scheme. | [optional] 
**SchemeId** | **Int64** | The id of the priority scheme. | [optional] 
**StartAt** | **Int64** | The index of the first item returned on the page. | [optional] 

## Examples

- Prepare the resource
```powershell
$SuggestedMappingsRequestBean = Initialize-JiraApiReferenceSuggestedMappingsRequestBean  -MaxResults null `
 -Priorities null `
 -Projects null `
 -SchemeId null `
 -StartAt null
```

- Convert the resource to JSON
```powershell
$SuggestedMappingsRequestBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

