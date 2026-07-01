# IssueLayoutPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ContainerId** | [**ProjectCreateResourceIdentifier**](ProjectCreateResourceIdentifier.md) |  | [optional] 
**IssueLayoutType** | **String** | The issue layout type | [optional] 
**Items** | [**IssueLayoutItemPayload[]**](IssueLayoutItemPayload.md) | The configuration of items in the issue layout | [optional] 
**Pcri** | [**ProjectCreateResourceIdentifier**](ProjectCreateResourceIdentifier.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IssueLayoutPayload = Initialize-JiraApiReferenceIssueLayoutPayload  -ContainerId null `
 -IssueLayoutType null `
 -Items null `
 -Pcri null
```

- Convert the resource to JSON
```powershell
$IssueLayoutPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

