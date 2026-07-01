# SaveTemplateRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TemplateDescription** | **String** | The description of the template | [optional] 
**TemplateFromProjectRequest** | [**SaveProjectTemplateRequest**](SaveProjectTemplateRequest.md) |  | [optional] 
**TemplateName** | **String** | The name of the template | [optional] 

## Examples

- Prepare the resource
```powershell
$SaveTemplateRequest = Initialize-JiraApiReferenceSaveTemplateRequest  -TemplateDescription null `
 -TemplateFromProjectRequest null `
 -TemplateName null
```

- Convert the resource to JSON
```powershell
$SaveTemplateRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

