# PrioritySchemeWithPaginatedPrioritiesAndProjects
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Default** | **Boolean** |  | [optional] 
**DefaultPriorityId** | **String** | The ID of the default issue priority. | [optional] 
**Description** | **String** | The description of the priority scheme | [optional] 
**Id** | **String** | The ID of the priority scheme. | 
**IsDefault** | **Boolean** |  | [optional] 
**Name** | **String** | The name of the priority scheme | 
**Priorities** | [**PageBeanPriorityWithSequence**](PageBeanPriorityWithSequence.md) | The paginated list of priorities. | [optional] 
**Projects** | [**PageBeanProjectDetails**](PageBeanProjectDetails.md) | The paginated list of projects. | [optional] 
**Self** | **String** | The URL of the priority scheme. | [optional] 

## Examples

- Prepare the resource
```powershell
$PrioritySchemeWithPaginatedPrioritiesAndProjects = Initialize-JiraApiReferencePrioritySchemeWithPaginatedPrioritiesAndProjects  -Default null `
 -DefaultPriorityId null `
 -Description null `
 -Id null `
 -IsDefault null `
 -Name null `
 -Priorities null `
 -Projects null `
 -Self null
```

- Convert the resource to JSON
```powershell
$PrioritySchemeWithPaginatedPrioritiesAndProjects | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

