# JiraStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description of the status. | [optional] 
**Id** | **String** | The ID of the status. | [optional] 
**Name** | **String** | The name of the status. | [optional] 
**Scope** | [**StatusScope**](StatusScope.md) |  | [optional] 
**StatusCategory** | **String** | The category of the status. | [optional] 

## Examples

- Prepare the resource
```powershell
$JiraStatus = Initialize-JiraApiReferenceJiraStatus  -Description null `
 -Id null `
 -Name null `
 -Scope null `
 -StatusCategory null
```

- Convert the resource to JSON
```powershell
$JiraStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

