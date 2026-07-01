# WorklogsMoveRequestBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ids** | **Int64[]** | A list of worklog IDs. | [optional] 
**IssueIdOrKey** | **String** | The issue id or key of the destination issue | [optional] 

## Examples

- Prepare the resource
```powershell
$WorklogsMoveRequestBean = Initialize-JiraApiReferenceWorklogsMoveRequestBean  -Ids null `
 -IssueIdOrKey null
```

- Convert the resource to JSON
```powershell
$WorklogsMoveRequestBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

