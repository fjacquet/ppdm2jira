# IssueTypeProjectCreatePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IssueTypeHierarchy** | [**IssueTypeHierarchyPayload[]**](IssueTypeHierarchyPayload.md) | Defines the issue type hierarhy to be created and used during this project creation. This will only add new levels if there isn&#39;t an existing level | [optional] 
**IssueTypeScheme** | [**IssueTypeSchemePayload**](IssueTypeSchemePayload.md) |  | [optional] 
**IssueTypes** | [**IssueTypePayload[]**](IssueTypePayload.md) | Only needed if you want to create issue types, you can otherwise use the ids of issue types in the scheme configuration | [optional] 

## Examples

- Prepare the resource
```powershell
$IssueTypeProjectCreatePayload = Initialize-JiraApiReferenceIssueTypeProjectCreatePayload  -IssueTypeHierarchy null `
 -IssueTypeScheme null `
 -IssueTypes null
```

- Convert the resource to JSON
```powershell
$IssueTypeProjectCreatePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

