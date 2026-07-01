# CreatePrioritySchemeDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DefaultPriorityId** | **Int64** | The ID of the default priority for the priority scheme. | 
**Description** | **String** | The description of the priority scheme. | [optional] 
**Mappings** | [**PriorityMapping**](PriorityMapping.md) | Instructions to migrate the priorities of issues.  &#x60;in&#x60; mappings are used to migrate the priorities of issues to priorities used within the priority scheme.  &#x60;out&#x60; mappings are used to migrate the priorities of issues to priorities not used within the priority scheme.   *  When **priorities** are **added** to the new priority scheme, no mapping needs to be provided as the new priorities are not used by any issues.  *  When **priorities** are **removed** from the new priority scheme, no mapping needs to be provided as the removed priorities are not used by any issues.  *  When **projects** are **added** to the priority scheme, the priorities of issues in those projects might need to be migrated to new priorities used by the priority scheme. This can occur when the current scheme does not use all the priorities in the project(s)&#39; priority scheme(s).           *  An &#x60;in&#x60; mapping must be provided for each of these priorities.  *  When **projects** are **removed** from the priority scheme, no mapping needs to be provided as the removed projects are not using the priorities of the new priority scheme.  For more information on &#x60;in&#x60; and &#x60;out&#x60; mappings, see the child properties documentation for the &#x60;PriorityMapping&#x60; object below. | [optional] 
**Name** | **String** | The name of the priority scheme. Must be unique. | 
**PriorityIds** | **Int64[]** | The IDs of priorities in the scheme. | 
**ProjectIds** | **Int64[]** | The IDs of projects that will use the priority scheme. | [optional] 

## Examples

- Prepare the resource
```powershell
$CreatePrioritySchemeDetails = Initialize-JiraApiReferenceCreatePrioritySchemeDetails  -DefaultPriorityId null `
 -Description null `
 -Mappings null `
 -Name null `
 -PriorityIds null `
 -ProjectIds null
```

- Convert the resource to JSON
```powershell
$CreatePrioritySchemeDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

