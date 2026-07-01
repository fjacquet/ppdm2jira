# EditTemplateRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TemplateDescription** | **String** | The description of the template | [optional] 
**TemplateGenerationOptions** | [**CustomTemplateOptions**](CustomTemplateOptions.md) |  | [optional] 
**TemplateKey** | **String** | The unique identifier of the template | [optional] 
**TemplateName** | **String** | The name of the template | [optional] 

## Examples

- Prepare the resource
```powershell
$EditTemplateRequest = Initialize-JiraApiReferenceEditTemplateRequest  -TemplateDescription null `
 -TemplateGenerationOptions null `
 -TemplateKey null `
 -TemplateName null
```

- Convert the resource to JSON
```powershell
$EditTemplateRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

