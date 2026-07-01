# SaveProjectTemplateRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProjectId** | **Int64** | The ID of the target project | [optional] 
**TemplateGenerationOptions** | [**CustomTemplateOptions**](CustomTemplateOptions.md) |  | [optional] 
**TemplateType** | **String** | The type of the template: LIVE | SNAPSHOT | [optional] 

## Examples

- Prepare the resource
```powershell
$SaveProjectTemplateRequest = Initialize-JiraApiReferenceSaveProjectTemplateRequest  -ProjectId null `
 -TemplateGenerationOptions null `
 -TemplateType null
```

- Convert the resource to JSON
```powershell
$SaveProjectTemplateRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

