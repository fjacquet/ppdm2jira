# IssueTypeSchemePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DefaultIssueTypeId** | [**ProjectCreateResourceIdentifier**](ProjectCreateResourceIdentifier.md) |  | [optional] 
**Description** | **String** | The description of the issue type scheme | [optional] 
**IssueTypeIds** | [**ProjectCreateResourceIdentifier[]**](ProjectCreateResourceIdentifier.md) | The issue type IDs for the issue type scheme | [optional] 
**Name** | **String** | The name of the issue type scheme | [optional] 
**Pcri** | [**ProjectCreateResourceIdentifier**](ProjectCreateResourceIdentifier.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IssueTypeSchemePayload = Initialize-JiraApiReferenceIssueTypeSchemePayload  -DefaultIssueTypeId null `
 -Description null `
 -IssueTypeIds pcri:issueType:id:10001 `
 -Name null `
 -Pcri null
```

- Convert the resource to JSON
```powershell
$IssueTypeSchemePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

