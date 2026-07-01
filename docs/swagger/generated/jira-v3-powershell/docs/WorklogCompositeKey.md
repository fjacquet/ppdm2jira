# WorklogCompositeKey
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IssueId** | **Int64** | The issue ID. | [optional] 
**WorklogId** | **Int64** | The worklog ID. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorklogCompositeKey = Initialize-JiraApiReferenceWorklogCompositeKey  -IssueId null `
 -WorklogId null
```

- Convert the resource to JSON
```powershell
$WorklogCompositeKey | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

