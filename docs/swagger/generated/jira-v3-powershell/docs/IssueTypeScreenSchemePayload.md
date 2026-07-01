# IssueTypeScreenSchemePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DefaultScreenScheme** | [**ProjectCreateResourceIdentifier**](ProjectCreateResourceIdentifier.md) |  | [optional] 
**Description** | **String** | The description of the issue type screen scheme | [optional] 
**ExplicitMappings** | [**System.Collections.Hashtable**](ProjectCreateResourceIdentifier.md) | The IDs of the screen schemes for the issue type IDs and default. A default entry is required to create an issue type screen scheme, it defines the mapping for all issue types without a screen scheme. | [optional] 
**Name** | **String** | The name of the issue type screen scheme | [optional] 
**Pcri** | [**ProjectCreateResourceIdentifier**](ProjectCreateResourceIdentifier.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IssueTypeScreenSchemePayload = Initialize-JiraApiReferenceIssueTypeScreenSchemePayload  -DefaultScreenScheme null `
 -Description This is an issue type screen scheme `
 -ExplicitMappings null `
 -Name My Issue Type Screen Scheme `
 -Pcri null
```

- Convert the resource to JSON
```powershell
$IssueTypeScreenSchemePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

