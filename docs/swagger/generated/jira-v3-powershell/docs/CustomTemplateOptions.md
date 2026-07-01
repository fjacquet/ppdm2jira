# CustomTemplateOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EnableScreenDelegatedAdminSupport** | **Boolean** | Enable screen delegated admin support for the template. This means screen and associated schemes will be copied rather than referenced. | [optional] 
**EnableWorkflowDelegatedAdminSupport** | **Boolean** | Enable workflow delegated admin support for the template. This means workflows and workflow schemes will be copied rather than referenced. | [optional] 

## Examples

- Prepare the resource
```powershell
$CustomTemplateOptions = Initialize-JiraApiReferenceCustomTemplateOptions  -EnableScreenDelegatedAdminSupport null `
 -EnableWorkflowDelegatedAdminSupport null
```

- Convert the resource to JSON
```powershell
$CustomTemplateOptions | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

