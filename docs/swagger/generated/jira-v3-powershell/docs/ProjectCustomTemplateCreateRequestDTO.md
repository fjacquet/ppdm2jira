# ProjectCustomTemplateCreateRequestDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Details** | [**CustomTemplatesProjectDetails**](CustomTemplatesProjectDetails.md) |  | [optional] 
**Template** | [**CustomTemplateRequestDTO**](CustomTemplateRequestDTO.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProjectCustomTemplateCreateRequestDTO = Initialize-JiraApiReferenceProjectCustomTemplateCreateRequestDTO  -Details null `
 -Template null
```

- Convert the resource to JSON
```powershell
$ProjectCustomTemplateCreateRequestDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

