# ForgePanelProjectPinRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ModuleId** | **String** | The moduleId of the Forge panel in the format &#x60;ari:cloud:ecosystem::extension/{app-id}/{environment-id}/static/{module-key}&#x60; | 
**ProjectList** | [**ProjectPinAction[]**](ProjectPinAction.md) | The list of projects to pin or unpin the issue panel to or from. | 

## Examples

- Prepare the resource
```powershell
$ForgePanelProjectPinRequest = Initialize-JiraApiReferenceForgePanelProjectPinRequest  -ModuleId null `
 -ProjectList null
```

- Convert the resource to JSON
```powershell
$ForgePanelProjectPinRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

