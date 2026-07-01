# ExpandPrioritySchemeBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the priority scheme. | [optional] [readonly] 
**Name** | **String** | The name of the priority scheme. | [optional] [readonly] 
**Self** | **String** | The URL of the priority scheme. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$ExpandPrioritySchemeBean = Initialize-JiraApiReferenceExpandPrioritySchemeBean  -Id null `
 -Name null `
 -Self null
```

- Convert the resource to JSON
```powershell
$ExpandPrioritySchemeBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

