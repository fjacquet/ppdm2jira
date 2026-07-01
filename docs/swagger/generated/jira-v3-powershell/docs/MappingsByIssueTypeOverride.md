# MappingsByIssueTypeOverride
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IssueTypeId** | **String** |  | [optional] 
**StatusMappings** | [**WorkflowAssociationStatusMapping[]**](WorkflowAssociationStatusMapping.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$MappingsByIssueTypeOverride = Initialize-JiraApiReferenceMappingsByIssueTypeOverride  -IssueTypeId null `
 -StatusMappings null
```

- Convert the resource to JSON
```powershell
$MappingsByIssueTypeOverride | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

